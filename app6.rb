# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "������� A: "
a = gets.to_f

print "������� B: "
b = gets.to_f

print "��� ����� ������? (+ - * /) "
res = gets.strip


if res == "+"
	print "���������: #{a} + #{b} = #{a+b}."
end

if res == "-"
        print "���������: #{a} - #{b} = #{a-b}."
end

if res == "*"
        print "���������: #{a} * #{b} = #{a*b}."
end

if res == "/"
        if b != 0	
	print "���������: #{a} / #{b} = #{a/b}."
	end
	
	if b == 0
	print "�� ���� ������ ������!"
	end
end