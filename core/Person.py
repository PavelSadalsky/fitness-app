class Person:
    __age: int
    __height: int
    __weight: int
    __desired_weight: int
    __coefficients = {
        1: 1.2,
        2: 1.375,
        3: 1.55,
        4: 1.725,
        5: 1.9
    }

    def __init__(self, sex):
        self.__sex: bool = sex

    def set_age(self, age):
        self.__age = age

    def set_height(self, height):
        self.__height = height

    def set_weight(self, weight):
        self.__weight = weight

    def set_desired_weight(self, desired_weight):
        self.__desired_weight = desired_weight
