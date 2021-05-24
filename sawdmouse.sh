#!/usr/bin/env bash
while true; do
  read -rsn1  input
  x_location=$(xdotool getmouselocation | awk '{print $1}'| cut -d ":" -f2) #get current x position
  y_location=$(xdotool getmouselocation | awk '{print $2}'| cut -d ":" -f2) #get current y position
  if [[ "$input" = "s" ]]; then
    y_plus3=$(expr $y_location + 4)
    xdotool mousemove $x_location $y_plus3
  elif [[ "$input" = "w" ]]; then
    y_minus3=$(expr $y_location - 4)
    xdotool mousemove $x_location $y_minus3
  elif [[ "$input" = "d" ]]; then
    x_plus3=$(expr $x_location + 4)
    xdotool mousemove $x_plus3 $y_location
  elif [[ "$input" = "a" ]]; then
    x_minus3=$(expr $x_location - 4)
    xdotool mousemove $x_minus3 $y_location
  elif [[ "$input" = "l" ]]; then
    xdotool click 1
  elif [[ "$input" = "r" ]]; then
    xdotool click 3
  elif [[ "$input" = "m" ]]; then
    xdotool click 2
  elif [[ "$input" = "0" ]]; then
    xdotool keydown ctrl+c
    xdotool keyup ctrl+c
  fi
done
