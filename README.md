Someone asked yesterday about why Rails doesn't need to have any require statements to require gems into files.

This is the reason.

Take a look at the `config/application.rb` file. This file runs when your server starts up.

On line 7 of the code there is this:

```rb
Bundler.require(*Rails.groups)
```

Ignore the `(*Rails.groups)` syntax but essentially what `Bundler.require` does is it requires all of your gems listed in the Gemfile.

I made a little terminal app to test this out in this repo. I have a Gemfile with colorize and faker. I then have an entry point file where I `require 'bundler'` and do the `Bundler.require` thing. I then require the `hello_world.rb` file and call a method in that file which is using the colorize and faker gems.