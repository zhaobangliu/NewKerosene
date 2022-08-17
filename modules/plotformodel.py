import matplotlib.pyplot as plt


def plot_loss(history, size=[8, 5.5], lim=[0, 30]):
    plt.rcParams['figure.figsize'] = size
    plt.plot(history.history['loss'], label='loss')
    plt.plot(history.history['val_loss'], label='val_loss')
    plt.ylim(lim)
    plt.xlabel('Epoch', fontsize=16)
    plt.ylabel('Error [Consumption]', fontsize=16)
    plt.legend()
    plt.grid(True)


def plot_meanAndsum(test_labels, test_predictions, size=[8, 8], lims=[0, 90]):
    plt.rcParams['figure.figsize'] = size
    a = plt.axes(aspect='equal')
    plt.scatter(test_labels, test_predictions)
    plt.xlabel('True Values [Mean Consumption]', fontsize=16)
    plt.ylabel('Estimation [Consumption]', fontsize=16)
    plt.xticks(fontsize=16)
    plt.yticks(fontsize=16)
    plt.xlim(lims)
    plt.ylim(lims)
    _ = plt.plot(lims, lims)
    plt.grid(True)


def plot_interval(interval, error, size=[8, 5], lims=[-1, 1]):
    plt.rcParams['figure.figsize'] = size
    plt.scatter(interval, error)
    plt.xlabel('給油間隔[日]', fontsize=15)
    _ = plt.ylabel('推定誤差[割]', fontsize=15) 
    plt.ylim(lims)
    plt.grid(True)


def plot_erroDistribution(error, size=[8, 5], limsy=[0, 100], limsx=[-1, 1], bin=25):
    plt.rcParams['figure.figsize'] = size
    plt.hist(error, bins=25)
    plt.xlabel('推定誤差[割]', fontsize=15, fontname="MS Gothic")
    _ = plt.ylabel('数', fontsize=15, fontname="MS Gothic")
    plt.ylim(limsy)
    plt.xlim(limsx)
    plt.grid(True)


if __name__ == '__main__':
    print("plotformodel")
