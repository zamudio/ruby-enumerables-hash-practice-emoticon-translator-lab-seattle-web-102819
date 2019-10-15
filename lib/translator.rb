require "yaml"

def load_library(file_path)
  lib_data = YAML.load_file(file_path)
  lib_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  lib_data.each do |meaning, emoticons|
    lib_hash["get_meaning"][emoticons[1]] = meaning
    lib_hash["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  lib_hash
end

def get_japanese_emoticon(file_path, english_emoticon)
  lib_data = load_library(file_path)
  if lib_data["get_emoticon"].include?(english_emoticon)
    lib_data["get_emoticon"][english_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, japanese_emoticon)
  lib_data = load_library(file_path)
  if lib_data["get_meaning"].include?(japanese_emoticon)
    lib_data["get_meaning"][japanese_emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end