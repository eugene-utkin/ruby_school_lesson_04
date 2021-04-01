# encoding: cp1251

if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__

        [STDIN, STDOUT].each do |io|
                io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
end

@a = 1

def get_password
	@a = 2
	print "Type password: " # введите пароль
	gets.chomp
end

xx = get_password

puts "Был введен пароль: #{xx}"

puts "Переменная a = #{@a}"