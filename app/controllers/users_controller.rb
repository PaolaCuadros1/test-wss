class UsersController < ApplicationController #Devise::SessionsController
    layout 'login'
    
    def new
        @client = Client.new
        render template: "clients/new"
    end
end