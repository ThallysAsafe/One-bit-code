# Lambdas são similares aos blocks, mas podem ser salvas em variáveis para serem reutilizadas
first_lambda = lambda {puts "my first lambda"}
first_lambda.call # o comando .call usando para chamar tanto block qnt lambda
# Ou pode ser feito assim
first_lambda = -> {puts "my first lambda"} # utilizando '->'
first_lambda.call

# Recebendo parametros para sua execução

first_lambda = -> (names) { names.each { |name |puts name}}

names = ["joão", "maria", "pedro"]

first_lambda.call(names)

# outro

my_lambda = lambda do |numbers|
  index = 0
  puts 'Número atual + Próximo número'
  numbers.each do |number|
    return if numbers[index] == numbers.last
    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
    index += 1
  end
end

numbers = [1, 2, 3, 4]

my_lambda.call(numbers)
