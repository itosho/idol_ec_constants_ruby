require "idol_ec_constants_ruby/version"
require "toml-rb"

module IdolEcConstantsRuby
  def self.get_all
    path = File.join(File.dirname(__FILE__), 'constants', 'constants.toml')
    TomlRB.load_file(path)
  end

  def self.get(key_name)
    path = File.join(File.dirname(__FILE__), 'constants', 'constants.toml')
    constants = TomlRB.load_file(path)
    constants[key_name]
  end
end
