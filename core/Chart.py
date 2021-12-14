import matplotlib.pyplot as plt


class Chart:
    @classmethod
    def generate(cls, x, y):
        plt.style.use('fivethirtyeight')

        # plot
        fig, ax = plt.subplots(figsize=(10, 8))
        ax.set_ylabel('Количесвто месяцев')
        ax.set_xlabel('Вес в килограммах')

        ax.plot(x, y, linewidth=8.0, color='orange', alpha=0.7)

        plt.savefig('chart.png', bbox_inches='tight')
