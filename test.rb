require "yaml"

def load_library (file_path)
  emoticons = YAML.load_file(file_path)
  hash_to_return = {:get_meaning => {}, :get_emoticon => {}}
  emoticons.each do |key, value|
    hash_to_return[:get_meaning][value[1]] = key
    hash_to_return[:get_emoticon][value[0]] = value[1]
  end
  hash_to_return
end

path = "lib/emoticons.yml"
emoticons = load_library(path)


  puts "a key que é o ingles é #{key}"
  puts "o value que é o japones é #{value}"
end
  
