import glob
import os
import pandas as pd


def readAll(folderPath):
    all_files = glob.glob(os.path.join(folderPath, "*.csv"))
    df = pd.concat((pd.read_csv(f, encoding='shift_jis') for f in all_files))
    df.drop_duplicates(inplace=True)
    df.drop_duplicates(subset=['顧客番号', '配送日付'], inplace=True)
    df.dropna(subset=['顧客番号'], inplace=True)
    df.reset_index(inplace=True, drop=True)
    return df


# Find unusual data, read all files one by one


def findUnusualFile(folderPath):
    li = []
    s = {}
    all_files = glob.glob(os.path.join(folderPath, "*.csv"))
    for filename in all_files:
        df_one = pd.read_csv(filename, index_col=None, header=0, encoding='shift_jis')
        s[filename] = len(df_one)
        li.append(df_one)
    
    # df = pd.concat(li, axis=0, ignore_index=True)
    df_test = pd.DataFrame.from_dict(s, orient='index')
    print(df_test[0].idxmax())
    
