class HomeController < ApplicationController 

    def index
        @events = Event.all
    end 
    
    def account
    end

    def login
    end

    def signup
    end 
    
end 