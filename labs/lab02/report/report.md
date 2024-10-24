---
## Front matter
title: "лабораторная работа №2"
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

Изучить идеологию и применение средств контроля версий. Приобрести
практические навыки по работе с системой git, а конкретней настроить его, создать
собственный репозиторий, добавить туда отчет по лабораторной работе.

# Задание

Создать базовую конфигурацию для работы с git.
Создать SSH ключ.
Настроить подписи git.
Зарегистрироваться на Guthub.
Создать локальный каталог для выполнений заданий по предмету.

# Выполнение лабораторной работы

*1. Базовая настройка Git.*

Сначала сделаем предварительную конфигурацию git.

![Ввели следующие команды, указав имя и email владельца репозитория](image/1.png){#fig:001 width=70%}

Настроим utf-8 в выводе сообщений git.

![Настраиваем utf-8](image/2.png){#fig:002 width=70%}

Зададим имя начальной ветки (будем называть её master).

![Задаем имя начальной ветки (master).](image/3.png){#fig:003 width=70%}

Задаем параметр autocrlf.

![Задаем параметр autocrlf.](image/4.png){#fig:004 width=70%}

Задаем параметр safecrlf.

![Задали параметр autocrlf.](image/5.png){#fig:005 width=70%}

*2. Создание SSh ключа*

Для последующей идентификации пользователя на сервере репозиториев
необходимо сгенерировать пару ключей (приватный и открытый):

![Генерируем ключи](image/6.png){#fig:006 width=70%}

Далее необходимо загрузить сгенерированный открытый ключ. Для этого
зайти на сайт http: //github.org/ под своей учётной записью и перейти в меню
Setting . После этого выбрать в боковом меню SSH and GPG keys и нажать
кнопку New SSH key . Скопировав из локальной консоли ключ в буфер
обмена.

![Копируем ключ из локальной консоли в буфер обмена, заходим на сайт и нажимаем “вставить”. После этого ключ автоматически вставляется.](image/7.png){#fig:007 width=70%}

Вставляем ключ в появившееся на сайте поле и указываем для ключа имя
(Title).

![Скопировали ключ, вставили в окошко “Key”, и написали название ключа.](image/8.png){#fig:008 width=70%}

![Получилось добавить ключ.](image/9.png){#fig:009 width=70%}

*3. Сознание рабочего пространства и репозитория курса на основе шаблона*

![Открываем терминал и создаем каталог для предмета «Архитектура компьютера» с помощью команды mkdir](image/10.png){#fig:010 width=70%}

*4. Сознание репозитория курса на основе шаблона*

Требуется перейти на станицу репозитория с шаблоном курса и выбрать Use this template

![В открывшемся окне задали имя репозитория (Repository name) study_2023–2024_arh-pc и создали сам репозиторий.](image/11.png){#fig:011 width=70%}

Клонируем созданный репозиторий, используя ссылку для клонирования на странице созданного репозитория Code > SSH.

![Клонировали репозиторий](image/12.png){#fig:012 width=70%}

*5. Настройка каталога курса*

![Заходим в каталог курса и удаляем лишнее файлы](image/13.png){#fig:013 width=70%}

![Создаем необходимые каталоги.](image/14.png){#fig:014 width=70%}

![Отслеживаем файлы.](image/15.png){#fig:015 width=70%}

![Отправляем файлы на сервер.](image/16.png){#fig:016 width=70%}

![Проверяем все ли выполнено верно.](image/17.png){#fig:017 width=70%}

![Видно, что все перенеслось корректно.](image/18.png){#fig:018 width=70%}

*Задание для самостоятельной работы.*
• Создайте отчет по выполнению лабораторной работы в соответствующем
каталоге рабочего пространства.

• Скопируйте отчеты по выполнению предыдущих лабораторных работ в
соответствующие каталоги созданного рабочего пространства.

• Загрузите файлы на github.

![Нажимаем Add file, затем Commit changes, и копируем первую лабораторную работу в каталог lab01.](image/19.png){#fig:019 width=70%}

![Заходим снова в каталог и проверяем выполнилось ли копирование, файл перенесся.](image/20.png){#fig:020 width=70%}

# Выводы

Нам удалось успешно ознакомиться с системой контроля git, выучить некоторые
команды для работы с ней, изучить идеологию и применение средств контроля
версий, создать свой репозиторий на платформе github.

