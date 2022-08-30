class ApplicationController < ActionController::API
    before_action :set_github_api
    
    def set_github_api
        @GitHubApi ||= GitHubApi.new
    end
end
