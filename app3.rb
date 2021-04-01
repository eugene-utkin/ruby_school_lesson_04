# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "������� ��� ����� ������? "
y = gets.to_i

print "������� ���� ������� ����� (1-50): "
f = gets.to_i

1.upto(y) do |i|
	x = rand (1..50)
	print "������� �#{i}: "
		if x == f
			print "�� ��������!\n"
		end
		if x != f
			print "���������!\n"
		end
end