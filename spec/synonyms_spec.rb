describe "synonyms files" do
  yaml_files = Dir["synonyms/*.yml"]
  yaml_files.each do |filename|
    yaml_validator filename
  end
end