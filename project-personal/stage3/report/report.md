---
## Front matter
title: " Отчет по выполнению индивидульного проекта. Этап 3"
subtitle: "Архитектура компьютеров и операционные системы"
author: "Ефремова Полина Александровна"

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

Выполнить третий этап реализации проекта 

# Задание

Добавить к сайту достижения.

- Добавить информацию о навыках (Skills).

- Добавить информацию об опыте (Experience).

- Добавить информацию о достижениях (Accomplishments).

- Сделать пост по прошедшей неделе.

- Добавить пост на тему: "Язык разметки Markdown."


# Выполнение лабораторной работы

1. Готовлю файл для смены информации обо мне (рис. [-@fig:001]). (рис. [-@fig:002]).

![Файлы био](image/1.png){#fig:001 width=70%}

![Изменение файла](image/2.png){#fig:002 width=70%}

2. Пишу пост о языке разметки Markdown (рис. [-@fig:003]). (рис. [-@fig:004]).

![MD](image/3.png){#fig:003 width=70%}

![Измененный файл](image/4.png){#fig:004 width=70%}

3. Пост о прошедшей неделе (рис. [-@fig:005]). (рис. [-@fig:006]).

![Прошедшая неделя](image/5.png){#fig:005 width=70%}

![Измененный файл](image/6.png){#fig:006 width=70%}

4. Ввожу hugo server и выполняю проверку изменений (рис. [-@fig:007]).

![Проверка](image/7.png){#fig:007 width=70%}

5. Добавляю информацию на Git (рис. [-@fig:008]).

![на Git](image/8.png){#fig:008 width=70%}

6. Перехожу на сайт и проверяю все изменения! (рис. [-@fig:009]). (рис. [-@fig:010]).

![Проверка био](image/9.png){#fig:009 width=70%}

![Проверка достижений](image/10.png){#fig:010 width=70%}

# Выводы

Теперь добавлено больше информации на сайте, мои достижения и также читатели могут ознакомится с моим образом жизни! 

# Список литературы{.unnumbered}

[Этапы реализации проекта](https://esystem.rudn.ru/mod/page/view.php?id=1224358)

::: {#refs}
:::
