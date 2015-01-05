#
# Node.js w/ Protractor, Karma, ESLint, JSCS, PhantomJS, WebDriver & Gulp Dockerfile
#
# https://github.com/gnomeontherun/docker-angular-test
#

# Pull base image.
FROM dockerfile/nodejs

# Install Linux Packages
RUN apt-get update
RUN apt-get install -y libfontconfig default-jre

# Install Node Dependencies Gulp
RUN npm install -g protractor karma-cli eslint jscs phantomjs gulp
RUN webdriver-manager update

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]
