# require modules here
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

def get_japanese_emoticon(file_path, emoticon)
  emoticons = load_library(file_path)
  emoticons[:get_emoticon].each do |key, value|
    if key == emoticon
      return value
    end
  end
  return "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  emoticons = load_library(file_path)
  emoticons[:get_meaning].each do |key, value|
    if emoticon == key
      return value
    end
  end
  return "Sorry, that emoticon was not found"
end




