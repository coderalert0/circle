require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /index" do
    it 'populates @response' do
      response = instance_double(RestClient::Response,
                                 body: {
                                   'response' => { 'data' => { "ID Nation": "01000US", "Nation": "United States" } }
                                 }.to_json)

      allow(RestClient).to receive(:get).and_return(response)

      get '/'

      expect(instance_variable_get(:@response)).to_not be nil
    end
  end
end
