---
## Front matter
title: "Лабораторная работа №9"
subtitle: "Отчет"
author: "Устинова Виктория Вадимовна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Приобреcти навыки написания программ с использованием подпрограмм. Ознакомиться
с методами отладки при помощи GDB и его основными возможностями.

# Задание

Выполнить отчет по лабораторной работе №9, исправить ошибки программы и написать свою.

# Выполнение лабораторной работы

**Реализация подпрограмм в NASM**

Cоздаем каталог для 9 лабораторной работы(рис. [-@fig:001]).

![Переходим в каталог и создаем там файл lab9-1.asm](image/1.jpg){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 9.1(рис. [-@fig:002]).

![Заполняем данный файл](image/2.jpg){#fig:002 width=70%}

Запускаем файл(рис. [-@fig:003]).

![Смотрим как работает файл](image/3.jpg){#fig:003 width=70%}

Снова открываем файл для редактирования и изменяем его, добавив подпрограмму(рис. [-@fig:004]).

![Редактируем файл](image/4.jpg){#fig:004 width=70%}

Запускаем файл(рис. [-@fig:005]).

![Смотрим как работает файл](image/5.jpg){#fig:005 width=70%}

**Отладка программам с помощью GDB**

Создаем файл Lab9-2.asm(рис. [-@fig:006]).

![Используем команду touch](image/6.jpg){#fig:006 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 9.2(рис. [-@fig:007]).

![Заполняем наш файл](image/7.jpg){#fig:007 width=70%}

Получаем исходный файл с использованием отладчика gdb(рис. [-@fig:008]).

![Выгружаем файл в отладчик](image/8.jpg){#fig:008 width=70%}

![Запускаем программу командой run в отладчике](image/9.jpg){#fig:009 width=70%}

Устанавливаем брейкпоинт на метку _start и запускаем программу(рис. [-@fig:010]).

![Заупскаем файл](image/10.jpg){#fig:010 width=70%}

Смотрим дисассимилированный код программы с помощью команды disassemble, начиная с метки _start(рис. [-@fig:011]).

![Смотрим дисассимилированный код](image/11.jpg){#fig:011 width=70%}

Переключаемся на отображение команд с Intel’овским синтаксисом(рис. [-@fig:012]).

![Переключаемся на синтаксис Intel](image/12.jpg){#fig:012 width=70%}

Различия отображения синтаксиса машинных команд в режимах ATT и Intel:
1. В ATT операнды указываются в формате сперва источник потом назначение, а в intel наоборот.
2. В ATT перед регистрами ставится %, а перед значениями $. В Intel префиксы отсутствуют.
3. В ATT синтаксисе адреса указываются в круглых скобках. В Intel синтаксисе адреса указываются без скобок.
4. В ATT синтаксисе разделители операндов - запятые. В Intel синтаксисе разделители могут быть запятые или косые черты /.

Переходим в режим псевдографики(рис. [-@fig:013]). 

![Открываются три окна](image/13.jpg){#fig:013 width=70%}

**Добавление точек останова**

Проверяем была ли установлена точка останова и устанавливаем точку останова(рис. [-@fig:014]). 

![ТИспользуем команду info breakpoints, создаем новую точку](image/14.jpg){#fig:014 width=70%}

Посмотрим информацию о всех установленных точках останова(рис. [-@fig:015]). 

![Просматриваем информацию](image/15.jpg){#fig:015 width=70%}

**Работа с данными программы в GDB**

Посматриваем содержимое регистров с помощью команды info registers(рис. [-@fig:016]).

![Cмотрим значения регистров и переменной msg1](image/16.jpg){#fig:016 width=70%}

Поменялись регистры ebx, ecx, edx, eax, eip.

![Смотрим значение переменной msg2](image/17.jpg){#fig:017 width=70%}

Изменим первый символ переменной msg1(рис. [-@fig:018]).

![Меняем символ](image/18.jpg){#fig:018 width=70%}

Изменим первый символ переменной msg2(рис. [-@fig:019]).

![Меняем символ](image/19.jpg){#fig:019 width=70%}

Смотрим значение регистра edx в разных форматах(рис. [-@fig:020]).

![Смотрим значение регистра](image/20.jpg){#fig:020 width=70%}

![Изменяем регистр ebx командой set](image/21.jpg){#fig:021 width=70%}

Выводятся разные значения, потому что команда без кавычек присваивает регистру это значение.

**Обработка аргументов командной строки в GDB**

Копируем файл lab8-2.asm в файл с именем lab09-3.asm и запускаем его в отладчике(рис. [-@fig:022]).

![Копируем фпйл и запускаем его](image/22.jpg){#fig:022 width=70%}

Установим точку останова перед первой инструкцией в программе и запустим
ее(рис. [-@fig:023]).

![Устанавливаем точку останова](image/23.jpg){#fig:023 width=70%}

![Смотрим позиции стека по разным адресам](image/24.jpg){#fig:024 width=70%}

Шаг изменения адреса равен 4 потому что адресные регистры имеют размерность 32 бита

**Задание для самостоятельной работы**

1 задание 

Переходим в нужный каталог и копируем оттуда файл lab8-4.asm в lab9-4.asm(рис. [-@fig:025]).

![Копируем файл](image/25.jpg){#fig:025 width=70%}

Открываем файл в Midnight Commander и меняем его, создавая подпрограмму(рис. [-@fig:026]).

![Изменяем файл](image/26.jpg){#fig:026 width=70%}

![Запускаем файл](image/27.jpg){#fig:027 width=70%}

2 задание 

Создаем новый файл lab9-5.asm и открываем его в Midnight Commander и заполняем его в соответствии с листингом 9.3(рис. [-@fig:028]).

![Изменяем файл](image/28.jpg){#fig:028 width=70%}

![Запускаем файл](image/29.jpg){#fig:029 width=70%}

Создаем файл и запускаем его в откладчике, смотрим на изменение регистров(рис. [-@fig:030]).

![Ищем ошибку](image/30.jpg){#fig:030 width=70%}

Изменяем программу(рис. [-@fig:031]).

![Меняем файл](image/31.jpg){#fig:031 width=70%}

![Запускаем файл](image/32.jpg){#fig:032 width=70%}

# Выводы

Мы приобрели навыки написания программ с использованием подпрограмм. Ознакомились с методами отладки при помощи GDB и его основными возможностями.

