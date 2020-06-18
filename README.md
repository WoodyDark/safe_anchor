# SafeAnchor

## This is experimental, try at your own risk.


SafeAnchor wraps around Rails's default link_to helper and sanitize method to output always output a sanitized anchor tag.

This follows a secure-by-default principle and can be turned off by passing an optional argument `keep_dirty: true` when using the `link_to` helper.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'safe_anchor'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install safe_anchor

## Usage

SafeAnchor is secure-by-default.
```ruby
<%= link_to "Dangerous Anchor", "javascript: alert('Boo!')" %>
# <a>Dangerous Anchor</a>
```

Turning off sanitization.
```ruby
<%= link_to "Dangerous Anchor", "javascript: alert('Boo!')", keep_dirty: true %>
# <a keep_dirty="true" href="javascript: alert('Boo!')">Dangerous Anchor</a>
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/woodydark/safe_anchor.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
