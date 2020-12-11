#! /bin/bash
# this is named cars.sh
# by Mason Kaplan :)
SCRIPT_PATH=./my_old_cars
echo 'Please enter 1 to add a car, 2 to list car inventory, or 3 to quit the program: '
read -r input
x=1234
while [ "$input" -ne "$x" ]; do
	if [ "$input" -eq 1 ];
	then
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
		exit
	elif [ "$input" -eq 2 ];
	then
		OUTPUT=$("$SCRIPT_PATH")
		echo "$OUTPUT"
		exit
	elif [ "$input" -eq 3 ];
	then
		echo "Goodbye."
		exit
	fi
done
