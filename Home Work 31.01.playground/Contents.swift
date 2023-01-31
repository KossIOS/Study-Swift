import UIKit

var number = 5555

if ((number / 1000) % 10 == 1) {
    print("Одна тысяча")
} else if ((number / 1000) % 10 == 2) {
    print("Две тысячи")
} else if ((number / 1000) % 10 == 3) {
    print("Три тысячи")
} else if ((number / 1000) % 10 == 4) {
    print("Четыре тысячи")
} else if ((number / 1000) % 10 == 5) {
    print("Пять тысяч")
} else if ((number / 1000) % 10 == 6) {
    print("Шесть тысяч")
} else if ((number / 1000) % 10 == 7) {
    print("Семь тысяч")
} else if ((number / 1000) % 10 == 8) {
    print("Восемь тысяч")
} else if ((number / 1000) % 10 == 9) {
    print("Девять тысяч")
}

if ((number / 100) % 10 == 1) {
    print("Сто")
} else if ((number / 100) % 10 == 2) {
    print("Двести")
} else if ((number / 100) % 10 == 3) {
    print("Триста")
} else if ((number / 100) % 10 == 4) {
    print("Четыреста")
} else if ((number / 100) % 10 == 5) {
    print("Пятьсот")
} else if ((number / 100) % 10 == 6) {
    print("Шестьсот")
} else if ((number / 100) % 10 == 7) {
    print("Семьсот")
} else if ((number / 100) % 10 == 8) {
    print("Восемьсот")
} else if ((number / 100) % 10 == 9) {
    print("Девятьсот")
}

if ((number / 10) % 10 == 1) {
    if (number % 10 == 0) {
        print("Десять гривен")
    } else if (number % 10 == 1) {
        print("Одиннадцать гривен")
    } else if (number % 10 == 2) {
        print("Двенадцать гривен")
    } else if (number % 10 == 3) {
        print("Тринадцать гривен")
    } else if (number % 10 == 4) {
        print("Четырнадцать гривен")
    } else if (number % 10 == 5) {
        print("Пятнадцать гривен")
    } else if (number % 10 == 6) {
        print("Шестнадцать гривен")
    } else if (number % 10 == 7) {
        print("Семьнадцать гривен")
    } else if (number % 10 == 8) {
        print("Восемнадцать гривен")
    } else if (number % 10 == 9) {
        print("Девятнадцать гривен")
    }
}

if ((number / 10) % 10 == 2) {
    print("Двадцать")
} else if ((number / 10) % 10 == 3) {
    print("Тридцать")
} else if ((number / 10) % 10 == 4) {
    print("Сорок")
} else if ((number / 10) % 10 == 5) {
    print("Пятьдесят")
} else if ((number / 10) % 10 == 6) {
    print("Шестьдесят")
} else if ((number / 10) % 10 == 7) {
    print("Семьдесят")
} else if ((number / 10) % 10 == 8) {
    print("Восемьдесят")
} else if ((number / 10) % 10 == 9) {
    print("Девяносто")
}

if ((number / 10) % 10 != 1) {
    if (number % 10 == 0) {
        print("гривен")
    } else if (number % 10 == 1) {
        print("Одна гривна")
    } else if (number % 10 == 2) {
        print("Две гривны")
    } else if (number % 10 == 3) {
        print("Три гривны")
    } else if (number % 10 == 4) {
        print("Четыре гривны")
    } else if (number % 10 == 5) {
        print("Пять гривен")
    } else if (number % 10 == 6) {
        print("Шесть гривен")
    } else if (number % 10 == 7) {
        print("Семь гривен")
    } else if (number % 10 == 8) {
        print("Восемь гривен")
    } else if (number % 10 == 9) {
        print("Девять гривен")
    }
}
