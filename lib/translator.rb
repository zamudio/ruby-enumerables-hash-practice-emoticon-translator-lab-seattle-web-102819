require "yaml"

def load_library(file)
  lib_data = YAML.load_file(file)
  hash_result = {"get_meaning" => {}, "get_emoticon" => {}}
  lib_data.each do |meaning, emoticons|
    hash_result["get_meaning"][emoticons[1]] = meaning
    hash_result["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  result
end

def get_japanese_emoticon(file, english_emoticon)
  lib_data = load_library(file)
  if lib_data["get_emoticon"].include?(english_emoticon)
    return lib_data["get_emoticon"][english_emoticon]
  else
    return "Sorry, no emoticon for you."
  end
end

def get_english_meaning(file, japanese_emoticon)
  # code goes here
end