# frozen_string_literal: true

RSpec.describe 'Root', type: :request do
  it 'should see the message from hanami' do
     get '/'

     expect(last_response).to be_successful
     expect(last_response.body).to eq('Hello from Hanami')
  end
end
