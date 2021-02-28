#!/bin/bash

# Завершить текущие экземпляры polybar
killall -q polybar
killall -q picom
# Ожидание полного завершения работы процессов
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
while pgrep -u $UID -x picom >/dev/null; do sleep 1; done

# Запуск Polybar со стандартным расположением конфигурационного файла в ~/.config/polybar/config
polybar mybar &
picom &
echo "Polybar загрузился..."
