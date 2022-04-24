function guessfunction(){
    files=$(pwd | ls | wc -l)
    while true;
    do
        echo "Enter a number"
        read  guess

	if [ $guess -lt $files ]
        then
            echo "Incorrect, you entered a lower number"

	elif [ $guess -gt $files ]
        then
            echo "Incorrect, you entered a greater number"

	 else
            echo "Nice! you entered the correct number"
            break;
        fi
    done
}

echo "How many files are in this current directory?"
guessfunction

echo "Ending the program now, goodbye :)"
