FROM php:8.0-cli

# update apt-get list
RUN apt-get update

# install tools with apt-get
RUN apt-get install -y \
    libzip-dev
# install php externals
RUN docker-php-ext-install zip

# copy composer from composer image
COPY --from=composer /usr/bin/composer /usr/bin/composer
# copy node&npm from node:14-slim image
COPY --from=node:14-slim /usr/local/bin/node /usr/local/bin/node
COPY --from=node:14-slim /usr/local/lib/node_modules /usr/local/lib/node_modules
RUN ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm && \
    ln -s /usr/local/lib/node_modules/npm/bin/npx-cli.js /usr/local/bin/npx

RUN mkdir /projects
WORKDIR /projects
