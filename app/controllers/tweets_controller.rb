class TweetsController < ApplicationController
    
    def index
        @tweets = Tweet.all
    end
    
    def new
    end
    
    def create
        Tweet.create(tweet_permit)
        redirect_to "/tweets"
    end
    
    private
    def tweet_permit
        params.permit(:text)
    end
    
    
end
