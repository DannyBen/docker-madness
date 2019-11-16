FROM dannyben/alpine-ruby
RUN gem install madness -v 0.7.4
WORKDIR /docs
EXPOSE 3000
ENTRYPOINT ["madness"]