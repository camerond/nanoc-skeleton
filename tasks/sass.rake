desc "Generate CSS files from Sass templates."
task :sass do
  sh 'rm -r output/css'
  sh 'mkdir output/css'
  FileList['assets/sass/*.sass'].map do |sass|
    css = 'output/css/' + File.basename(sass, '.sass') + '.css'
      command = 'sass -t compressed ' + sass + ' ' + css
      sh command
  end
end