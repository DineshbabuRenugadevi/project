class ApplicationController < ActionController::Base
    def hello
        render html: "hello Dinesh"
    end

end
