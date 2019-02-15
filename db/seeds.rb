# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#            Character.create(name: 'Luke', movie: movies.first)
message = {
            'welcome_msg' => ', привет!',
            'desc_msg' => 'Эта шкала субъективного счастья измеряет эмоциональное переживание индивидом собственной жизни как целого, отражающее общий уровень психологического благополучия в данный момент.',
            'thanks_msg' => ', спасибо за твой ответ. Теперь ты можешь задать мне любой вопрос в текстовом поле ниже.',
            'warning_msg' => ', спасибо! Но твой ответ уже принят. Ты можешь задать мне любой вопрос в текстовом поле ниже.',
            'bye_msg' => ', до следующего сеанса!',
            'req_msg' => ', оцени следующее утверждение: «В данный момент я счастлив», нажав соответствующую кнопку.'
           }

message.each do |k, v|
  Message.create(name: k, description: v)
end

button = {
          '-3' => {'0_btn' => 'Совершенно не согласен' },
          '-2' => {'0_btn' => 'Не согласен' },
          '-1' => {'0_btn' => 'Немного не согласен' },
          '0' => {'0_btn' => 'Неопределенно (и согласен, и не согласен)' },
          '1' => {'0_btn' => 'Немного согласен' },
          '2' => {'0_btn' => 'Согласен' },
          '3' => {'0_btn' => 'Совершенно согласен' }
        }

button.each do |k, v|
  Button.create(button_value: k, description: v.flatten[1], name: v.flatten[0])
end
