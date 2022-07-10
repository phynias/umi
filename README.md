# umi

> Better Crunchyroll


Fork of [remixz/umi](https://github.com/remixz/umi) with some of the prs applied.

Also contains the [source](/umi-chrome-extension) for the chrome extension for running on your own custom url.

Docker image at [phynias/umi](https://hub.docker.com/repository/docker/phynias/umi) (listens on port 8080)

I suggest running behind a proxy like traefik or nginx with an ssl termination.

## Build Setup

``` bash
# install dependencies
npm install

# serve with hot reload at localhost:8080
npm run dev

# build for production with minification
npm run build

# build for production and view the bundle analyzer report
npm run build --report
```

For detailed explanation on how things work, checkout the [guide](http://vuejs-templates.github.io/webpack/) and [docs for vue-loader](http://vuejs.github.io/vue-loader).
