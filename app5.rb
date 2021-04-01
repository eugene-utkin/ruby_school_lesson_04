# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

print "Сколько вам лет? "
x = gets.to_i

print "Хотите играть? (Y/N) "
y = gets.strip.capitalize

if x >= 18 && y == "Y"
	print "Хорошо, поиграем! "

	money = 100	

	print "Нажмите Enter, чтобы дернуть ручку!"
	gets

	x = rand (0..9)
	y = rand (0..9)
	z = rand (0..9)

		if x == y && x == z
					if x == 0 && y == 0 && z == 0
							puts "Комбинация: #{x}#{y}#{z}. Вы разорены!"
							money = 0
							exit
   					end

					if x == 1 && y == 1 && z == 1
							puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 10 долларов!"
							money = money + 10
					end

					if x == 2 && y == 2 && z == 2
        					puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 20 долларов!"
							money = money + 20
					end
 
					if x == 3 && y == 3 && z == 3
        					puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 30 долларов!"
							money = money + 30
					end

					if x == 4 && y == 4 && z == 4
        					puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 40 долларов!"
							money = money + 40
					end
			
					if x == 5 && y == 5 && z == 5
        					puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 50 долларов!"
							money = money + 50
					end
                
					if x == 6 && y == 6 && z == 6
                        	puts "Комбинация: #{x}#{y}#{z}. Вы потеряли половину денег!"
                        	money = money/2
                	end

                	if x == 7 && y == 7 && z == 7
                        	puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 70 долларов!"
                        	money = money + 70
                	end

                	if x == 8 && y == 8 && z == 8
                        	puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 80 долларов!"
                        	money = money + 80
                	end

                	if x == 9 && y == 9 && z == 9
                        	puts "Комбинация: #{x}#{y}#{z}. Вам зачислено 90 долларов!"
                        	money = money + 90
                	end
		elsif x == 1 && y == 2 && z == 3
                	puts "Выигрышная комбинация: #{x}#{y}#{z}. Вам зачислено 123 доллара!"
                        money = money + 123
		elsif x == 3 && y == 6 && z == 9
        		puts "Джекпот: #{x}#{y}#{z}. Вам зачислено 1500 долларов! Казино закрывается."
        		money = money + 1500
        		puts "Осталось денег: #{money} долларов."
        		exit
        else
			puts "Неудача: #{x}#{y}#{z}. Вы ничего не выиграли".
		end	

	puts "Вы закончили игру. В вашем кошельке #{money} долларов!"
end
