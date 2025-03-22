---
## Front matter
title: "Индивидуальный проект. Этап 2"
subtitle: "Персонализация"
author: "Ефремова Полина Алекснадровна"

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

- персонализировать сайт 

# Задание

- добаить информацию о себе

- добавить интересы и информацию об образовании 

- опубликовать пост о прошедшей неделе

- опубликовать пост о Git

# Выполнение лабораторной работы

1. Устанавливаю golang (рис. [-@fig:001]).

![Установка](image/1.png){#fig:001 width=70%}

2. Добавляю в assets/media/icons/brands иконки (рис. [-@fig:002]).

![Иконки](image/2.png){#fig:002 width=70%}

3. Меняю аватарку и информацию о себе (рис. [-@fig:003]). (рис. [-@fig:004]).

![Измененные файлы](image/3.png){#fig:003 width=70%}

![Персонализация](image/4.png){#fig:004 width=70%}

4. Создаю два поста по заданным темам (рис. [-@fig:005]).

![Посты](image/5.png){#fig:005 width=70%}

5. Запускаю сайт (рис. [-@fig:006]).

![Запуск](image/6.png){#fig:006 width=70%}

6. Проверяю изменения (рис. [-@fig:007]).

![Изменения](image/7.png){#fig:007 width=70%}

7. Загружаю изменения на GitHub (рис. [-@fig:008]).

![Загрузка изменений](image/8.png){#fig:008 width=70%}

8. Смотрю инофрмацию на своей странице (рис. [-@fig:009]).

![Проверка био](image/9.png){#fig:009 width=70%}

9. Сомтрю на загруженные посты (рис. [-@fig:010]).

![Проверка постов](image/10.png){#fig:010 width=70%}

# Выводы

Сайт был отредактирован. Я добавила информацию о себе, также начала вести свой блог. 

# Список литературы{.unnumbered}

[Этапы реализации проекта](https://esystem.rudn.ru/mod/workshop/view.php?id=1224361)

::: {#refs}
:::
