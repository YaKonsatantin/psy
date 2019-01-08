require_relative "lib/psyho_test"
require_relative "lib/answer_print"
user_input = ARGV[0]
sum = 0

if !user_input
  puts "Добрый день Аноним!"
else
  puts "Добрый день #{user_input1}!"
end

puts "Оценка ответов: «да» – 3 , «иногда» – 2, «нет» – 1."
puts "Ваш уровень общительности. Тест поможет определить ваш уровень " \
  "коммуникабельности. Версия 0.2. (c) goodprogrammer.ru\n\n"

# Создаем объекты, обратите внимание, что конструкторам не нужно никаких
# параметров, т.к. всю информацию мы «захардкодили» в классы. Иногда это удобно.
test = PsyhoTest.new
result = AnswerPrint.new

# Основной цикл программы. Конструкция until работает также, как и while, только
# пока условие НЕ выполнено.
until test.finished?
  # Пока тест не закончился, задаем пользователю следующий вопрос методом
  # next_question нашего экземпляра класса Test.
  test.next_question
end
result.print_result(test.psyho_score)
# Вводим результаты теста методом print_result у объекта класса ResultPrinter
