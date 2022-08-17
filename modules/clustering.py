import pandas as pd
from sktime.distances import dtw_distance
import numpy as np
from scipy.cluster.hierarchy import single, complete, average, ward, dendrogram
import matplotlib.pyplot as plt
import modules.DataDrop as DD
from tqdm import tqdm


def Calculate_linkageMatrix(normal_use_in_season, Path):
    df_weather = pd.read_csv(Path)
    df_weather = DD.weather_drop(df_weather)

    ALL_ID = pd.unique(normal_use_in_season["customer_id"])
    clusterdata, time_data = calculate_clustering_cc(normal_use_in_season, ALL_ID, df_weather)
    ALL_ID = list(clusterdata.keys())
    for i in ALL_ID:
        clusterdata[i] = np.array(clusterdata[i])
    n_series = len(clusterdata)
    distance_matrix = np.zeros(shape=(n_series, n_series))
    # Build distance matrix
    for i in tqdm(range(n_series), desc='calculate distance matrix: '):
        for j in range(n_series):
            x = clusterdata[ALL_ID[i]]
            y = clusterdata[ALL_ID[j]]
            if i != j and distance_matrix[i, j] == 0:
                dist = dtw_distance(x, y)
                distance_matrix[i, j] = dist
                distance_matrix[j, i] = dist
    return distance_matrix, time_data, clusterdata


def calculate_clustering_cc(normal_use_in_season, ALL_ID, df_weather):
    
    # store every year correlation for every ID
    cc_id = []
    cc_id_year = []
    CC_ALL = {}
    CC_ALL_SEASON = {}

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
    for id in tqdm(ALL_ID, desc='calculate CC: '):
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
                        temp = -df_weather.sort_index().loc[df_id.loc[j, "supplied_at"]: df_id.loc[j + 1, "supplied_at"]]["average_tem"].mean()
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
        for year in weather_container_id_year.keys():
            corr_oneY = np.corrcoef(average_consumption_id_year[year], list(weather_container_id_year[year].values()))[0][1]
            cc_id.append(corr_oneY)
            cc_id_year.append(year)
        CC_ALL[id] = cc_id
        CC_ALL_SEASON[id] = cc_id_year
        cc_id = []
        cc_id_year = []
    
    return CC_ALL, CC_ALL_SEASON


def hierarchical_clustering(distance_matrix, dist_mat, method='complete'):
    if method == 'complete':
        Z = complete(distance_matrix)
    if method == 'single':
        Z = single(distance_matrix)
    if method == 'average':
        Z = average(distance_matrix)
    if method == 'ward':
        Z = ward(distance_matrix)
    
    fig = plt.figure(figsize=(16, 8))
    dn = dendrogram(Z)
    plt.title(f"Dendrogram for {method}-linkage with correlation distance")
    plt.show()
    
    return Z