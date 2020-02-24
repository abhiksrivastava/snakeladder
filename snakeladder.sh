#welcome to snake and ladder
echo "----welcome to sanke and ladder---"
echo " lets start the game "
function roll()
{
   randomCheck=$((RANDOM%6 + 1))
   echo "When we throw the die $randomCheck comes"
   ((totalrandomCheck++))
}


