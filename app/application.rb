class Application
    def call(env)
        time = Time.new
        resp = Rack::Response.new
        user = time.hour
        if user >= 12
            resp.write "Good Afternoon"
        else user < 12
            resp.write "Morning"
        end
        resp.finish
    end
end

