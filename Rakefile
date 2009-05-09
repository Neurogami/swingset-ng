# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

begin
  require 'bones'
  Bones.setup
rescue LoadError
  begin
    load 'tasks/setup.rb'
  rescue LoadError
    raise RuntimeError, '### please install the "bones" gem ###'
  end
end

ensure_in_path 'lib'
require 'swingset'

task :default => 'spec:run'

PROJ.name = 'swingset'
PROJ.authors = 'James Britt'
PROJ.email = 'james@neurogami.com'
PROJ.url = 'FIXME (project homepage)'
PROJ.version = Neurogami::SwingSet::VERSION
#PROJ.rubyforge.name = 'swingset'

PROJ.spec.opts << '--color'

# EOF
