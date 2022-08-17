from modules.kerosenePreprocess import Kerosene


class KeroseneAppolo(Kerosene):
    def split(self):
        self.normal_use = self.df
