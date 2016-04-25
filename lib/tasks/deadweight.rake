begin
  require 'deadweight'
rescue LoadError
  puts 'Installer deadweight'
end

desc 'run Daedweight CSS check (requires script/server)'
task :deadweight do
  id = 'bdce9cccc4ed0b83d8ab3453aadf1540ff5283032fa59064fa61fc1cf72c16ce'
  dw = Deadweight.new
  dw.stylesheets = ["/assets/application.self-#{id}.css"]
  dw.pages = ['/', '/utilisateurs/sign_in', '/utilisateurs/password',
              '/utilisateurs/password/new', '/utilisateurs/password/edit',
              '/utilisateurs/edit', '/utilisateurs/confirmation',
              '/utilisateurs/confirmation/new', '/sites/new', '/sites', '/flux']
  puts dw.run
end
