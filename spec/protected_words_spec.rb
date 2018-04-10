describe 'protected words files' do
  yaml_files = Dir['protected_words/*.yml']
  yaml_files.each do |filename|
    yaml_validator filename
  end
end