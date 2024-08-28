# -*- encoding: utf-8 -*-
# stub: stomp 1.4.9 ruby lib

Gem::Specification.new do |s|
  s.name = "stomp".freeze
  s.version = "1.4.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Brian McCallister".freeze, "Marius Mathiesen".freeze, "Thiago Morello".freeze, "Guy M. Allard".freeze]
  s.date = "2019-11-16"
  s.description = "Ruby client for the Stomp messaging protocol.".freeze
  s.email = ["brianm@apache.org".freeze, "marius@stones.com".freeze, "morellon@gmail.com".freeze, "allard.guy.m@gmail.com".freeze]
  s.executables = ["catstomp".freeze, "stompcat".freeze]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "adhoc/.gitignore",
    "adhoc/README.md",
    "adhoc/issue121_01.rb",
    "adhoc/issue121_01_conn.rb",
    "adhoc/issue121_02.rb",
    "adhoc/issue121_03.rb",
    "adhoc/payload_generator.rb",
    "adhoc/payload_generator_adhoctest.rb",
    "adhoc/stomp_adhoc_common.rb",
    "bin/catstomp",
    "bin/stompcat",
    "lib/client/utils.rb",
    "lib/connection/heartbeats.rb",
    "lib/connection/netio.rb",
    "lib/connection/utf8.rb",
    "lib/connection/utils.rb",
    "lib/stomp.rb",
    "lib/stomp/client.rb",
    "lib/stomp/codec.rb",
    "lib/stomp/connection.rb",
    "lib/stomp/constants.rb",
    "lib/stomp/errors.rb",
    "lib/stomp/ext/hash.rb",
    "lib/stomp/message.rb",
    "lib/stomp/null_logger.rb",
    "lib/stomp/slogger.rb",
    "lib/stomp/sslparams.rb",
    "lib/stomp/version.rb"
  ]
  s.homepage = "https://github.com/stompgem/stomp".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Ruby client for the Stomp messaging protocol".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, [">= 2.14.1", "~> 2.14"])
    else
      s.add_dependency(%q<rspec>.freeze, [">= 2.14.1", "~> 2.14"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, [">= 2.14.1", "~> 2.14"])
  end
end
