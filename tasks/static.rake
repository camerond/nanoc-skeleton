# Ruby most likely has a nicer way of doing this.
def copy(assets)
  target = 'output/' + assets
  mkdir_p target if ! File.exist?(target)
  sh 'cp assets/' + assets + '/* ' + target
end

desc "Copy static assets into output."
task :static do
  copy('css')
  copy('files')
end
