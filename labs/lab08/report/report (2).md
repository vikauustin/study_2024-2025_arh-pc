---
## Front matter
title: "Лабораторная работа №8"
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

Приобрести навыки написания программ с использованием циклов и обработкой агрументов командой строки.

# Задание

Выполнить лабораторную работу №8 и написать программы с использованием циклов и обработкой аргументов командной строки.

# Выполнение лабораторной работы

**Реализация циклов в NASM**

Cоздаем каталог для 8 лабораторной работы(рис. [-@fig:001]).

![Переходим в каталог и создаем там файл lab8-1.asm](image/1.jpg){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 8.1(рис. [-@fig:002]).

![Заполняем данный файл](image/2.jpg){#fig:002 width=70%}

Запускаем файл(рис. [-@fig:003]).

![Смотрим как работает файл](image/3.jpg){#fig:003 width=70%}

Снова открываем файл для редактирования и изменяем его значения регистра в цикле(рис. [-@fig:004]).

![Редактируем файл](image/4.jpg){#fig:004 width=70%}

Запускаем файл(рис. [-@fig:005]).

![Смотрим как работает файл](image/5.jpg){#fig:005 width=70%}

Регистр ecx принимает значения 7,5,3,1.
Число проходов цикла не соответсвует числу N, так как уменьшается на 2

Требуется снова отредактировать файл(рис. [-@fig:006]).

![Редактируем данный файл](image/6.jpg){#fig:006 width=70%}

Запускаем файл(рис. [-@fig:007]).

![Сверяемся с нужным выводом, все верно ](image/7.jpg){#fig:007 width=70%}

В данном случае число проходов цикла равно числу N.

**Обработка аргументов командной строки** 

Создаем файл lab8-2.asm и открываем файл в Midnight Commander и заполняем его в соответствии с листингом 8.2(рис. [-@fig:008]).

![Используем команду touch, заполняем файл как указано в листинге ](image/8.jpg){#fig:008 width=70%}

Запускаем файл и вводим различные значения(рис. [-@fig:009]).

![Смотрим как работает наш файл](image/9.jpg){#fig:009 width=70%}

Программа обработала 3 аргумента.

Создаем новый файл lab8-3.asm(рис. [-@fig:010]).

![Используем команду touch](image/10.jpg){#fig:010 width=70%}

Открываем файл в соответствии с листингом 8.3(рис. [-@fig:011]).

![Заполняем файл](image/11.jpg){#fig:011 width=70%}

Запускаем файл и вводим различные значения(рис. [-@fig:012]).

![Смотрим как работает наша программа](image/12.jpg){#fig:012 width=70%}

Снова открываем файл для редактирования(рис. [-@fig:013]). 

![Изменяем программу](image/13.jpg){#fig:013 width=70%}

Запускаем файл, указываем аргументы (рис. [-@fig:014]). 

![Проверяем работу файла, все корректно ](image/14.jpg){#fig:014 width=70%}

**Задания для самостоятельной работы**

ВАРИАНТ 12

1. Напишите программу, которая находит сумму значений функции f(x) для
x = x1, x2 ... xn т.е. программа должна выводить значение f(x1) + f(x2) + ... + f(xn).
Значения xi передаются как аргументы. Вид функции f(x) выбрать из таблицы
8.1 вариантов заданий в соответствии с вариантом, полученным при выполнении
лабораторной работы № 7. Создайте исполняемый файл и проверьте его работу на
нескольких наборах x = x1, x2 ... xn.

Создаем новый файл lab8-4.asm(рис. [-@fig:015]). 

![Используем команду touch](image/15.jpg){#fig:015 width=70%}

Открываем его и пишем программу, которая выведет сумму функции:f(x)=15x-9(рис. [-@fig:016]). 

![Сама программа](image/16.jpg){#fig:016 width=70%}

Запускаем файл и смотрим на его выполнение при разных х(рис. [-@fig:017]).

![Все работает корректно](image/17.jpg){#fig:017 width=70%}

# Выводы

Мы научились решать программы с использованием циклов и обработкой
аргументов командной строки.

