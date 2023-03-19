=begin   
Can pass in a string and collect it
Can output the string
Can pass in nothing


=end

class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    return unless block_given?
    # snippit = yield
    record(yield)
  end

  def play
    @recordings.first #ls uses `last`, I like the idea of using pop for only playing something once
  end
end

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
p listener.play # Outputs "Hello World!"