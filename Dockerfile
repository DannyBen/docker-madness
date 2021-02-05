FROM dannyben/alpine-ruby
RUN gem install madness -v 0.9.3
WORKDIR /docs
EXPOSE 3000
ENTRYPOINT ["madness"]