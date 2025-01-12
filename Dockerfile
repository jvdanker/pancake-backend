FROM ruby:2.5

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update && \
    apt-get install -qq -y build-essential nodejs wait-for-it yarn \
    libpq-dev \
    postgresql-client  \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY env-example .env
COPY Gemfile* ./
RUN bundle install

#COPY package.json yarn.lock ./
#RUN yarn install

COPY . .

COPY bin/* /usr/bin/

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh && chmod 755 /usr/src/app/* && chmod 755 /usr/bin/*

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000
