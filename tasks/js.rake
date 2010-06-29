desc "Move JS files to output on compile."
task :js do
  sh 'rm -r output/javascript/'
  sh 'mkdir output/javascript/'
  FileList['assets/javascript/*.js'].map do |js|
    command = 'cp ' + js + ' ' + 'output/javascript/' + File.basename(js, '.js') + '.js'
    sh command
  end
end
