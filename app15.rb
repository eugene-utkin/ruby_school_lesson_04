# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end 

def print_attendees
   	puts "Иван"
	puts "Дмитрий"
	puts "Александр"
	puts "Илья"
end

puts "Список моих друзей: "
print_attendees

puts

puts "И еще раз!"
print_attendees