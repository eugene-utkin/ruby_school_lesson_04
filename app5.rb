# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "������� ��� ���? "
x = gets.to_i

print "������ ������? (Y/N) "
y = gets.strip.capitalize

if x >= 18 && y == "Y"
	print "������, ��������! "

	money = 100	

	print "������� Enter, ����� ������� �����!"
	gets

	x = rand (0..9)
	y = rand (0..9)
	z = rand (0..9)

		if x == y && x == z
					if x == 0 && y == 0 && z == 0
							puts "����������: #{x}#{y}#{z}. �� ��������!"
							money = 0
							exit
   					end

					if x == 1 && y == 1 && z == 1
							puts "����������: #{x}#{y}#{z}. ��� ��������� 10 ��������!"
							money = money + 10
					end

					if x == 2 && y == 2 && z == 2
        					puts "����������: #{x}#{y}#{z}. ��� ��������� 20 ��������!"
							money = money + 20
					end
 
					if x == 3 && y == 3 && z == 3
        					puts "����������: #{x}#{y}#{z}. ��� ��������� 30 ��������!"
							money = money + 30
					end

					if x == 4 && y == 4 && z == 4
        					puts "����������: #{x}#{y}#{z}. ��� ��������� 40 ��������!"
							money = money + 40
					end
			
					if x == 5 && y == 5 && z == 5
        					puts "����������: #{x}#{y}#{z}. ��� ��������� 50 ��������!"
							money = money + 50
					end
                
					if x == 6 && y == 6 && z == 6
                        	puts "����������: #{x}#{y}#{z}. �� �������� �������� �����!"
                        	money = money/2
                	end

                	if x == 7 && y == 7 && z == 7
                        	puts "����������: #{x}#{y}#{z}. ��� ��������� 70 ��������!"
                        	money = money + 70
                	end

                	if x == 8 && y == 8 && z == 8
                        	puts "����������: #{x}#{y}#{z}. ��� ��������� 80 ��������!"
                        	money = money + 80
                	end

                	if x == 9 && y == 9 && z == 9
                        	puts "����������: #{x}#{y}#{z}. ��� ��������� 90 ��������!"
                        	money = money + 90
                	end
		elsif x == 1 && y == 2 && z == 3
                	puts "���������� ����������: #{x}#{y}#{z}. ��� ��������� 123 �������!"
                        money = money + 123
		elsif x == 3 && y == 6 && z == 9
        		puts "�������: #{x}#{y}#{z}. ��� ��������� 1500 ��������! ������ �����������."
        		money = money + 1500
        		puts "�������� �����: #{money} ��������."
        		exit
        else
			puts "�������: #{x}#{y}#{z}. �� ������ �� ��������".
		end	

	puts "�� ��������� ����. � ����� �������� #{money} ��������!"
end
