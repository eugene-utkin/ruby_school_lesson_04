# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "������� ������ � ��� ������? "
n = gets.to_i

if n >= 0
	puts "�������, ���-�� �����!"
end

if n == 1
	puts "����� ���� �������."
end

if n == 2
	puts "������ ����."
end

if n >= 3
	puts "����� ����� ������."
end

if n <= - 100
	puts "���, ��������, �����-�� �����!"
end

if n < 0
	puts "������!"
	exit
end