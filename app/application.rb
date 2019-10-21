# class Application
#
#   def call(env)
#     resp = Rack::Response.new
#
#     num_1 = Kernel.rand(1..11)
#     num_2 = Kernel.rand(12..24)
#
#     resp.write "#{num_1}\n"
#     resp.write "#{"num_2"}\n"
#
#     if num_1
#       resp.write "Good Morning!"
#     else
#       resp.write "Good Afternoon!"
#     end
#
#     resp.finish
#   end
#
# end
class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour.between?(0, 11)
      resp.write "Good Morning!"
    elsif Time.now.hour.between?(12, 17)
      resp.write "Good Afternoon."
    else
      resp.write "Good Evening!"
    end

    resp.finish
  end
end
