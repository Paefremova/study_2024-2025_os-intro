---
## Front matter
lang: ru-RU
title: Лабораторная работа №14
subtitle: 
author:
  - Ефремова Полина Александровна
institute:
  - Российский университет дружбы народов, Москва, Россия
 
date: 12 апреля 2025

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
---

# Информация

## Докладчик

:::::::::::::: {.columns align=center}
::: {.column width="70%"}

  * Ефремова Полина Александровна 
  * студент группы НКАбд-02-24
  * ст.б №1132246726
  * Российский университет дружбы народов
  * polinaefeemova68890@gmail.com
  * <https://github.com/Paefremova/>

:::
::: {.column width="30%"}

![](./image/efremova.jpg):

:::
::::::::::::::

# Вводная часть

## Актуальность

новые навыки

## Объект и предмет исследования

 ОС UNIX/Linux.

## Цели и задачи

Изучить основы программирования в оболочке ОС UNIX. Научиться писать более
сложные командные файлы с использованием логических управляющих конструкций
и циклов

## Задание

1. Написать командный файл, реализующий упрощённый механизм семафоров. Ко-
мандный файл должен в течение некоторого времени t1 дожидаться освобождения
ресурса, выдавая об этом сообщение, а дождавшись его освобождения, использовать
его в течение некоторого времени t2<>t1, также выдавая информацию о том, что
ресурс используется соответствующим командным файлом (процессом). Запустить
командный файл в одном виртуальном терминале в фоновом режиме, перенаправив
его вывод в другой (> /dev/tty#, где # — номер терминала куда перенаправляется
вывод), в котором также запущен этот файл, но не фоновом, а в привилегированном
режиме. Доработать программу так, чтобы имелась возможность взаимодействия трёх
и более процессов.

##

2. Реализовать команду man с помощью командного файла. Изучите содержимое ката-
лога /usr/share/man/man1. В нем находятся архивы текстовых файлов, содержащих
справку по большинству установленных в системе программ и команд. Каждый архив
можно открыть командой less сразу же просмотрев содержимое справки. Командный
файл должен получать в виде аргумента командной строки название команды и в виде
результата выдавать справку об этой команде или сообщение об отсутствии справки,
если соответствующего файла нет в каталоге man1.

##

3. Используя встроенную переменную $RANDOM, напишите командный файл, генерирую-
щий случайную последовательность букв латинского алфавита. Учтите, что $RANDOM
выдаёт псевдослучайные числа в диапазоне от 0 до 32767.

# Выполнение лабораторной работы

## 1. Выполнение задания 1 

Код 1:

```

#!/bin/bash

SEMAPHORE="/tmp/semaphore.lock"
T1=5  
T2=3  
TTY_OUT="/dev/tty2"

echo "Process $$ is waiting for resource..." > "$TTY_OUT"
while [ -e "$SEMAPHORE" ]; do
    sleep "$T1"
done
echo "Process $$ acquired resource!" > "$TTY_OUT"
touch "$SEMAPHORE"
sleep "$T2"
echo "Process $$ released resource!" > "$TTY_OUT"
rm -f "$SEMAPHORE"

```


## Реализация 1 кода. 

![Код 1 ](image/1.png){#fig:001 width=70%}

## 2. Выполнение задания 2

Код 2:

```

#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <command>"
    exit 1
fi
MAN_PAGE="/usr/share/man/man1/$1.1.gz"
if [ -f "$MAN_PAGE" ]; then
    zcat "$MAN_PAGE" | less
else
    echo "No manual entry for $1"
fi
```
## Реализация 2 кода. 

![Код 2 ](image/2.png){#fig:002 width=70%}

##

![Код 2 ](image/3.png){#fig:003 width=70%}

## 3. Выполнение задания 3

Код 3:

```
#!/bin/bash

LENGTH=10
ALPHABET="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
RANDOM_STRING=""
for ((i = 0; i < LENGTH; i++)); do
    INDEX=$((RANDOM % ${#ALPHABET}))
    RANDOM_STRING+="${ALPHABET:$INDEX:1}"
done
echo "Generated string: $RANDOM_STRING"
```

## Реализация 3 кода 

![Код 3 ](image/4.png){#fig:004 width=70%}

# Выводы

Получены новые коды, которые упрощают работу! 

# Списон лиетратуры 

[Лабораторная работа №14](https://esystem.rudn.ru/pluginfile.php/2586880/mod_resource/content/4/012-lab_shell_prog_3.pdf)

