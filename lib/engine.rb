class Engine
  attr_accessor :splash_message

  def initialize(controller)
    @ctl = controller
  end

  def repl
    loop do
  	  puts @ctl.current_message
      input = Readline.readline('> ', true)
      break if input == 'exit'
  	  @ctl.evaluate(input)
    end
  end

  def read_line
    Readline.readline('> ', true)
  end

  def start
    puts @splash_message
    repl
  end
end
