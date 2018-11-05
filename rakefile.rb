require 'rubygems'

task :bundler do
  if File.exist?('Gemfile')
    puts 'Updating gems...'
    system("rm -f Gemfile.lock")
    system('bundle install')
  end

end

task :test do
  Rake::Task['bundler'].invoke

  ruby 'tests/main_page_test.rb'
end