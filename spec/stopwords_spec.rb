describe "stopwords files" do
  yaml_files = Dir["stopwords/*.yml"]
  yaml_files.each do |filename|
    yaml_validator filename
  end
end