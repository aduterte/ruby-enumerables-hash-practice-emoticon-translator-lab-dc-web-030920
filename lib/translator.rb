# require modules here
require "yaml"

<<<<<<< HEAD
def load_library(file)
  # code goes here
  result = {:get_meaning => {}, :get_emoticon =>{}}
  emoticons = YAML.load_file(file)
  emoticons.each do |key, value|
    result[:get_meaning][value[1]] = key
    result[:get_emoticon][value[0]] = emoticons[key][1]
  end

=======
def load_library(emoticons)
  # code goes here
  result = {}
  library = YAML.load_file(emoticons)
  library.each do |key, value|
    result[:get_meaning][value[1]] = key
    result[:get_emoticon][value[0]] = value
  end
  puts result
>>>>>>> 6c9c2e45f0a892941cfc47ef8bfb9aa7878e2ef6
  result
end

def get_japanese_emoticon(file, japanese_emoticon)
  # code goes here
  lib = load_library(file)[:get_emoticon][japanese_emoticon]
  if !lib
    return "Sorry, that emoticon was not found"
  end
  lib
end

def get_english_meaning(file, english_emoticon)
  lib = load_library(file)[:get_meaning][english_emoticon]
  if !lib
    return "Sorry, that emoticon was not found"
  end
  lib
  # code goes here
end
