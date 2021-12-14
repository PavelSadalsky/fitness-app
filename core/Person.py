from PySide6.QtCore import QObject, Slot
from .Chart import Chart


class Person(QObject):
    __age: int
    __height: int
    __weight: int
    __desired_weight: int
    __sex: bool
    __choose: int = 1
    __water_glasses: int
    __coefficients = {
        1: 1.2,
        2: 1.375,
        3: 1.55,
        4: 1.725,
        5: 1.9
    }

    def __init__(self):
        QObject.__init__(self)

    @Slot(bool)
    def set_sex(self, sex):
        self.__sex: bool = sex

    @Slot(str)
    def set_age(self, age):
        self.__age = int(age)

    @Slot(str)
    def set_height(self, height):
        self.__height = int(height)

    @Slot(str)
    def set_water_glasses(self, water_glasses):
        self.__water_glasses = int(water_glasses)

    @Slot(str)
    def set_weight(self, weight):
        self.__weight = int(weight)

    @Slot(str)
    def set_desired_weight(self, desired_weight):
        self.__desired_weight = int(desired_weight)

    @Slot(str)
    def set_choose(self, choose):
        self.__choose = int(choose)
        self.chart()

    @Slot(result=float)
    def get_bmi(self):
        return round(self.__weight / ((self.__height / 100) ** 2), 2)

    @Slot(result=float)
    def get_water(self):
        return self.__weight * 40 / 1000

    @Slot(result=int)
    def get_age(self):
        return self.__age

    @Slot(result=int)
    def get_height(self):
        return self.__height

    @Slot(result=int)
    def get_weight(self):
        return self.__weight

    @Slot(result=str)
    def bmi_info(self):
        _bmi = self.get_bmi()
        if _bmi < 16:
            return "Выраженный дефицит массы тела, истощение"
        elif 18.5 > _bmi >= 16:
            return "Недостаточная масса тела (дефицит)"
        elif 18.5 <= _bmi < 24.9:
            return "Норма"
        elif 25 <= _bmi < 29.9:
            return "Лишний вес, избыточная масса тела (предожирение)"
        elif 30 <= _bmi < 34.9:
            return "Ожирение первой степени"
        elif 35 <= _bmi <= 39.9:
            return "Ожирение второй степени"
        else:
            return "Ожирение 3 степени (морбидное)"

    def __calorie_allowance(self, weight):
        _var = None
        if self.__sex:
            _var = 655 + (9.6 * weight) + (1.8 * self.__height) - (4.7 * self.__age)
        else:
            _var = 66.5 + (13.7 * weight) + (5 * self.__height) - (6.9 * self.__age)
        _var *= self.__coefficients[self.__choose]
        return _var

    @Slot(result=float)
    def get_calorie_allowance(self):
        return round(self.__calorie_allowance(self.__weight), 0)


    def chart(self):
        weight = self.__weight
        weight_list = [weight]
        while weight > self.__desired_weight:
            weight -= (self.__calorie_allowance(weight) * 0.15 * 30) / 7700
            weight_list.append(weight)
        Chart.generate([i for i in range(0, len(weight_list))], weight_list)
