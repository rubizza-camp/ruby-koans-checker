FROM ruby:2.4.2

RUN apt-get update -y
RUN apt-get install git curl colordiff -y

RUN git clone https://github.com/edgecase/ruby_koans.git /ruby_koans
WORKDIR /ruby_koans

COPY ./scripts/entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

COPY ./assets/Gemfile /ruby_koans
RUN bundle install

COPY ./assets/.reek.yml /ruby_koans
COPY ./assets/.rubocop.yml /ruby_koans
COPY ./assets/.enabled.yml /ruby_koans

RUN rake gen
RUN mv koans origin-koans

CMD entrypoint.sh
