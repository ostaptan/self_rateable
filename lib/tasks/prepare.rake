desc "Creating migration for self_rateable"

task :self_rateable do
  system "rails g model ratings rating:integer rateable_type:string rateable_id:integer rater_id:integer:index"
  system "rm -rf app/models/ratings.rb"
  system "rm -rf test/models/ratings_test.rb"
  system "rm -rf test/fixtures/ratings.yml"
  system "rake db:migrate"
  puts '==  Do not worry I\'ve deleted ratings.rb model and cleaned up test_unit directory =================================================='
end
