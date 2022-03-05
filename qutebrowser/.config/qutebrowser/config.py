# qutebrowser config

# Do not load autoconf.
config.load_autoconfig(False)

# Which cookies to accept.
# Type: String
config.set('content.cookies.accept', 'no-3rdparty', 'chrome-devtools://*')
config.set('content.cookies.accept', 'no-3rdparty', 'devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'chrome-devtools://*')

# Load images automatically in web pages.
# Type: Bool
config.set('content.images', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome-devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'devtools://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Search engines to use.
# Type: Formatstring
config.set('url.searchengines', {"DEFAULT": 
    "https://www.startpage.com/do/search?query={}",
    "archwiki": "https://wiki.archlinux.org/index.php?search={}", "wikipedia": 
    "https://en.wikipedia.org/w/index.php?search={}"})

# Startpage.
# Type: String
config.set("url.start_pages", "https://startpage.com")

# Default zoom.
# Type: String
config.set("zoom.default", "200%")

# Default font size.
# Type: String
config.set("fonts.default_size", "32px")

# Default download location.
# Type: String
config.set("downloads.location.directory", "$HOME/downloads")

# Bindings
config.bind("D", ":close")
