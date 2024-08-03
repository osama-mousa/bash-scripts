#!/bin/bash

# تعريف متغير
name="ChatGPT"

# عرض رسالة على الشاشة
echo "Hello, $name!"

# جملة شرطية
if [ $name == "ChatGPT" ]; then
    echo "Welcome to Bash scripting!"
else
    echo "Who are you?"
fi
