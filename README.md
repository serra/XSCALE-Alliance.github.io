This is the website for the XSCALE Alliance

The site is deployed to the `master` branch and is hosted on Github pages.

You can make changes on the `source` branch.

[![Actions Status](https://github.com/XSCALE-Alliance/XSCALE-Alliance.github.io/workflows/verify_pull_request/badge.svg)](https://github.com/XSCALE-Alliance/XSCALE-Alliance.github.io/actions)

[![Actions Status](https://github.com/XSCALE-Alliance/XSCALE-Alliance.github.io/workflows/deploy/badge.svg)](https://github.com/XSCALE-Alliance/XSCALE-Alliance.github.io/actions)


## Developing

The site is built using [Middleman], so you need [Ruby] on your system.
Clone the repository and check out the `source` branch. 
From the root of the repository:

```
make setup
make test
```

This will install all the required dependencies and build the site.

To run the site and start developmnent:

```
make server
```

The site will be available at http://localhost:4567.
See [Middleman development cycle] to get started.

## Deploying

To deploy the website manually, from your own computer:

```
make deploy
```

This will build the site, publish the build output to the master branch 
and push the master branch to its tracking branch.

## Contributing

Please share your contributions by sending pull requests against the `source` branch.

Sharing is caring!

## Attributions

[Middleman]

Landed by HTML5 UP
[html5up.net](html5up.net) | @n33co
[Free for personal and commercial use under the CCA 3.0 license](html5up.net/license)

<details>

This is the version ported to middleman:
http://middlemanapp.com/

Landed by HTML5 UP
html5up.net | @n33co
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)


A dark, slick, modern, responsive, adjective-drenched design built around an extremely
dynamic landing page (scroll that mofo!). Inspired by Big Picture, another design
of mine with a similarish feel/flow, only this time I took it waaaaaay further and
actually made it multipurpose (versus copping out and making it a one pager like I
did last time ;) Includes multiple pages, a bunch of pre-styled elements, and all
its Sass sources.

Demo images* courtesy of Unsplash, a radtastic collection of CC0 (public domain) images
you can use for pretty much whatever.

(* = Not included)

Feedback, bug reports, and comments are not only welcome, but strongly encouraged :)

AJ
n33.co @n33co dribbble.com/n33


Credits:

        Adaption to Middleman:
                Robert Riemann (@rriemann_eu, http://blog.riemann.cc/about)

  Demo Images:
    Unsplash (unsplash.com)

  Icons:
    Font Awesome (fortawesome.github.com/Font-Awesome)

  Other:
    jQuery (jquery.com)
    html5shiv.js (@afarkas @jdalton @jon_neal @rem)
    CSS3 Pie (css3pie.com)
    Respond.js (j.mp/respondjs)
    Skel (skel.io)

</details>

---

  [Middleman]: https://middlemanapp.com/
  [Middleman development cycle]: https://middlemanapp.com/basics/development-cycle/
  [Ruby]: https://www.ruby-lang.org/en/documentation/installation/