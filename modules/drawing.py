import matplotlib.pyplot as plt
import pandas as pd


# Draw one id's refuel data in point

def draw_OneID_Refuel(test_id, df):
    df_id = df[df["customer_id"] == test_id]
    time = df_id["supplied_at"]
    refuel = df_id["volume"]
    plt.plot(time, refuel)
    plt.scatter(time, refuel, color="#ff7f0e", marker='o')
    plt.xlabel("給油時間", fontsize=15, fontname="MS Gothic")
    plt.ylabel("給油量 [ L ]", fontsize=15, fontname="MS Gothic")
    # plt.xticks(fontsize=10)
    # plt.yticks(fontsize=10)

# Draw interval distribution in one dataset


def draw_interval_distribution(df, id_header, refuelTime_header):
    interval = []

    for i in range(1, df.shape[0]):
        if df.loc[i, id_header] != df.loc[i - 1, id_header]:
            interval.append("NaN")
        else:
            interval.append((df.loc[i, refuelTime_header] - df.loc[i - 1, refuelTime_header]).days)

    interval = pd.Series(interval)
    interval_count = interval.value_counts()
    id_count = []

    for i, j in interval_count.items():
        id_count.append(i)

    id_1_7 = 0
    id_7_14 = 0
    id_14_21 = 0
    id_21_28 = 0
    id_28_60 = 0
    id_60 = 0
    nan = 0
    for j in id_count:
        if j == "NaN":
            nan = interval_count[j]
        elif j <= 7 and j >= 1:
            id_1_7 = id_1_7 + interval_count[j]
        elif j <= 14 and j > 7:
            id_7_14 = id_7_14 + interval_count[j]
        elif j <= 21 and j > 14:
            id_14_21 = id_14_21 + interval_count[j]
        elif j <= 28 and j > 21:
            id_21_28 = id_21_28 + interval_count[j]    
        elif j <= 60 and j > 28:
            id_28_60 = id_28_60 + interval_count[j] 
        elif j > 60:
            id_60 = id_60 + interval_count[j]

    sum = id_1_7 + id_7_14 + id_14_21 + id_21_28 + id_28_60 + id_60
    others = len(interval) - sum - nan
    sum = sum + others
    y = [id_1_7, id_7_14, id_14_21, id_21_28, id_28_60, id_60, others]
    y_per = []
    for i in y:
        y_per.append("{:.1%}".format(i / sum))
    x = ["1-7", "8-14", "15-21", "22-28", "29-60", "61-", "others"]
    plt.rcParams['figure.figsize'] = [8, 5]
    plt.bar(x, y)
    plt.xlabel('給油間隔[日]', fontsize=15, fontname="MS Gothic")
    plt.ylabel("数", fontsize=15, fontname="MS Gothic")

    for i in range(len(y_per)):
        plt.annotate(str(y_per[i]), xy=(x[i], y[i]), ha='center', va='bottom')


# Visualize weather data
def draw_weather_data(path, variableName):
    df_weather = pd.read_csv(path)
    df_weather["date"] = pd.to_datetime(df_weather["date"], format="%Y/%m/%d")
    plt.plot(df_weather["date"], df_weather[variableName])
    plt.xlabel("Time", fontsize=10)
    plt.ylabel("Temperature Recordings [($^\circ$C)]", fontsize=10)


# Visualize oil data
def draw_oil_data(path, variableName):
    df_weather = pd.read_csv(path)
    df_weather["date"] = pd.to_datetime(df_weather["日期"], format="%Y年%m月%d日")
    plt.plot(df_weather["date"], df_weather[variableName])
    plt.xlabel("Time", fontsize=10)
    plt.ylabel("Price[$/barrel]", fontsize=10)


# Visualize kerosene price
def draw_kerosenePrice_data(path, variableName):
    df_weather = pd.read_csv(path)
    df_weather["date"] = pd.to_datetime(df_weather["date"], format="%Y-%m")
    plt.plot(df_weather["date"], df_weather[variableName])
    plt.xlabel("Time", fontsize=10)
    plt.ylabel("Price", fontsize=10)


if __name__ == '__main__':
    print("Drawing module")
