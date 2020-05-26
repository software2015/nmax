# Nmax

This is gem for getting numbers from standart input stream.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nmax'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install nmax

## Usage

### On console

Input format:
	(string) | nmax (max amount of numbers)

### In code
Add nmax module:

	require 'nmax'

Use class for getting numbers

	Nmax::FilterNumbers.filter(stdin_stream, max_array_size)

