---
## Front matter
title: "Отчет по выполнению лабораторной работы №1"
subtitle: "Дисциплина: Архитектура компьютеров и операционны системы"
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

Целью данной работы является приобретение практических навыков установки операционной системы на виртуальную машину, настройку минимально
необходимых для дальнейшей рвпботы сервисов.

# Задание

1. Установка операционной системы

2. Загрузка необходимых обновлений

3. Настройка раскладки клавиатуры

4. Установка ПО для создания документации

5.Выполнение домашнего задания


# Теоретическое введение

   Техническое обеспечение

    Лабораторная работа подразумевает установку на виртуальную машину [VirtualBox](https://www.virtualbox.org/) операционной системы Linux(дистрибутив Fedora).
    Выполнение работы возможно как в дисплейном классе факультета физико-математических и естественных наук РУДН, так и дома. Описание выполнения работы приведено для дисплейного класса со следующими характеристиками техники:
        Intel Core i3-550 3.2 GHz, 4 GB оперативной памяти, 80 GB свободного места на жёстком диске;
        [ОС Linux Gentoo](http://www.gentoo.ru/);
        VirtualBox версии 7.0 или новее.
    Для установки в виртуальную машину используется [дистрибутив Linux Fedora](https://getfedora.org), вариант с менеджером окон [sway](https://fedoraproject.org/spins/sway/).
    При выполнении лабораторной работы на своей технике вам необходимо скачать необходимый [образ операционной системы ](https://fedoraproject.org/spins/sway/download/index.html).
    В дисплейных классах можно воспользоваться образом в каталоге /afs/dk.sci.pfu.edu.ru/common/files/iso.
    Для определённости в описании будем использовать версию Fedora-Sway-Live-x86_64-41-1.4.iso.в


Linux (или GNU/Linux) – семейство Unix-подобных операционных систем на
базе ядра Linux, включающих тот или иной набор утилит и программ проекта GNU.
Linux-системы распространяются в виде различных дистрибутивов, имеющих свой
набор системных и прикладных компонентов (как свободных, так и проприетарных).
Дистрибутив Linux — это операционная система, созданная на основе ядра
Linux, которая включает в себя набор библиотек и утилит (пакетов), разработанных
в рамках проекта GNU, а также систему управления пакетами (менеджер пакетов). В
настоящее время существует более 500 различных дистрибутивов, разрабатываемых
как при коммерческой поддержке (Red Hat / Fedora, SLED / OpenSUSE, Ubuntu и др.),
так и исключительно усилиями добровольцев (Debian, Slackware, Gentoo, ArchLinux
и др.).




# Выполнение лабораторной работы

## Установка операционной системы 

1. Скачиваю необходимое программное ПО, VirtualBox уже был установлен, кроме него загружаю Fedora-Sway-Live-x86_64-41-1.4.iso
Запускаю виртуальную машину, создаю новую. (рис. [-@fig:001]).

![Создание новой виртуальной машины](image/1.png){#fig:001 width=70%}

2. Настравиваю машину согласно указаниям(рис. [-@fig:002]).

![Настройка виртуальной машины](image/2.png){#fig:002 width=70%}

3. Запускаю машину in basic graphics mode, т.к ноутбук не поддерживает запуск в стандартном режиме.  (рис. [-@fig:003]).

![Запуск виртуальной машины](image/3.png){#fig:003 width=70%}

4. После того как машина запустилась, нажимаю liveinst и настраиваю машину перед установкой также согласно рекомендациям, данным в указаниях
к выполнениюлабораторной работы  (рис. [-@fig:004])

![Язык](image/4.png){#fig:004 width=70%}

 (рис. [-@fig:005]).

![Место установки](image/5.png){#fig:005 width=70%}

 (рис. [-@fig:006]).

![Создание пользователя](image/6.png){#fig:006 width=70%}

 (рис. [-@fig:007]).

![Аккаунт администратора](image/7.png){#fig:007 width=70%}


5. Приступаю к установке fedora 41 sway  (рис. [-@fig:008]).

![Установка](image/8.png){#fig:008 width=70%}

6. Выключаю машину после завершения установки и удаляю контроллер IDE  (рис. [-@fig:009]).

![Удаление диска](image/9.png){#fig:009 width=70%}

## После установки 

### Обновления 

1. Устанавливаю средства разработки  (рис. [-@fig:010]).

![Средства разработки](image/10.png){#fig:010 width=70%}

2. Обновляю все пакеты (рис. [-@fig:011]).

![Обновление пакетов ](image/11.png){#fig:011 width=70%}

### Повышение комфорта работы 

1. Устанавливаю программы для удобсвта консоли (рис. [-@fig:012]).

![Для удобсвта консоли](image/12.png){#fig:012 width=70%}

### Автоматическое обновление 

1. Установка ПО и запускаю таймер (рис. [-@fig:013]).

![ПО](image/13.png){#fig:013 width=70%}

### Отключение SELinux

1. Перехожу в /etc/selinux/config, открываю файл и меняю значение SELINUX=enforsing на SELINUX=permissive (рис. [-@fig:014]).

![SELINUX=permissive](image/14.png){#fig:014 width=70%}

2. Перезапуск (рис. [-@fig:015]).

![Reboot](image/15.png){#fig:015 width=70%}

### Найстрока раскладки клавиатуры 

1. Создаю конфигурационный файл и редактирую его, перехожу на роль суперпользователя (рис. [-@fig:016]).

![Конфигурационный файл и работа с ним](image/16.png){#fig:016 width=70%}

2. Редактирование файла 00-keyboard.conf и перезапуск. (рис. [-@fig:017]).

![Редактирование файла](image/17.png){#fig:017 width=70%}

### Установка ПО для создания документации 

1. Устанавливаю дистрибутив TexLive (рис. [-@fig:018]).

![TexLive](image/18.png){#fig:018 width=70%}

2. Скачиваю pandoc версии 3.6.2. (рис. [-@fig:019]).

![pandoc](image/19.png){#fig:019 width=70%}

3. Скачиваю pandoc-crossref для pandoc 3.6.2 

4. Распаковываю файлы и переношу необходимое(pandoc, pandoc-crossref, pandoc-lua и pandoc-server) в папку /usr/local/bin (рис. [-@fig:020]).

![распаковка и перенос необходимых файлов в /usr/local/bin](image/20.png){#fig:020 width=70%}

## Домашнее задание 

1. Ввожу dmesg и просматриваю вывод этой программы. Вижу, как запускается система. (рис. [-@fig:021]).

![dmesg](image/21.png){#fig:021 width=70%}

Получаю информацию о:

- версии ядра (рис. [-@fig:022]).

![Версия ядра](image/22.png){#fig:022 width=70%}

- частоте процессора (рис. [-@fig:023]).

![Частота процессора ](image/23.png){#fig:023 width=70%}

- моделе процессора (рис. [-@fig:024]).

![Модель процессора](image/24.png){#fig:024 width=70%}

- об объеме доступной оперативной памяти (рис. [-@fig:025]).

![ОЗУ](image/25.png){#fig:025 width=70%}

- типе обнаруженного гипервизора (рис. [-@fig:026]).

![Гипервозир](image/26.png){#fig:026 width=70%}

- типе файловой системы корневого раздела (рис. [-@fig:027]).

![Тип файловой системы](image/27.png){#fig:027 width=70%}

- последовательности монтирования файловых систем (рис. [-@fig:028]). 


![Последовательность монтирования файловых систем](image/28.png){#fig:028 width=70%}



# Выводы

выполнение данной лабораторной работы помогло мнеулучшить навыки установки операционной системы на виртуальную машину. 
Я научилась работать с дистрибутивом sway на базовом уровне, научилась пользоваться горячими клавишами. Кроме этого, вспомнила как устанавливать программы для работы
с докуменацией (pandoc, texlive). Теперь я умею отслеживать информацию о процессоре через терминал. 
Я поняла, что достаточно сильно улучшила свои знания в области данного предмета. 
В ходе работы было совершенно значительное количество ошибок, но мне получилось все исправить, не без помощи интернет ресурсов и одногруппников.  

# Список литературы{.unnumbered}

[Лабораторная работа 1](https://esystem.rudn.ru/mod/page/view.php?id=1224368#orgf88e4c8)


::: {#refs}
:::
