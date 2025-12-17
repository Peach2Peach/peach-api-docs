# Install Dependencies
Install the necessary dependencies for rbenv and Ruby.

`sudo apt install -y build-essential libssl-dev libreadline-dev zlib1g-dev libffi-dev libyaml-dev`

# Install rbenv
Clone the rbenv repository from GitHub and add it to your shell.

`git clone https://github.com/rbenv/rbenv.git ~/.rbenv`
`~/.rbenv/bin/rbenv init`

# Install ruby-build
Clone the ruby-build repository into the rbenv plugins directory

`git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build`

# Install Ruby

List all available Ruby versions.

`rbenv install -l`
Install your desired Ruby version, this project support ruby 2.5+ <=3 
`rbenv install 2.7.8` (this install ruby in your system, you can verify installation with `ruby -v`)

# Install Bundler

`gem install bundler`

# Rehash rbenv 

Rehash rbenv to ensure it recognizes the new Ruby installation. (optional, might be useful in WSL in case of error)

`rbenv rehash`

# Docs Installation
`bundle install`

# Run server
`bundle exec middleman server`


# Bundle API docs
`bundle exec middleman build`



# Run with Docker
`docker build -t peach-api-docs .`
`docker run -p 4567:4567 peach-api-docs`

# Build the HTML export with Docker
```bash
docker run --rm -v $(pwd)/build:/app/build api-docs \
  bundle exec middleman build
```

a new `build` folder should appear with the rendered HTML