# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "Сколько гостей к вам придет? "
n = gets.to_i

if n >= 0
	puts "Отлично, кто-то будет!"
end

if n == 1
	puts "Придёт один человек."
end

if n == 2
	puts "Придут двое."
end

if n >= 3
	puts "Будет много гостей."
end

if n <= - 100
	puts "Это, наверное, какая-то шутка!"
end

if n < 0
	puts "Ошибка!"
	exit
end