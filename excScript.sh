# replace Name with your name
# Initializing the countrer 
N=1
# starting a for loop going from 1 to 5 to print a message and creating a directory named Georgio and a certain number
for n in $(seq 1 5)
do
# Creating a message in the console 
echo "This script is replaced with the name Georgio"
# Creating a directory named Georgio and the number of the counter
mkdir Georgio${n}
# REplacing xxxx characters in the first txt file by N in input.txt
sed -e "s/xxxx/${N}/" inputOrig.txt > input.txt
# Going to the directory
cd Georgio${n}
# Copying input.txt to the current directory
cp ../input.txt ./
# Going back to the original directory
cd ../
# Changing the value of N
N=$(( $N + $n ))
#End of the program
done
