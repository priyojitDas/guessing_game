n=$(($(ls -l|grep -v ^d|wc -l)-1))
check()
{
	if [ $1 -eq $2 ]
	then
		echo "Congratulation. You are absolutely correct."
		flag=1
	elif [ $1 -lt $2 ]
	then
		echo -n "Not correct. Too High. Guess again : "
		flag=0
	else
		echo -n  "Not correct. Too Low. Guess again : "
		flag=0
	fi
	return $flag
}
echo -n "Guess number of files in current directory : "
while true
do
	read g
	check $n $g
	flg=$?
	if [ $flg -eq 1 ]
	then
		break
	else
		continue
	fi
done
