def yaml_validator(filename)
  it 'contains valid YAML' do
    YAML.load_file filename
  end
end