#!/bin/bash

case_sensitive="-i"  # по умолчанию — нечувствительный поиск
line_numbers=""

while getopts "i:o:p:Cn" opt; do
    case "$opt" in
        i) inputfile="$OPTARG" ;;
        o) outputfile="$OPTARG" ;;
        p) pattern="$OPTARG" ;;
        C) case_sensitive="" ;;   # чувствительный к регистру поиск
        n) line_numbers="-n" ;;
        *) echo "Usage: $0 -i inputfile -o outputfile -p pattern [-C] [-n]"; exit 1 ;;
    esac
done

# Проверка обязательных аргументов
if [[ -z "$inputfile" || -z "$pattern" ]]; then
    echo "Необходимо указать -i inputfile и -p pattern"
    exit 1
fi

# Выполнение поиска
if [[ -n "$outputfile" ]]; then
    grep $case_sensitive $line_numbers "$pattern" "$inputfile" > "$outputfile"
    echo "Результат сохранён в $outputfile"
else
    grep $case_sensitive $line_numbers "$pattern" "$inputfile"
fi
