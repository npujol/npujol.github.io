# asynchronous

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/python/python-frameworks/asynchronous)__

## Asynchronous

Asynchronous programming is a type of parallel programming in which a unit of work is allowed to run separately from the primary application thread. When the work is complete, it notifies the main thread about completion or failure of the worker thread.
This style is mostly concerned with the asynchronous execution of tasks. Python has several asynchronous frameworks that are used to implement asynchronous programming.

Visit the following resources to learn more:

- [@article@Top 9 Asynchronous Web Frameworks for Python](https://geekflare.com/python-asynchronous-web-frameworks/)

### gevent

gevent is a Python library that provides a high-level interface to the event loop. It is based on non-blocking IO (libevent/libev) and lightweight greenlets. Non-blocking IO means requests waiting for network IO won’t block other requests; greenlets mean we can continue to write code in synchronous style.

Visit the following resources to learn more:

- [officialgevent — Official Website](http://www.gevent.org/)
- [GitHubGitHub Repository](https://github.com/gevent/gevent)
- [articlegevent For the Working Python Developer](https://sdiehl.github.io/gevent-tutorial/)

### Tornado

Tornado is a scalable, non-blocking web server and web application framework written in Python. It was developed for use by FriendFeed; the company was acquired by Facebook in 2009 and Tornado was open-sourced soon after.

- [articleTornado — Official Website](https://www.tornadoweb.org/)
- [articleA Step-by-Step Tutorial on Python Tornado](https://phrase.com/blog/posts/tornado-web-framework-i18n/)
- [videoTornado Python Framework](https://www.youtube.com/watch?v=-gJ21qzpieA)

### AIOHTTP

aiohttp is a Python 3.5+ library that provides a simple and powerful asynchronous HTTP client and server implementation.

- [articleOfficial Docs](https://docs.aiohttp.org/en/stable/)
- [articleCreating a RESTful API with Python and aiohttp](https://tutorialedge.net/python/create-rest-api-python-aiohttp/)
- [videoPython Asyncio, Requests, Aiohttp | Make faster API Calls](https://www.youtube.com/watch?v=nFn4_nA_yk8)

### Sanic

Sanic is a Python 3.7+ web server and web framework that’s written to go fast. It allows the usage of the async/await syntax added in Python 3.5, which makes your code non-blocking and speedy.

Visit the following resources to learn more:

- [officialSanic Official Website](https://sanic.dev/en/)