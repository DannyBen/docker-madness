FROM dannyben/alpine-ruby
RUN gem install madness -v 1.0.0.rc1
WORKDIR /docs
EXPOSE 3000
ENTRYPOINT ["madness"]