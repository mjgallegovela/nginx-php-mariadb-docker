# runs bower within a container
FROM ubuntu:latest

ENV HOME /root

RUN apt-get update -qq
RUN apt-get install -y -qq git curl wget

# install npm
RUN apt-get install -y -qq npm
# RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm config set registry="http://registry.npmjs.org/"

# install bower

WORKDIR /srv/
RUN npm install --global bower
RUN npm install --global gulp@^3.9.1 gulp-autoprefixer@^3.1.0 gulp-concat@^2.6.1 gulp-install@^0.6.0 gulp-less@^4.0.1 gulp-load-plugins@^1.1.0 gulp-autoprefixer@^3.1.0
RUN npm install --global gulp-minify-css@^1.2.4 gulp-rename@^1.2.2 gulp-sass@^2.3.2 gulp-uglify@^1.5.4 gulp-util merge-stream@^1.0.0 natives@^1.1.6 ordered-merge-stream@^1.0.0
RUN npm link gulp
RUN npm link gulp-autoprefixer
RUN npm link gulp-concat
RUN npm link gulp-install
RUN npm link gulp-less
RUN npm link gulp-load-plugins
RUN npm link gulp-autoprefixer
RUN npm link gulp-minify-css
RUN npm link gulp-rename
RUN npm link gulp-sass
RUN npm link gulp-uglify
RUN npm link gulp-util
RUN npm link merge-stream
RUN npm link natives
RUN npm link ordered-merge-stream
