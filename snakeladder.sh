#welcome to snake and ladder
echo "----welcome to sanke and ladder---"
echo " lets start the game "
function roll()
{
   randomCheck=$((RANDOM%6 + 1))
   echo "When we throw the die $randomCheck comes"
   ((totalrandomCheck++))
}
function check_options()
{
   option=$(( RANDOM % 3 ))
   case $option in
   $NO_PLAY)
         echo "No Play"
         pos=$pos
         ;;
   $LADDER)
         echo "Ladder"
         pos=$(( $pos + $randomCheck ))
         ;;
   $SNAKE)
         echo "Snake"
         pos=$(( $pos - $randomCheck ))
         ;;
   esac
}

while [ $pos -lt $WIN_POS ]
do
   roll
   check_options
done
