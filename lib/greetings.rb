class Welcome
  attr_reader :welcome, :bye, :wrong_command

  def initialize(_welcome = nil, _bye = nil, _wrong_command = nil)
    @welcome = "  Welcome to copito1_bot  /start  \n
        This is a bot that will fill your curiosity about our furry friends \n
        Are you curious about dogs? type or click  /dog  or get a fresh fact with  /dog_fact \n
        Are you curious about cats? type or click  /cat  or get a fresh fact with  /cat_fact \n
        Do you want to see a dog photo from the web? type or click  /dog_photo \n
        Do you want to see a cat photo from the web? type or click  /cat_photo \n
        Do you want to see some local pictures? type or click  /photo \n
        When your curiosity is satisfied type or click   /end"

    @bye = ['✨ bye ✨', '✨ adios ✨', '✨ tchau ✨',
            '✨ adieu ✨', '✨ tschüss ✨']

    @wrong_command = "Sorry I don\'t understand you please type or click /start"
  end
end
