import numpy as np


def split_three_group(normal_use_in_season, ALL_ID, df_weather):
    Highcc = {}
    Lowcc = {}
    # for each year
    weather_container_id_year = {}
    average_consumption_id_year = {}

    # for all data
    weather_container_id_all = {}
    average_consumption_id_all = []

    # temp variable
    weather_container_id = {}
    average_consumption = []

    # df_weather.reset_index(inplace = True)
    for id in ALL_ID:
        weather_container_id_year = {}
        average_consumption_id_year = {}
        # for all data
        weather_container_id_all = {}
        average_consumption_id_all = []
        
        # weather_container_id.update((x, -y) for x, y in weather_container_id.items())
        # df_weather.reset_index(inplace = True)
        df_id = normal_use_in_season[normal_use_in_season["customer_id"] == id]
        # remember to reset, because the index is the index in the last dataframe
        df_id.reset_index(inplace=True, drop=True)

        for j in range(df_id.shape[0] - 1):
            # check if the data is continuous
            if (df_id.loc[j + 1, "supplied_at"].year == df_id.loc[j, "supplied_at"].year and
                    df_id.loc[j + 1, "supplied_at"].month - df_id.loc[j, "supplied_at"].month > 6):
                if j == 0:
                    continue
                # store all the weather data for each year
                weather_container_id_year[str(df_id.loc[j + 1, "supplied_at"].year)] = weather_container_id
                # store all the consumption data for each year
                average_consumption_id_year[str(df_id.loc[j + 1, "supplied_at"].year)] = average_consumption
                # after store one year data, reset the temp variable to zero
                average_consumption = []
                weather_container_id = {}
                continue
            else:
                for i in range(df_weather.shape[0]):
                    if (df_weather.loc[i, "date"].year == df_id.loc[j, "supplied_at"].year and
                        df_weather.loc[i, "date"].month == df_id.loc[j, "supplied_at"].month and
                            df_weather.loc[i, "date"].day == df_id.loc[j, "supplied_at"].day):
                        
                        df_weather.set_index("date", inplace=True)
                        num_of_day = df_weather.sort_index().loc[df_id.loc[j, "supplied_at"]: df_id.loc[j + 1, "supplied_at"]].shape[0]
                        # reverse weather data for convenient
                        temp = -df_weather.sort_index().loc[df_id.loc[j, "supplied_at"]: df_id.loc[j + 1, "supplied_at"]]["atemperature"].mean()
                        # store number of days between two supplies
                        # calculate the mean value
                        average_consumption.append(df_id.loc[j + 1, "volume"] / num_of_day)
                        average_consumption_id_all.append(df_id.loc[j + 1, "volume"] / num_of_day)

                        weather_container_id[df_id.loc[j + 1, "supplied_at"]] = temp
                        weather_container_id_all[str(df_id.loc[j + 1, "supplied_at"].year) + "-" +
                                                 str(df_id.loc[j + 1, "supplied_at"].month) + "-" +
                                                 str(df_id.loc[j + 1, "supplied_at"].day)] = temp
                        # Time_all.append(df_id.loc[j + 1, "supplied_at"])
                        df_weather.reset_index(inplace=True)

                        # check if j is the last data,because we need j+1, j cannot be the last one.
                        if (j == (df_id.shape[0] - 2)):
                            weather_container_id_year[str(df_id.loc[j + 1, "supplied_at"].year)] = weather_container_id
                            average_consumption_id_year[str(df_id.loc[j + 1, "supplied_at"].year)] = average_consumption
                            weather_container_id = {}
                            average_consumption = []
                            break
                        else:
                            break
        corr = np.corrcoef(average_consumption_id_all, list(weather_container_id_all.values()))[0][1]
        # print(str(id) + ":" + str(corr))
        if corr > 0.8:
            Highcc[id] = corr
        else:
            for year in weather_container_id_year.keys():
                corr_oneY = np.corrcoef(average_consumption_id_year[year], list(weather_container_id_year[year].values()))[0][1]
                # print(str(id) + ":" +  str(corr) + "-" + str(corr_oneY))
                if corr_oneY <= corr:
                    Lowcc[id] = corr
                    break
    return Highcc, Lowcc


if __name__ == '__main__':
    print("threeGroups module")
