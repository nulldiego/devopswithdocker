FROM ruby:2.6.0

WORKDIR /web
RUN apt update && apt install -y nodejs
RUN git clone https://github.com/docker-hy/rails-example-project.git
WORKDIR /web/rails-example-project
RUN bundle install
RUN rails db:migrate
CMD rails s