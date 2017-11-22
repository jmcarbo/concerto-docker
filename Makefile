build:
	docker build -t concerto .

run:
	docker run -ti -p 3000:3000 concerto bash -c 'bundle exec rake db:migrate; bundle exec rake db:seed; bundle exec rails s -b 0.0.0.0'
