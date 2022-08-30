class GitHubApi
    def header
        {
            'Content-type': 'application/json',
            'Authorization': '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'
        }
    end
    

    def get_repositories(search)
        
        if search == "ruby" || search == "java" || search == "python" || search == "javascript" || search == "sql"
            return false
        else
            api = Faraday.get('https://api.github.com/search/repositories') do |requisição|
                requisição.headers = header
                requisição.params = {q:search, sort:'starts', order:'desc'}
            end
        end
    end
    

    def get_repository(owner, repository)
        api = Faraday.get("https://api.github.com/repos/#{owner}/#{repository}") do |req|
        req.headers = header
      end
    end
    
end
