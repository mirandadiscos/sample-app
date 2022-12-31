# frozen_string_literal: true

require 'rspec'

RSpec.describe 'GET /samples', type: :request do
  it 'should return a list of samples' do
    get '/samples'

    expect(last_response).to be_successful
    expect(last_response.content_type).to eq('application/json; charset=utf-8')

    response_body = JSON.parse(last_response.body)

    expect(response_body).to eq([{ 'id' => '1',
                                   'codebar' => '123123123111',
                                   'description' => 'Victor Guedes',
                                   'colected_at' => '2022-12-31 14:37:42.843495682 -0300' },
                                 { 'id' => '2',
                                   'codebar' => '123123123112',
                                   'description' => 'Lari BeibeLov',
                                   'colected_at' => '2022-12-31 15:37:42.843495682 -0300' }])
  end
end
