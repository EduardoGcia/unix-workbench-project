function guessfunction(){
    files=$(ls | wc -l)
    correct=1

    while [[ $correct -gt 0 ]];
    do
        echo "Enter your guess as a number"
        read  guess

	if [ $guess -lt $files ]
        then
            echo "Incorrect, you entered a lower number"

	elif [ $guess -gt $files ]
        then
            echo "Incorrect, you entered a greater number"

	 else
            echo "Nice! you entered the correct number"
            let correct=$correct-1
        fi
    done
}

echo "How many files are in this current directory?"
guessfunction

echo "Ending the program now, goodbye :)"
