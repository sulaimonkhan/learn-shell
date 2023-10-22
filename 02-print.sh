# To print a message there are couple of commands , But echo is widely used one 

echo Hello world
echo sohail

# While printing some times to grab the attention of user we might need to print in some color 
# syntax : echo -e "\e[COLmMESSAGE\e[0m"
# -e - enable colors
# \e[COLm - To enable certain color 
#\e[0m - To disable color which is enable 
# COL stands for color and possible colors are RED(31), GREEN(32), YELLOW(33), BlUE(34), MAGENTA(35), CYAN(36)

echo -e "\e[31msohail in Red color\e[0m"
echo -e "\e[32msohail in Green color\e[0m"
echo -e "\e[33msohail in Yellow color\e[0m"
echo -e "\e[34msohail in Blue color\e[0m"
echo -e "\e[35msohail in Magenta color\e[0m"
echo -e "\e[36msohail in Cyan color\e[0m"