# To print a message thereare couple of commands,but echo is widely used one

echo Hello world

# while printing some times to grab the attentionof user we might need to print in some color
# syntax : echo -e "\e[COLmMESSAGE\e[0m"
# -e - enable colors
# \e[COLm - To enable certain color
# \e[0m - To disable color which is enable
# COL stands for color and possible colors are RED[31], GREEN[32], YELLOW[33],BLUE[34], MAGENTA[35], CYAN[36]

echo -e "\e[31mHello in Red color\e[0m"
echo -e "\e[32mHello in Green color\e[0m"
echo -e "\e[33mHello in Yellow color\e[0m"
echo -e "\e[34mHello in Blue color\e[0m"
echo -e "\e[35mHello in Magenta color\e[0m"
echo -e "\e[36mHello in Cyan color\e[0m"
