require 'yaml'
my_array = []
3.times do
    my_array << gets.chomp
end
puts my_array
unless File.exists?("test.yml")
    File.new("test.yml", "w+")
end

File.open("test.yml", "r+") do |f|
    f.write(my_array.to_yaml)
end