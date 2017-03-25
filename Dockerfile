FROM dannyben/alpine-ruby
RUN gem install madness
WORKDIR /docs
EXPOSE 3000
CMD ["madness"]