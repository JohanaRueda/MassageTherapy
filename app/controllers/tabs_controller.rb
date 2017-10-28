class TabsController < ApplicationController
    def show
      render template: "tabs/#{params[:tab]}"
    end
end