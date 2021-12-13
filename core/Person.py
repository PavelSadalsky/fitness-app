from datetime import date


class Person:
    __date_of_birth: date

    def __init__(self, first_name, last_name, sex):
        self.__first_name: str = first_name
        self.__last_name: str = last_name
        self.__sex: bool = sex

    def set_date_of_birth(self, year, month, day):
        self.__date_of_birth = date(year, month, day)

    def get_age(self):
        return int((date.today() - self.__date_of_birth).days / 365.2425)
