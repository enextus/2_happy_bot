message = {
            'welcome_msg' => ', hello!',
            'desc_msg' => "This scale of subjective happiness measures the emotional experience of an individual's own life as a whole, reflecting the general level of psychological well-being at the moment.",
            'thanks_msg' => ', thank you for your answer. Now you can ask me any question in the text box below.',
            'warning_msg' => ', thans! But your answer has already been accepted. You can ask me any question in the text box below.',
            'bye_msg' => ', bye!',
            'req_msg' => ", Rate the following statement: 'I'm happy right now' by clicking the corresponding button."
           }

message.each do |k, v|
  Message.create(name: k, description: v)
end

button = {
          '-3' => {'0_btn' => 'Totally disagree' },
          '-2' => {'0_btn' => 'I do not agree' },
          '-1' => {'0_btn' => 'Slightly disagree' },
          '0' => {'0_btn' => 'Indefinitely (both agree and disagree)' },
          '1' => {'0_btn' => 'I agree a little' },
          '2' => {'0_btn' => 'I agree' },
          '3' => {'0_btn' => 'Totally agree' }
        }

button.each do |k, v|
  Button.create(button_value: k, description: v.flatten[1], name: v.flatten[0])
end
