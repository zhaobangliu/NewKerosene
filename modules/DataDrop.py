import pandas as pd


def supply_data_drop(df):

    # drop data between april and November
    for i in range(df.shape[0]):
        if df.loc[i, "supplied_at"].month < 11 and df.loc[i, "supplied_at"].month > 4:
            df.drop(i, inplace=True)

    # after drop, index will keep the same, here we reset the index for a
    # continuous index
    df.reset_index(inplace=True, drop=True)
    # get the unique id list and change to Series
    interval = []
    unusual_id = []

    # count interval
    for i in range(1, df.shape[0]):

        # first data in each id has no interval message. set to NaN.
        if df.loc[i, "customer_id"] != df.loc[i - 1, "customer_id"]:
            interval.append("NaN")

        # we have drop april to November winter data. The two recording jumped from april to November
        # should also be NaN. Here I added in NaN interval for convenitent.
        elif (df.loc[i - 1, "supplied_at"].month <= 4) and (df.loc[i, "supplied_at"].month >= 11):
            interval.append(
                ("NaN" + "_" + str(df.loc[i, "customer_id"])))

        # True interval
        else:
            temp = (df.loc[i, "supplied_at"] -
                    df.loc[i - 1, "supplied_at"]).days
            interval.append(temp)
            # find unusual id and store them
            if temp <= 0 or temp >= 30:
                unusual_id.append([df.loc[i, "customer_id"], temp])

    interval = pd.Series(interval)

    # find the unusual interval id
    res1, res2 = map(list, zip(*unusual_id))
    res1 = pd.unique(res1)
    res1 = pd.Series(res1)

    # drop unusual interval id
    df.set_index("customer_id", inplace=True)
    df = df.drop(res1).copy()
    df.reset_index(inplace=True)
    
    return df


def weather_drop(df_weather):
    df_weather["date"] = pd.to_datetime(df_weather["date"], format="%Y/%m/%d")

    # using dic and list to store year and every month consumption
    # consumption_temp = df_id.loc[0, "volume"]
    # drop data between april and November
    for i in range(df_weather.shape[0]):
        if df_weather.loc[i, "date"].month < 11 and df_weather.loc[i, "date"].month > 4:
            df_weather.drop(i, inplace=True)

    # after drop, index will keep the same, here we reset the index for a
    # continuous index
    df_weather.reset_index(inplace=True)

    return df_weather


if __name__ == '__main__':
    print("SupplyDataDrop module")
