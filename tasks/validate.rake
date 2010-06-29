desc "Validate HTML/XHTML output via WDG Validator"
task :validate do
  FileList['output/**/*.html'].map do |html|
    sh 'validate -w ' + html
  end
end