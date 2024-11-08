# Проверяем, переданы ли аргументы
if [ $# -eq 0 ]; then
  echo "No arguments provided. Please provide numbers as arguments."
  exit 1
fi

# Инициализация переменных
sum=0
count=$#

# Проходим по всем аргументам
for num in "$@"
do
  sum=$(echo "$sum + $num" | bc)  # Суммируем аргументы
done

# Вычисление среднего арифметического
average=$(echo "scale=2; $sum / $count" | bc)

# Вывод результата
echo "Number of arguments: $count"
echo "Sum: $sum"
echo "Average: $average"
