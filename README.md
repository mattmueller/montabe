# montabe

Ruby wrapper for the [montabe API](http://montabe.com).

NOTE: both the API and this gem are currently in a complete alpha state.  Stuff will change....and break.

## Installation

    gem install montabe
    
## Usage

### Instantiate a client

    client = Montabe::Client.new
    
Then call your method.

## Available Methods

    client.gallery(GALLERY_NAME) 
    

## Contributing to montabe

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Matt Mueller. See LICENSE.txt for further details.
