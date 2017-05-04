FROM alpine:latest

RUN apk --no-cache add ruby ruby-dev ruby-irb ruby-rdoc
RUN gem install rack

RUN mkdir -p /app
COPY . /app/
WORKDIR /app

EXPOSE 4040

CMD ["rackup", "-o", "0.0.0.0", "-p", "4040"]
