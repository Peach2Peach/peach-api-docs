# Use an official Ruby image
FROM ruby:2.7.8

# Install OS dependencies commonly needed by Ruby gems
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install bundler (match your project if needed)
RUN gem install bundler -v 2.4.22

# Copy Gemfiles first for better Docker layer caching
COPY Gemfile Gemfile.lock ./

# Install Ruby dependencies
RUN bundle install

# Copy the rest of the project
COPY . .

# Expose Middleman default port
EXPOSE 4567

# Default command: run Middleman server
CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling"]
