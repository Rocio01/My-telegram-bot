class Welcome
  attr_reader :welcome, :bye

  def initialize(_welcome = nil, _bye = nil)
    @welcome = "  Welcome to copito1_bot, \n
        This is a bot that will fill your curiosity about our furry friends \n
        Are you curious about dogs? type or click  /dog \n
        Are you curious about cats? type or click  /cat  \n
        When your curiosity is satisfied type or click   /end"

    @bye = ['✨ bye ✨', '✨ adios ✨', '✨ tchau ✨',
            '✨ adieu ✨', '✨ tschüss ✨']
  end
end
