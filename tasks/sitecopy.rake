desc "Initialise sitecopy."
task :init do
  system 'sitecopy -r sitecopy/sitecopyrc -p sitecopy -i remerson.plus.com'
end

desc "Upload to Web via sitecopy."
task :upload do
  system 'sitecopy -q -r sitecopy/sitecopyrc -p sitecopy -u remerson.plus.com'
end