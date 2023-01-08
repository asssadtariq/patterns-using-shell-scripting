# !/bin/bash 

left_value="left"
right_value="right"
full_value="full"
loopCount=0
Count=0
temp_1=2
temp_2=1
tempCount=1
tempCount_2=1
tempCount_3=1
tempCount_4=1
spaces=0
spacesCount=0


echo "Enter Position (left, right or full): "
read position

echo "Enter Length : "
read length

echo "Enter Character : "
read character

spaces=$(( $length-1 ))
loopCount=$(( $length * $temp_1 ));
loopCount=$(( $loopCount - $temp_2 ));

if [[ "$position" == "$left_value" ]]; then
	echo ":::::::::::: Left Pattern ::::::::::::"
	
	while [ $loopCount -gt 0 ]
	do 
		tempCount=$(( tempCount_3+0 ))
		while [ $tempCount -gt 0 ]
		do	printf "$character"
		tempCount=$(( $tempCount-1 ))
		
		done

	tempCount_2=$(( $tempCount_2+1 ))	

	if [[ "$tempCount_2" -le "$length" ]]
	then	
		tempCount_3=$(( $tempCount_3+1 ))	
	fi	

	if [[ "$tempCount_2" -gt "$length" ]]
	then	
		tempCount_3=$(( $tempCount_3-1 ))	
	fi	


	echo	
	loopCount=$(( $loopCount-1 ))
	done		
	
	
fi

if [[ "$position" == "$right_value" ]]; then
	echo ":::::::::::: Right Pattern ::::::::::::"
	while [ $loopCount -gt 0 ]
	do
		spacesCount=1
		while [ $spacesCount -le $spaces ]
		do
			printf " "
			spacesCount=$(( spacesCount+1 ))
		done
	
		tempCount=$(( tempCount_3 ))
		while [ $tempCount -gt 0 ]
		do
			printf "$character"
			tempCount=$(( $tempCount-1 ))
		done
		
		echo
		tempCount_2=$(( $tempCount_2+1 ))

		if [[ "$tempCount_2" -le "$length" ]]
		then 
			tempCount_3=$(( $tempCount_3+1 ))
		fi
		
		if [[ "$tempCount_2" -gt "$length" ]]
		then 
			tempCount_3=$(( $tempCount_3-1 ))
		fi

		if [[ "$tempCount_2" -lt "$length" ]]
		then 
			spaces=$(( $spaces-1 ))
		fi
		
		if [[ "$tempCount_2" -gt "$length" ]]
		then 
			spaces=$(( $spaces+1 ))
		fi

		if [[ "$tempCount_2" -eq "$length" ]]
		then 
			spaces=0
		fi
		
		loopCount=$(( $loopCount-1 ))
	done	
fi

if [[ "$position" == "$full_value" ]]; then
	echo ":::::::::::: Full Pattern ::::::::::::"

	while [ $loopCount -gt 0 ]
	do
		spacesCount=1
		while [ $spacesCount -le $spaces ]
		do
			printf " "
			spacesCount=$(( spacesCount+1 ))
		done
	
		tempCount=$(( tempCount_3 ))
		while [ $tempCount -gt 0 ]
		do
			printf "$character"
			tempCount=$(( $tempCount-1 ))
		done
		
		echo
		tempCount_2=$(( $tempCount_2+1 ))

		if [[ "$tempCount_2" -le "$length" ]]
		then 
			tempCount_4=$(( $tempCount_4+1 ))
		fi
		
		if [[ "$tempCount_2" -gt "$length" ]]
		then 
			tempCount_4=$(( $tempCount_4-1 ))
		fi

		tempCount_3=$(( $tempCount_4*2 ))
		tempCount_3=$(( $tempCount_3-1 ))

		if [[ "$tempCount_2" -lt "$length" ]]
		then 
			spaces=$(( $spaces-1 ))
		fi
		
		if [[ "$tempCount_2" -gt "$length" ]]
		then 
			spaces=$(( $spaces+1 ))
		fi

		if [[ "$tempCount_2" -eq "$length" ]]
		then 
			spaces=0
		fi
		
		loopCount=$(( $loopCount-1 ))
	done	

else
	echo "Wrong Input"

fi	
