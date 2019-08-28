while true
  puts 'Escribe una de las siguentes opciones'
  print 'Jugar, Mostrar o Salir'
  choice = gets.chomp.downcase.to_sym
  player = Player.new

  class Cards
    attr_reader :number, :suits
    def initialize
      @number = (1..13).to_a.sample
      @suits = %i[hearts diamonds spades clubs].sample
    end
  end

  class Player
    attr_reader :hand
    def initialize
      play
    end

    def play
      @hand = []
      5.times { @hand << Cards.new }
    end

    def show_hand
      @hand.each do |card|
        puts "#{card.number} de #{card.suits.capitalize}"
      end
    end
  end

  case choice
  when :mostrar
    player.show_hand
  when :salir
    puts '¡Hasta la proxima!'
    exit
  when :jugar
    player.play
  else
    puts ' Selecciona un numeros entre 1 y 3'
  end
end
