class ApplicationController < ActionController::API

    def get_current_user
        id = decode_token['id'] #we want to get back the value of the ide from the decoded array that we receive from decode_token
        User.find_by(id: id)
    end


    #to access tokens that the user is sending the tokens via the headers
    def token
        request.headers['Authorisation']
    end
    
    #encode data
    def issue_token(data)
        JWT.encode(data, ENV['FEMHUB_SECRET'])
    end

    def decode_token
        begin
            JWT.decode(token, ENV['FEMHUB_SECRET']).first
        rescue 
            {}
        end
    end

    #the begin and rescue methods are known as a "try catch". the try catch is saying: try doing this first thing, if this throws an error, do the rescue, this will prevent everything from crashing. 
end
