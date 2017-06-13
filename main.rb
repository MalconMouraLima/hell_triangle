require_relative 'array'
require_relative 'triangle'

class App
  def self.run
    init_message
    array_mult = gets.chomp
    array = ArrayConvert.from_array_string(array_mult)
    max_total = Triangle.new(array).top
    result max_total
  end

  def self.init_message
    puts "Insira o array multidimensional:"
  end

  def self.result (max_total)
    puts "O total do triangulo é: #{max_total}"
  end
end

  App.run
