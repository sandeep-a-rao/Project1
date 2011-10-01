
 namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do

	  50.times do
	    User.all(:limit => 6).each do |user|
	      user.microposts.create!(:content => Faker::Lorem.sentence(5))
	    end
	  end
  end
end