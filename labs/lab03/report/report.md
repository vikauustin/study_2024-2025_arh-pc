---
## Front matter
title: "Лабораторная работа №3"
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
 
Ознакомиться с языком разметки Markdown и оформить отчет по лаборатоной работе №2 в нем.

# Задание

Сформировать отчет по лабораторной работе №2 с помощью Markdown.

# Выполнение лабораторной работы

При помощи команнды Git pull обновляем локальный репозиторий и скачиваем изменения.

![Перешли в нужный каталог и выполнили команду](image/1.jpg){#fig:001 width=70%}

Используем команду make для создания файлов report.docx и report.pdf

![В нужном каталоге используем команду make](image/2.jpg){#fig:002 width=70%}

Проверяем в файлах создались ли report.docx и report.pdf.

![Ранее документов там не было, все создано успешно.](image/3.jpg){#fig:003 width=70%}

Используем команду make clean, она должна удалить ранее созданные докуиенты.

![Пишем команду make clean.](image/4.jpg){#fig:004 width=70%}

![Проверяем выполнение команды.](image/5.jpg){#fig:005 width=70%}

Используем команду gedit report.md, которая открывает редактор данного документа.

![Используем команду](image/6.jpg){#fig:006 width=70%}

Далее открывается нужный нам текстовый документ.

![Проверяем документ](image/7.jpg){#fig:007 width=70%}

![Редактируем документ](image/8.jpg){#fig:008 width=70%}

Загружаем все документы на Github.

![Добавляем файлы.](image/9.jpg){#fig:009 width=70%}

# Выводы

Нам удалось успешно ознакомиться с языком разметки Markdown и оформить отчет по лаборатоной работе №2 в нем.


