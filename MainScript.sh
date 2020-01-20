#!/bin/bash

#Using Source file- this works
#now to check for the case that the file exists 
if [ ! -f MainScript.conf ] 
then
	#these will contain the default values 
	echo "The file does not exist- confirmed"
	Name_here="Meow"
	Interest_here="Catnip"
	Food_here="Tuna"
	Type_here=Introvert
else 
	source MainScript.conf
	Name_here=${Name}
	Interest_here=${Interest}
	Food_here=${Food}
	Type_here=${Type}
fi 

#Testing that the variables work 
echo ${Name_here}
echo ${Interest_here}
echo ${Food_here}
echo ${Type_here}


#Now testing to parse the two variables together
echo "My name is ${Name_here}/${Interest_here}"  #this works 







#testing the use of a config file

#first create a config array 
config=(	#setting default value for config array 
	[Name]=""
	[Interest]=""
	[Food]="Depends on my mood"
	[Type]=""
) 

#while read -r name value 
#do 
#	if echo $line | grep -v /dev/null 
#	then 
#		varname=$(echo $line | cut -d '=' -f -1)
#		config[$varname]=$( echo $line | cut -d '=' -f 2-)
#		echo config[$varname]
#	fi 
#done < MainScript.conf

#Name_here=${config[Name]}
#Interest_here=${config[Interest]}
#Food_here=${config[Food]}
#Type_here=${config[Type]}

#echo ${Name_here}

#echo "My name is ${config[Name]}, 
#I am interested in ${Interest_here}. 
#I like food ${Food_here} and I am of type ${Type_here}"
#echo "Test" 


#Trying it the other way 
#ImiFS="="
#while read -r name value 
#do
#	#echo "Content of ${name} is ${value//\"/}"
#	echo "The ${name} is ${value}"
#	config[${name}]=${value}
#done < MainScript.conf


