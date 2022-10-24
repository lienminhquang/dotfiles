-- comments

name = "Quang"

io.write("size of string ", #name, '\n')


longString = [[
I am a very long String
String that goes on 
forever
]]


-- concatnate string
longString = longString .. name

-- relational operators: > < >= <= == ~=
age  = 13
if age < 16 then
	io.write('you can go to school')
	local localvar = 10
elseif age >= 16 and age < 18 then
	io.write('you can drive')
else 
	io.write('you can vote')
end

-- loigical operators: and or not
