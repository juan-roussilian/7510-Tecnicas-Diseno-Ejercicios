require_relative './model/quiler'

entrada = ARGV[0]

if entrada.nil?
  puts 'error: entrada requerida'
  exit 1
end

puts ''
