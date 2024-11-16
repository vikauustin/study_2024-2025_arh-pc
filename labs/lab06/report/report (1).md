---
## Front matter
title: "Лабораторная работа №6"
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

Освоить арифметические инструкции языка ассемблера NASM и написать
программы для вычисления арифметических действий с помощью неизвестной.

# Задание

Выполнить лабораторную и написать программу для вычисления уравнения.

# Выполнение лабораторной работы

**Cимвольные и численные данные в NASM**

Создаем каталог lab6, а в нем файл lab6-1.asm(рис. [-@fig:001]).

![Используем команды mkdir, touch, создаем и переходим туда с помощью команды сd](image/1.jpg){#fig:001 width=70%}

Открываем файл в Midnight Commander и заполняем его в соответствии с листингом 6.1(рис. [-@fig:002]).

![Заполняем файл](image/2.jpg){#fig:002 width=70%}

Необходимо запустить файл(рис. [-@fig:003]).

![Запускаем файл и смотрим на его работу](image/3.jpg){#fig:003 width=70%}

Откываем файл и редактриуем его(рис. [-@fig:004]).

![Убираем кавычки и сохраняем](image/4.jpg){#fig:004 width=70%}

Запускаем наш файл(рис. [-@fig:005]).

![Наблюдаем за произошедшими изменениями](image/5.jpg){#fig:005 width=70%}

Создаем новый файл lab6-2.asm(рис. [-@fig:006]).

![Используем команду touch и создаем файл](image/6.jpg){#fig:006 width=70%}

Заполняем файл в соответствии с листингом 6.2(рис. [-@fig:007]).

![Заполняем файл](image/7.jpg){#fig:007 width=70%}

Необходимо запустить файл(рис. [-@fig:008]).

![Запускаем файл и смотрим на его работу](image/8.jpg){#fig:008 width=70%}

Откываем файл и редактриуем его(рис. [-@fig:009]).

![Убираем кавычки и сохраняем](image/9.jpg){#fig:009 width=70%}

![Запускаем файл и смотрим на его работу](image/10.jpg){#fig:010 width=70%}

Снова открываем файл для редактирования и меняем iprintLF на iprint(рис. [-@fig:011]).

![Редактируем файл](image/11.jpg){#fig:011 width=70%}

![Запускаем файл и смотрим на его работу](image/12.jpg){#fig:012 width=70%}

**Выполнение арифметических операций в NASM**

Создаем новый файл lab6-3.asm(рис. [-@fig:013]). 

![Cоздаем файл](image/13.jpg){#fig:013 width=70%}

Открываем файл и редактируем в соответствии с листингом 6.3(рис. [-@fig:014]).

![Заполняем файл](image/14.jpg){#fig:014 width=70%}

![Запускаем файл и смотрим на его работу](image/15.jpg){#fig:015 width=70%}

Открываем файл и редактируем его для вычисления выражения f(x) = (4 * 6 +
2)/5(рис. [-@fig:016]).

![Редактируем наш файл](image/16.jpg){#fig:016 width=70%}

![Запускаем файл и смотрим на его работу](image/17.jpg){#fig:017 width=70%}

Создаем новый файл variant.asm и открываем его(рис. [-@fig:018]).

![Заполняем этот файл](image/18.jpg){#fig:018 width=70%}

![Запускаем файл и смотрим на его работу](image/19.jpg){#fig:019 width=70%}

**Ответы на вопросы**

1. Строка “mov eax,rem” и строка “call sprint” отвечают за вывод на экран
сообщения ‘Ваш вариант:’.

2. Эти инструкции используются для чтения строки с вводом данных от поль-
зователя. Начальный адрес строки сохраняется в регистре ecx, а количество
символов в строке (максимальное количество символов, которое может быть считано) сохраняется в регистре edx. Затем вызывается процедура
sread, которая выполняет чтение строки.

3. Инструкция “call atoi” используется для преобразования строки в целое
число.Она принимает адрес строки в регистре eax и возвращаетполученное
число в регистре eax.

4. Строка “xor edx,edx” обнуляет регистр edx перед выполнением деления.
Строка “mov ebx,20” загружает значение 20 в регистр ebx. Строка “div ebx”
выполняет деление регистра eax на значение регистра ebx с сохранением
частного в регистре eax и остатка в регистре edx.

5. Остаток от деления записывается в регистр edx.

6. Инструкция “inc edx” используется для увеличения значения в регистре edx
на 1 В данном случае, она увеличивает остаток от деления на 1

7. Строка “mov eax,edx” отправляет значение остатка от деления в регистр eax.
Строка “call iprintLF” вызывает процедуру iprintLF для вывода значения на
экран вместе с переводом строки.

**Задание для самостоятельной работы**

Создаем новый файл lab6-4.asm и открываем его(рис. [-@fig:020]).

![Заполняем этот файл, чтобы решалось уравнение (8х-6)/2](image/20.jpg){#fig:020 width=70%}

Проверяем программу для х=1(рис. [-@fig:021]).

![Программа работает корректно](image/21.jpg){#fig:021 width=70%}

Проверяем программу для х=5(рис. [-@fig:022]).

![Программа работает корректно](image/22.jpg){#fig:022 width=70%}

# Выводы

Мы приобрели навыки создания исполнительных файлов для решения выра-
жений и освоили арифметические инструкции в NASM.
