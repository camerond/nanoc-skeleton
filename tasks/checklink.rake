desc "Check links via W3C Link Validator (slow)."
task :checklink do

    path = 'output/**/*.html'

  FileList[path].map do |html|
    puts 'Checking: ' + html
    system 'checklink -q -b -s --hide-same-realm ' + html
  end
end