# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "Введите A: "
a = gets.to_f

print "Введите B: "
b = gets.to_f

print "Что будем делать? (+ - * /) "
res = gets.strip


if res == "+"
	print "Результат: #{a} + #{b} = #{a+b}."
end

if res == "-"
        print "Результат: #{a} - #{b} = #{a-b}."
end

if res == "*"
        print "Результат: #{a} * #{b} = #{a*b}."
end

if res == "/"
        if b != 0	
	print "Результат: #{a} / #{b} = #{a/b}."
	end
	
	if b == 0
	print "На ноль делить нельзя!"
	end
end