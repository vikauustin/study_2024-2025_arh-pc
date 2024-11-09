---
## Front matter
title: "Лабораторная работа №5"
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

Приобрести практические навыки в работе с Midnight Commander. Освоить инструкцию
языка ассемблера mov и int.

# Задание

1. Выполнение лабораторной работы
2. Подключение внешнего файла in_out.asm
3. Задание для самостоятельной работы

# Выполнение лабораторной работы

**Порядок выполнения лабораторной работы**

Открываем Midnight Commander(рис. [-@fig:001]).

![В терминал вводим команду mc](image/1.jpg){#fig:001 width=70%}

Переходим в каталог arch-pc и создаем в нем файл lab5(рис. [-@fig:002]).

![Клавишами F7 и FN создаем lab5](image/2.jpg){#fig:002 width=70%}

Теперь переходим в созданный каталог и создаем файл lab5-1.asm(рис. [-@fig:003]).

![В нижней строке прописываем команду touch](image/3.jpg){#fig:003 width=70%}

Открываем файл командой F4 и вставляем текст(рис. [-@fig:004]).

![Вводим текст программмы из листинга](image/4.jpg){#fig:004 width=70%}

С помощью F3 открываем файл(рис. [-@fig:005]).

![Убеждаемся, что файл содержит текст программы](image/5.jpg){#fig:005 width=70%}

Транслируем текст программы lab5-1.asm в объектный файл.(рис. [-@fig:006]).

![Проверяем правильность выполнения](image/6.jpg){#fig:006 width=70%}

**Подключение внешнего файла in_out.asm**

Скачаиваем файл in_out.asm со страницы курса в ТУИСе(рис. [-@fig:007]).

![Скачиваем файл](image/7.jpg){#fig:007 width=70%}

![Копируем файл in_out.asm](image/8.jpg){#fig:008 width=70%}

С помощью функциональной клавиши F6 создаем копию файла lab5-1.asm с именем
lab5-2.asm. (рис. [-@fig:009]).

![Создаем наш файл](image/9.jpg){#fig:009 width=70%}

![Смотрим создался ли файл](image/10.jpg){#fig:010 width=70%}

Исправляем текст программы в новом файле с использованием программы из внешнего файла in_out.asm(рис. [-@fig:011]).

![Изменяем текст](image/11.jpg){#fig:011 width=70%}

Запускаем нашу программу(рис. [-@fig:012]).

![Смотрим как она работает](image/12.jpg){#fig:012 width=70%}

Открываем тот же файл и меняем sprintlF на sprint(рис. [-@fig:013]). 

![Редактируем файл](image/13.jpg){#fig:013 width=70%}

Запускаем нашу программу(рис. [-@fig:014]).

![Произошли изменения с переносом строки](image/14.jpg){#fig:014 width=70%}

Разница sprintLF и sprint в том, что строка, где мы вводим данные меняет свое местоположение

**Задания для самостоятельной работы**

Создаем копию файла lab5-1.asm(рис. [-@fig:015]).

![Создали копию и внесли нужные изменения](image/15.jpg){#fig:015 width=70%}

![Запускаем программу](image/16.jpg){#fig:016 width=70%}

Создаем копию файла lab5-2.asm(рис. [-@fig:017]).

![Создали копию](image/17.jpg){#fig:017 width=70%}

![Редактируем текст, находящийся в ней](image/18.jpg){#fig:018 width=70%}

![Запускаем программу](image/19.jpg){#fig:019 width=70%}

# Выводы

У нас получилось приобрести навыки работы с Midnight Commander и освоить инструкцию языка ассемблера mov и int.
