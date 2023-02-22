FROM dannyben/alpine-ruby
RUN gem install madness -v 1.1.0
WORKDIR /docs
EXPOSE 3000
ENTRYPOINT ["madness"]