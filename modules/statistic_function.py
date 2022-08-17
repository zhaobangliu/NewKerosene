# for one season


def Sum_Mean(df_dropRH, id_unique, id_header, refuelTime_header, volume_header):

    # df_dropRH[refuelTime_header] = pd.to_datetime(
    # df_dropRH[refuelTime_header], format="%Y-%m-%d %X")
    all_id = {}  # store static_container using id as key
    static_container = {}  # store sum and mean data using year as key for one id
    sum_mean = []  # store sum and mean and number of day data in one list
    day = 0  # number of days
    sum = 0  # consumption sum

    for id in id_unique:

        df_id = df_dropRH[df_dropRH[id_header] == id]
        df_id.reset_index(inplace=True, drop=True)
        for i in range(1, df_id.shape[0]):

            # add to sum when data is in one season.
            if (df_id.loc[i, refuelTime_header] - df_id.loc[i - 1, refuelTime_header]).days < 150 and i != df_id.shape[0] - 1:
                sum = sum + df_id.loc[i, volume_header]
                day = day + (df_id.loc[i, refuelTime_header] -
                             df_id.loc[i - 1, refuelTime_header]).days

            # when i is the last data, calculate the sum and mean.
            elif i == df_id.shape[0] - 1:
                sum = sum + df_id.loc[i, volume_header]
                day = day + (df_id.loc[i, refuelTime_header] -
                             df_id.loc[i - 1, refuelTime_header]).days
                sum_mean.append(sum)
                sum_mean.append(sum / day)
                static_container[str(df_id.loc[i, refuelTime_header].year) + "-" + str(df_id.loc[i, refuelTime_header].month)] = sum_mean
                # reset for next id.
                sum = 0
                day = 0
                sum_mean = []
            else:
                # if it is zero for all year, no need to use it.
                if sum == 0:
                    continue

                # added one season data, we append it to sum_mean dic.
                sum_mean.append(sum)
                sum_mean.append(sum / day)
                static_container[str(df_id.loc[i - 1, refuelTime_header].year) + "-" + str(df_id.loc[i - 1, refuelTime_header].month)] = sum_mean

                # we reset the variable for next id.
                sum = 0
                day = 0
                sum_mean = []

        all_id[id] = static_container
        static_container = {}
    return all_id

# for two refuel supplies


def consumption_temperature(ALL_ID, df_dropRH, df_weather, id_header, refuelTime_header, volume_header):

    # all id data
    consumption_ALL_ID = {}
    temperature_ALL_ID = {}
    interval_ALL_ID = {}
    
    for id in ALL_ID:
        # for each year
        weather_container_id_year = {}
        average_consumption_id_year = {}
        
        # for all data in one id
        weather_container_id_all = {}
        average_consumption_id_all = {}
        interval_id_all = {}

        # temp variable
        weather_container_id = {}
        average_consumption = []

        # weather_container_id.update((x, -y) for x, y in weather_container_id.items())
        # df_weather.reset_index(inplace = True)
        df_id = df_dropRH[df_dropRH[id_header] == id]
        # remember to reset, because the index is the index in the last
        # dataframe
        df_id.reset_index(inplace=True, drop=True)

        for j in range(df_id.shape[0] - 1):

            # check if the data is continuous
            if (df_id.loc[j + 1, refuelTime_header].year == df_id.loc[j, refuelTime_header].year and
                    df_id.loc[j + 1, refuelTime_header].month - df_id.loc[j, refuelTime_header].month > 6):
                if j == 0:
                    continue

                # store all the weather data for each year
                weather_container_id_year[str(
                    df_id.loc[j + 1, refuelTime_header].year)] = weather_container_id
                # store all the consumption data for each year
                average_consumption_id_year[str(
                    df_id.loc[j + 1, refuelTime_header].year)] = average_consumption
                # after store one year data, reset the temp variable to zero
                average_consumption = []
                weather_container_id = {}
                continue
            else:
                for i in range(df_weather.shape[0]):
                    if (df_weather.loc[i, "date"].year == df_id.loc[j, refuelTime_header].year and
                            df_weather.loc[i, "date"].month == df_id.loc[j, refuelTime_header].month and
                            df_weather.loc[i, "date"].day == df_id.loc[j, refuelTime_header].day):

                        df_weather.set_index("date", inplace=True)
                        num_of_day = df_weather.sort_index(
                        ).loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, refuelTime_header]].shape[0]
                        # reverse weather data for convenient
                        matemp = -df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["atemperature"].mean()
                        mltemp = -df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["ltemperature"].mean()
                        mhtemp = -df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["htemperature"].mean()
                        mwind = df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["windSpeed(m/s)"].mean()
                        msnowacc = df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["sonw(accumulated)"].mean()
                        msnow = df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["snow"].mean()
                        msun = df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["sunshine"].mean()
                        mhumidi = df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["humidity(%)"].mean()
                        # temp = -df_weather.sort_index().loc[df_id.loc[j, refuelTime_header]: df_id.loc[j + 1, "supplied_at"]]["atemperature"].mean()
                        temp = [matemp, mltemp, mhtemp, mwind, msnowacc, msnow, msun, mhumidi]
                        # store number of days between two supplies
                        # calculate the mean value
                        average_consumption.append(
                            df_id.loc[j + 1, volume_header] / num_of_day)
                        average_consumption_id_all[df_id.loc[j + 1, refuelTime_header]] = (
                            df_id.loc[j + 1, volume_header] / num_of_day)
                        interval_id_all[df_id.loc[j + 1, refuelTime_header]] = num_of_day

                        weather_container_id[df_id.loc[j + 1, refuelTime_header]] = temp
                        weather_container_id_all[df_id.loc[j + 1, refuelTime_header]] = temp
                        # Time_all.append(df_id.loc[j + 1, "supplied_at"])
                        df_weather.reset_index(inplace=True)

                        # check if j is the last data,because we need j+1, j
                        # cannot be the last one.
                        if (j == (df_id.shape[0] - 2)):
                            weather_container_id_year[str(
                                df_id.loc[j + 1, refuelTime_header].year)] = weather_container_id
                            average_consumption_id_year[str(
                                df_id.loc[j + 1, refuelTime_header].year)] = average_consumption
                            weather_container_id = {}
                            average_consumption = []
                            break
                        else:
                            break
        consumption_ALL_ID[id] = average_consumption_id_all
        temperature_ALL_ID[id] = weather_container_id_all
        interval_ALL_ID[id] = interval_id_all

    return consumption_ALL_ID, temperature_ALL_ID, interval_ALL_ID


def error_distribution(error):
    temp = 0
    for i in error:
        if i <= 0 and i > -0.2:
            temp += 1
    print(">-0.2 and <=0: " + str(temp / len(error)))
    temp = 0
    for i in error:
        if i > 0 and i < 0.2:
            temp += 1
    print("<0.2 and >0: " + str(temp / len(error)))
    temp = 0

    for i in error:
        if i >= 0.2:
            temp += 1
    print(">0.2: " + str(temp / len(error)))
    temp = 0
    for i in error:
        if i <= -0.2:
            temp += 1
    print("<-0.2: " + str(temp / len(error)))

if __name__ == '__main__':
    print("SupplyDataDrop module")
