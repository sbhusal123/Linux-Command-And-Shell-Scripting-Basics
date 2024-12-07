#!/bin/bash

input -p "Enter first number: " num1
input -p "Enter second number: " num2


if [ $num1 -eq $num2 ]; then
    echo "$num1 and $num2 are both equal"
else
    echo "$num1 and $num2 are not equal"
fi

if [ $num1 -ne $num2 ]; then
    echo "$num1 and $num2 are not equal"
else
    echo "$num1 and $num2 are not equal"
fi

