# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "Хотите поиграть? (Y/N) "
a = gets.strip.capitalize

if a == "Y"
	puts "Поиграем!"
elsif a == "N"
	puts "Не хотите играть - не надо!"
else
	puts "Ошибка! Не могу понять ваше желание."
end