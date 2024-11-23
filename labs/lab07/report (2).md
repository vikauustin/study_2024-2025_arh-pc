---
## Front matter
title: "Лабораторная работа №7"
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

Освоить условный и безусловный переход. Ознакомиться с назначением и
структурой файла листинга.

# Задание

Написать две программы и выполнить лабораторную работу №7

# Выполнение лабораторной работы

**Реализация переходов в NASM**

Cоздаем каталог для 7 лабораторной работы(рис. [-@fig:001]).

![Переходим в каталог и создаем там файл lab7-1.asm](image/1.jpg){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 7.1(рис. [-@fig:002]).

![Заполняем данный файл](image/2.jpg){#fig:002 width=70%}

Запускаем файл(рис. [-@fig:003]).

![Смотрим как работает файл](image/3.jpg){#fig:003 width=70%}

Снова открываем файл для редактирования и изменяем его в соответствии с листингом 7.2(рис. [-@fig:004]).

![Редактируем файл](image/4.jpg){#fig:004 width=70%}

Запускаем файл(рис. [-@fig:005]).

![Смотрим как работает файл](image/5.jpg){#fig:005 width=70%}

Требуется снова отредактировать файл(рис. [-@fig:006]).

![Редактируем данный файл](image/6.jpg){#fig:006 width=70%}

Запускаем файл(рис. [-@fig:007]).

![Сверяемся с нужным выводом, все верно ](image/7.jpg){#fig:007 width=70%}

Создаем файл Lab7-2.asm(рис. [-@fig:008]).

![Используем команду touch](image/8.jpg){#fig:008 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 7.3(рис. [-@fig:009]).

![Заполняем файл как указано в листинге](image/9.jpg){#fig:009 width=70%}

Запускаем файл и вводим различные значения(рис. [-@fig:010]).

![Смотрим как работает наш файл](image/10.jpg){#fig:010 width=70%}

**Изучение структуры файла листинга**

Создаем файл листинга и открывааем его в редакторе(рис. [-@fig:011]).

![Используем Mcedit](image/11.jpg){#fig:011 width=70%}

![Отрываем файл](image/12.jpg){#fig:012 width=70%}

1. Строка 14: 0000000B 29D8 sub eax, ebx
Описание:0000000B — адрес команды в сегменте кода (в памяти).29D8 — машинный код инструкции. Это бинарное представление команды sub eax, ebx.sub eax, ebx — команда процессора, которая вычитает значение регистра ebx из регистра eax и записывает результат обратно в eax.
2. 2 Строка 28: E8E8FFFFFF call slen
Описание:E8E8FFFFFF — машинный код инструкции вызова функции. Команда call записывает текущий адрес (следующий за вызовом) в стек и передаёт управление указанной функции.call slen — вызов функции slen. Эта функция (определена выше в коде) вычисляет длину строки, переданной в eax.
3. 3 Строка 33: 0000001D BB01000000 mov ebx, 1
Описание:0000001D — адрес команды в сегменте кода.BB01000000 — машинный код инструкции, который соответствует команде mov ebx, 1.mov ebx, 1 — команда, которая загружает значение 1 в регистр ebx.

Открываем файл и удаляем один операндум(рис. [-@fig:013]). 

![Удалили операндум](image/13.jpg){#fig:013 width=70%}

![Транслируем файл](image/14.jpg){#fig:014 width=70%}

В файле листинга показывает ошибку, при запуске.Никакие входные файлы помимо файла листинга не создаются(рис. [-@fig:015]). 

![Просматриваем ошибку в файле листинга](image/15.jpg){#fig:015 width=70%}

**Задания для самостоятельной работы**

Вариант 12

1. Напишите программу нахождения наименьшей из 3 целочисленных переменных а,х и .
Значения переменных выбрать из табл. 7.5 в соответствии с вариантом, полученным
при выполнении лабораторной работы № 7. Создайте исполняемый файл и проверьте
его работу.

![Создаем файл](image/16.jpg){#fig:016 width=70%}

Открываем его и пишем программу, которая выберет наименьшее число из
трех(рис. [-@fig:017]).

![Сама программа](image/17.jpg){#fig:017 width=70%}

![Проверяме работу](image/18.jpg){#fig:018 width=70%}

2. Напишите программу, которая для введенных с клавиатуры значений x и a вычисляет
значение заданной функции f(x) и выводит результат вычислений. Вид функции f(x)
выбрать из таблицы 7.6 вариантов заданий в соответствии с вариантом, полученным
при выполнении лабораторной работы № 7. Создайте исполняемый файл и проверьте
его работу для значений x и a из 7.6

![Создаем новый файл](image/19.jpg){#fig:019 width=70%}

Пишем программу, которая решит систему уравнений, при данных, введенных в консоль(рис. [-@fig:020]).

![Пишем новую программу, для заданных нам условий](image/20.jpg){#fig:020 width=70%}

![Проверяем выполнение, все сделанно корректно](image/21.jpg){#fig:021 width=70%}

# Выводы

Мы познакомились с структурой файла листинга, изучили команды условного
и безусловного перехода.

