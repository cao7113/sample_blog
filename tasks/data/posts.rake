namespace :data do
  desc "init some posts data"
  task :init_posts=>:environment do
    20.times do |i|
      Post.create(title: "Hi title#{i}", body: "Sample body #{i}")
    end
  end
end
