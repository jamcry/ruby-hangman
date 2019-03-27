require 'yaml'

loaded_array = ""
if File.exists?("test.yml")
    loaded_array = YAML.load_file("test.yml")
    puts "loaded"
end

p loaded_array