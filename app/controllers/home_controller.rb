class HomeController < ApplicationController
  include ActionController::Live

  def index
    @messages = Message.all
  end

def create
  response.headers["Content-Type"] = "text/javascript"
  attributes = params.require(:message).permit(:content, :name)
  @message = Message.create!(attributes)
  puts "created #{@message.content}"
  $redis.publish('home.create', @message.to_json)
  puts "published #{@message.to_json}"
end

 def events
response.headers["Content-Type"] = "text/event-stream"
redis = Redis.new
redis.psubscribe('home.*') do |on|
on.pmessage do |pattern, event, data|
response.stream.write("event: #{event}\n")
response.stream.write("data: #{data}\n\n")
end
end
rescue IOError
logger.info "Stream closed"
ensure
redis.quit
response.stream.close
end
end
