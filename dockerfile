FROM octohost/jekyll-nginx

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

WORKDIR /srv/www

# Copy Jekyll project files:
COPY . /srv/www/

RUN gem install bundler
RUN bundle update jekyll
RUN jekyll build --trace

EXPOSE 80

CMD nginx

