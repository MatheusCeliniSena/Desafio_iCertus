require 'rails_helper'

RSpec.describe GitHubApi, type: :service do
    it 'should return repositories' do
        repositories = GitHubApi.new.get_repositories('ruby')
        expect(repositories).to be_a(Faraday::Response)
    end


    it 'should return repository' do
        repository = GitHubApi.new.get_repository('rails', 'rails')
        expect(repository).to be_a(Faraday::Response)
    end
end