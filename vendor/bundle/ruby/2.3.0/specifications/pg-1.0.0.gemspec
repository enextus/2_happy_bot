# -*- encoding: utf-8 -*-
# stub: pg 1.0.0 ruby lib
# stub: ext/extconf.rb

Gem::Specification.new do |s|
  s.name = "pg"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Michael Granger", "Lars Kanis"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIEbDCCAtSgAwIBAgIBATANBgkqhkiG9w0BAQUFADA+MQwwCgYDVQQDDANnZWQx\nGTAXBgoJkiaJk/IsZAEZFglGYWVyaWVNVUQxEzARBgoJkiaJk/IsZAEZFgNvcmcw\nHhcNMTcwOTI3MDAzMDQ0WhcNMTgwOTI3MDAzMDQ0WjA+MQwwCgYDVQQDDANnZWQx\nGTAXBgoJkiaJk/IsZAEZFglGYWVyaWVNVUQxEzARBgoJkiaJk/IsZAEZFgNvcmcw\nggGiMA0GCSqGSIb3DQEBAQUAA4IBjwAwggGKAoIBgQC/JWGRHO+USzR97vXjkFgt\n83qeNf2KHkcvrRTSnR64i6um/ziin0I0oX23H7VYrDJC9A/uoUa5nGRJS5Zw/+wW\nENcvWVZS4iUzi4dsYJGY6yEOsXh2CcF46+QevV8iE+UmbkU75V7Dy1JCaUOyizEt\nTH5UHsOtUU7k9TYARt/TgYZKuaoAMZZd5qyVqhF1vV+7/Qzmp89NGflXf2xYP26a\n4MAX2qqKX/FKXqmFO+AGsbwYTEds1mksBF3fGsFgsQWxftG8GfZQ9+Cyu2+l1eOw\ncZ+lPcg834G9DrqW2zhqUoLr1MTly4pqxYGb7XoDhoR7dd1kFE2a067+DzWC/ADt\n+QkcqWUm5oh1fN0eqr7NsZlVJDulFgdiiYPQiIN7UNsii4Wc9aZqBoGcYfBeQNPZ\nsoo/6za/bWajOKUmDhpqvaiRv9EDpVLzuj53uDoukMMwxCMfgb04+ckQ0t2G7wqc\n/D+K9JW9DDs3Yjgv9k4h7YMhW5gftosd+NkNC/+Y2CkCAwEAAaN1MHMwCQYDVR0T\nBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFHKN/nkRusdqCJEuq3lgB3fJvyTg\nMBwGA1UdEQQVMBOBEWdlZEBGYWVyaWVNVUQub3JnMBwGA1UdEgQVMBOBEWdlZEBG\nYWVyaWVNVUQub3JnMA0GCSqGSIb3DQEBBQUAA4IBgQB/qyi5pCjK8ceoKalfVAjS\nvG64FEnLnD1bm39T5UaFIRmo+abZtfpg2QhwKvPbPjOicau2+m+MDQ2Cc3tgyaC3\ndZxcP6w8APFg4AId09uWAZKf0xajvBMS2aOz8Bbmag6fwqRRkTMqsNYnmqcF7aRT\nDuEzbEMfaOUYjU9RuB48vr4q8yRft0ww+3jq5iwNkrX1buL2pwBbyvgms6D/BV41\nMaTVMjsHqJUwU2xVfhGtxGAWAer5S1HGYHkbio6mGVtiie0uWjmnzi7ppIlMr48a\n7BNTsoZ+/JRk3iQWmmNsyFT7xfqBKye7cH11BX8V8P4MeGB5YWlMI+Myj5DZY3fQ\nst2AGD4rb1l0ia7PfubcBThSIdz61eCb8gRi/RiZZwb3/7+eyEncLJzt2Ob9fGSF\nX0qdrKi+2aZZ0NGuFj9AItBsVmAvkBGIpX4TEKQp5haEbPpmaqO5nIIhV26PXmyT\nOMKv6pWsoS81vw5KAGBmfX8nht/Py90DQrbRvakATGI=\n-----END CERTIFICATE-----\n"]
  s.date = "2018-01-10"
  s.description = "Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/].\n\nIt works with {PostgreSQL 9.2 and later}[http://www.postgresql.org/support/versioning/].\n\nA small example usage:\n\n  #!/usr/bin/env ruby\n\n  require 'pg'\n\n  # Output a table of current connections to the DB\n  conn = PG.connect( dbname: 'sales' )\n  conn.exec( \"SELECT * FROM pg_stat_activity\" ) do |result|\n    puts \"     PID | User             | Query\"\n    result.each do |row|\n      puts \" %7d | %-16s | %s \" %\n        row.values_at('procpid', 'usename', 'current_query')\n    end\n  end"
  s.email = ["ged@FaerieMUD.org", "lars@greiz-reinsdorf.de"]
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["Contributors.rdoc", "History.rdoc", "Manifest.txt", "README-OS_X.rdoc", "README-Windows.rdoc", "README.ja.rdoc", "README.rdoc", "ext/errorcodes.txt", "POSTGRES", "LICENSE", "ext/gvl_wrappers.c", "ext/pg.c", "ext/pg_binary_decoder.c", "ext/pg_binary_encoder.c", "ext/pg_coder.c", "ext/pg_connection.c", "ext/pg_copy_coder.c", "ext/pg_errors.c", "ext/pg_result.c", "ext/pg_text_decoder.c", "ext/pg_text_encoder.c", "ext/pg_type_map.c", "ext/pg_type_map_all_strings.c", "ext/pg_type_map_by_class.c", "ext/pg_type_map_by_column.c", "ext/pg_type_map_by_mri_type.c", "ext/pg_type_map_by_oid.c", "ext/pg_type_map_in_ruby.c", "ext/util.c"]
  s.files = ["Contributors.rdoc", "History.rdoc", "LICENSE", "Manifest.txt", "POSTGRES", "README-OS_X.rdoc", "README-Windows.rdoc", "README.ja.rdoc", "README.rdoc", "ext/errorcodes.txt", "ext/extconf.rb", "ext/gvl_wrappers.c", "ext/pg.c", "ext/pg_binary_decoder.c", "ext/pg_binary_encoder.c", "ext/pg_coder.c", "ext/pg_connection.c", "ext/pg_copy_coder.c", "ext/pg_errors.c", "ext/pg_result.c", "ext/pg_text_decoder.c", "ext/pg_text_encoder.c", "ext/pg_type_map.c", "ext/pg_type_map_all_strings.c", "ext/pg_type_map_by_class.c", "ext/pg_type_map_by_column.c", "ext/pg_type_map_by_mri_type.c", "ext/pg_type_map_by_oid.c", "ext/pg_type_map_in_ruby.c", "ext/util.c"]
  s.homepage = "https://bitbucket.org/ged/ruby-pg"
  s.licenses = ["BSD-3-Clause"]
  s.rdoc_options = ["--main", "README.rdoc"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.5.1"
  s.summary = "Pg is the Ruby interface to the {PostgreSQL RDBMS}[http://www.postgresql.org/]"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe-mercurial>, ["~> 1.4"])
      s.add_development_dependency(%q<hoe-deveiate>, ["~> 0.9"])
      s.add_development_dependency(%q<hoe-highline>, ["~> 0.2"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_development_dependency(%q<rake-compiler-dock>, [">= 0.6.2", "~> 0.6"])
      s.add_development_dependency(%q<hoe-bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.5"])
      s.add_development_dependency(%q<rdoc>, ["~> 5.1"])
      s.add_development_dependency(%q<hoe>, ["~> 3.16"])
    else
      s.add_dependency(%q<hoe-mercurial>, ["~> 1.4"])
      s.add_dependency(%q<hoe-deveiate>, ["~> 0.9"])
      s.add_dependency(%q<hoe-highline>, ["~> 0.2"])
      s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
      s.add_dependency(%q<rake-compiler-dock>, [">= 0.6.2", "~> 0.6"])
      s.add_dependency(%q<hoe-bundler>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 3.5"])
      s.add_dependency(%q<rdoc>, ["~> 5.1"])
      s.add_dependency(%q<hoe>, ["~> 3.16"])
    end
  else
    s.add_dependency(%q<hoe-mercurial>, ["~> 1.4"])
    s.add_dependency(%q<hoe-deveiate>, ["~> 0.9"])
    s.add_dependency(%q<hoe-highline>, ["~> 0.2"])
    s.add_dependency(%q<rake-compiler>, ["~> 1.0"])
    s.add_dependency(%q<rake-compiler-dock>, [">= 0.6.2", "~> 0.6"])
    s.add_dependency(%q<hoe-bundler>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 3.5"])
    s.add_dependency(%q<rdoc>, ["~> 5.1"])
    s.add_dependency(%q<hoe>, ["~> 3.16"])
  end
end
