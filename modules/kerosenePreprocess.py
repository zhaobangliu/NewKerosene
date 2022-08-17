import pandas as pd
from modules import DataDrop as DD
from modules import threeGroups as tg


class Kerosene:
    def __init__(self, rawDataPath):
        self.rawDataPath = rawDataPath
        self.df = pd.read_csv(rawDataPath)
        self.df["supplied_at"] = pd.to_datetime(self.df["supplied_at"], format="%Y-%m-%d %X")
        self.id = pd.Series(pd.unique(self.df["customer_id"]))
        self.split()

    def split(self):
        self.road_heating = self.df[self.df["purpose"] == "R"]
        self.road_heating_id = pd.Series(pd.unique(self.road_heating["customer_id"]))
        self.road_heating.reset_index(inplace=True)
        self.normal_use = self.df[self.df["purpose"] != "R"]
        self.normal_use_id = pd.Series(pd.unique(self.normal_use["customer_id"]))
        self.normal_use.reset_index(inplace=True)
    
    def threeGroups(self, weatherPath):
        df_weather = pd.read_csv(weatherPath)
        df_weather = DD.weather_drop(df_weather)
        
        self.normal_use_drop = self.normal_use.copy()
        # Drop zero first
        for i in range(self.normal_use_drop.shape[0]):
            if self.normal_use_drop.loc[i, "volume"] == 0:
                self.normal_use_drop.drop(i, inplace=True)
        self.normal_use_drop.reset_index(inplace=True, drop=True)
        # Then Drop interval
        self.normal_use_drop = DD.supply_data_drop(self.normal_use_drop)
        self.normal_use_drop.reset_index(inplace=True, drop=True)
        normal_use_in_season = self.normal_use_drop.copy()

        ALL_ID = pd.unique(normal_use_in_season["customer_id"])
        self.Highcc, self.Lowcc = tg.split_three_group(normal_use_in_season, ALL_ID, df_weather)
        # Find HighccOneSeason's id, it is hard to find it directly. so we drop others.
        to_drop = list(self.Highcc.keys()) + list(self.Lowcc.keys())
        normal_use_in_season.set_index("customer_id", inplace=True)

        self.HighccOneSeason = normal_use_in_season.drop(to_drop).copy()
        self.HighccOneSeason.reset_index(inplace=True)
        # self.HighccOneSeason = self.HighccOneSeason.drop('index', axis=1)
    
