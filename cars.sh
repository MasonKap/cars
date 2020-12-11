#! /bin/bash
# this is named cars.sh
# by Mason Kaplan :)
SCRIPT_PATH=./my_old_cars
echo 'Please enter 1 to add a car, 2 to list car inventory, or 3 to quit the program: '
read -r input
x=1234
while [ "$input" -ne "$x" ]; do
	case "$input" in
	[1]*)
		newcar=""
		echo 'Enter the car year: '
		read -r year
		newcar+="${year}"  
		echo 'Enter the car make: '
		read -r make
		newcar+=":${make}"  
		echo 'Enter the car model: '
		read -r model
		newcar+=":${model}"
		echo "$newcar" >> "$SCRIPT_PATH"
		echo 'Please input either 1, 2, or 3 to continue: '
		read -r input
		;;
	[2]*)
		sort -n "./my_old_cars"
		echo 'Please input either 1, 2, or 3 to continue: '
		read -r input
		;;
	[3]*)
		echo "Goodbye."
		exit
		;;
esac
done
