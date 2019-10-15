require "yaml"

def load_library(file_path)
  data = YAML.load_file(file_path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  data.each do |meaning, emoticons|
    lib_hash["get_meaning"][emoticons[1]] = meaning
    hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  hash
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