# Statusboard

A simple [Backbone.js][backbone]-based heads-up board.

  [backbone]: http://documentcloud.github.com/backbone/

## Apps

### Clock

Time where you are. Needs localization.

## Instagram

Pulls recent photos for a given tag.

**Usage:**

Register an [API client][instagram]; `export INSTAGRAM_API_KEY=[client id]`

  [instagram]: http://instagr.am/developer/clients/manage/

**Customization:** Change tag in `javascripts/apps/instagram/boot.js.coffee`

### Twitter

Displays the most recent tweets from given Twitter list.

**Customization:** Change list id in `javascripts/apps/twitter/boot.js.coffee`.

### Weather

Current and near-future weather conditions at a given location. Uses
[Dark Sky][darksky] and [Weather Underground][wunderground] data.

  [darksky]: http://darkskyapp.com/
  [wunderground]: http://www.wunderground.com/

**Usage:**

1. Get an [API key for Dark Sky][darkskyapi]; `export DARK_SKY_API_KEY=[key]`.
2. Get an [API key for Weather Underground][wundergroundapi];
   `export WUNDERGROUND_API_KEY=[key]`.

  [darkskyapi]: https://developer.darkskyapp.com/
  [wundergroundapi]: http://www.wunderground.com/weather/api/

**Customization:** Change location in
`javascripts/apps/weather/boot.js.coffee`.

## Contributing

Issues and patches welcome!
