---
title: "About"
permalink: "/about/"
layout: page
---

Friendly is a theme for my personal website at https://www.chrisfnicholson.com. It's kept separate from the actual website code so that the main repository can focus entirely on content updates. It also makes re-using the code a lot easier because this repo is designed to be forked.

This theme is a fork of [Contrast](https://github.com/niklasbuschmann/contrast), by Niklas Buschmann. I'm very grateful to him for the wonderful codebase that formed the foundation of this site.

## Installation

Just fork this [repository](https://github.com/niklasbuschmann/contrast) and adjust the `_config.yml` to use with [Github Pages](https://pages.github.com/) and your page is done.

## Features

- supports dark mode on macOS Mojave
- optional sidebar
- MathJax support
- no external ressources
- included archive page
- supports pagination
- feed generation
- responsive
- syntax highlighting
- supports comments via [disqus](https://disqus.com/) or [isso](http://posativ.org/isso/)

## Based on


- [Contrast](https://github.com/niklasbuschmann/contrast)
- [Shane Starcher's recipe page](https://www.github.com/sstarcher/sstarcher.github.io)
- [Hyde](https://github.com/poole/hyde)
- [Minima](https://github.com/jekyll/minima)
- [Lagrange](https://github.com/LeNPaul/Lagrange)
- [Font Awesome](http://fontawesome.io/)
- [Pygments](https://github.com/richleland/pygments-css)

## Installation (jekyll-remote-theme method)

You can use this theme with the `jekyll-remote-theme` plugin. Just create an empty repo, copy over the `index.html` file and add this to your `_config.yml`:

```yaml
remote_theme: datapolitical/friendly@v3.0.30

plugins:
  - jekyll-remote-theme
```

The recipes, drinks, crosswords, and health modules are all optional and require additional information in the _data folder to function properly.

## Config

Your `_config.yml` could for example look like this:

```yaml
title: "Blog Title"
author: "Blog Author"
description: "My personal blog about ... something"
permalink: /:title/
lang: "en"
excerpt_separator: "\n\n\n"
date_format: "%B %d, %Y"


# Menu

navigation: # accepts {file, title, url, icon, sidebaricon}
  - { file: "index.html" }
  - { file: "README.md" }

external: # shows a footer with social links - for available icons see fontawesome.com/icons
  - {
      title: Mail,
      icon: envelope,
      url: "mailto:niklasbuschmann@users.noreply.github.com",
    }
  - {
      title: Github,
      icon: github,
      url: "https://github.com/niklasbuschmann/contrast",
    }
  - { title: Subscribe, icon: rss, url: "/feed.xml" }

comments:
#  disqus_shortname: ""    # see https://disqus.com/
#  isso_domain: ""         # see https://posativ.org/isso/

plugins:
  - jekyll-feed
```

## License

[public domain](http://unlicense.org/)

## Screenshots - contrast

![screenshot](https://user-images.githubusercontent.com/4943215/109431850-cd711780-7a08-11eb-8601-2763f2ee6bb4.png)

![screenshot](https://user-images.githubusercontent.com/4943215/109431832-b6cac080-7a08-11eb-9c5e-a058680c23a1.png)

![screenshot](https://user-images.githubusercontent.com/4943215/73125194-5f0b8b80-3fa4-11ea-805c-8387187503ad.png)
