---
## Front matter
title: "Лабораторная работа №10"
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

Приобрести навыки написания программ для работы с файлам.

# Выполнение лабораторной работы

Cоздаем каталог для 10 лабораторной работы(рис. [-@fig:001]).

![Переходим в каталог и создаем там файл lab10-1.asm](image/1.jpg){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 10.1(рис. [-@fig:002]).

![Заполняем данный файл](image/2.jpg){#fig:002 width=70%}

Запускаем файл(рис. [-@fig:003]).

![Смотрим как работает файл](image/3.jpg){#fig:003 width=70%}

С помощью команды chmod изменяем права доступа к исполняемому файлу lab10-1,
запретив его выполнение.(рис. [-@fig:004]).

![Используем команду сhmod и пытаемся запустить файл](image/4.jpg){#fig:004 width=70%}

Нам выдало, что в доступе отказано, значит мы написали все верно

С помощью команды chmod изменяем права доступа к файлу lab10-1.asm с исходным
текстом программы, добавив права на исполнение.(рис. [-@fig:005]).

![Используем команду сhmod и пытаемся запустить файл](image/5.jpg){#fig:005 width=70%}

При попытке выполнить файл терминал трактовал его содержимое как команды оболочки, что привело к ошибкам, поскольку инструкции ассемблера не являются командами терминала. Но, если бы в файле находились команды терминала, их можно было бы выполнить.

Вариант 12

Предоставляем права доступа к файлу readme-1.txt представленные в символьном виде, а для файла readme-2.txt – в двочном виде.(рис. [-@fig:006]).

![Используем команду сhmod и проверяем правильность выполнения с помощью команды ls-l.](image/6.jpg){#fig:006 width=70%}

**Задание для самостоятельной работы**

Написать программу, которая будет спрашивать имя и записывать его в файл(рис. [-@fig:007]).

![Заполняем наш файл](image/7.jpg){#fig:007 width=70%}

Создаем файл и запускаем его(рис. [-@fig:008]).

![Смотрим на выполнение](image/8.jpg){#fig:008 width=70%}

# Выводы

Мы научились писать программы для работы с файлам.

