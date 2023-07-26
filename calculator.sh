function factorial {
  if (( $1 <= 1 )); then
    echo 1
  else
    echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
  fi
}

function calculate {
  case $2 in
    "+") echo "$(( $1 + $3 ))";;
    "-") echo "$(( $1 - $3 ))";;
    "*") echo "$(( $1 * $3 ))";;
    "/") echo "$(( $1 / $3 ))";;
    "%") echo "$(( $1 % $3 ))";;
  esac
}

echo "Choose an operation:"
echo "+ (addition)"
echo "- (subtraction)"
echo "* (multiplication)"
echo "/ (division)"
echo "% (modulo)"
echo "! (factorial)"

read -r operand

case $operand in
  "+")
    echo "Enter the first number:"
    read -r num1
    echo "Enter the second number:"
    read -r num2
    echo "Result: $(calculate $num1 $operand $num2)"
    ;;
  "-")
    echo "Enter the first number:"
    read -r num1
    echo "Enter the second number:"
    read -r num2
    echo "Result: $(calculate $num1 $operand $num2)"
    ;;
  "*")
    echo "Enter the first number:"
    read -r num1
    echo "Enter the second number:"
    read -r num2
    echo "Result: $(calculate $num1 $operand $num2)"
    ;;
  "/")
    echo "Enter the first number:"
    read -r num1
    echo "Enter the second number:"
    read -r num2
    echo "Result: $(calculate $num1 $operand $num2)"
    ;;
  "%")
    echo "Enter the first number:"
    read -r num1
    echo "Enter the second number:"
    read -r num2
    echo "Result: $(calculate $num1 $operand $num2)"
    ;;
  "!")
    echo "Enter a number:"
    read -r num
    echo "Result: $(factorial $num)"
    ;;
  *)
    echo "Invalid operand selected."
    ;;
esac
