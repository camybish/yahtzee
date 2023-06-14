require './app'
require 'rack/test'

describe Application do
    # This is so we can use rack-test helper methods.
    include Rack::Test::Methods
  
    # We need to declare the `app` value by instantiating the Application
    # class so our tests work.
    let(:app) { Application.new }
  
    context "GET to /" do
        it 'contains a h1 title' do
            response = get('/')
    
            expect(response.body).to include('<h1>Hello</h1>')
        end
    end
end