FROM ruby:2.3.1
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs npm && \
    apt-get clean
RUN npm install bower && \
    ln -s /usr/bin/nodejs /usr/bin/node
RUN git clone https://github.com/odwrtw/bmpe.git /bmpe
WORKDIR /bmpe
RUN bundle install
ADD run.sh /bmpe/run.sh

EXPOSE 3000
CMD ["/bmpe/run.sh"]
