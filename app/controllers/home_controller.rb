class HomeController < ApplicationController
  def index
    response = RestClient.get "#{HOSTNAME}/api/data?drilldowns=Nation&measures=Population",
                               { :Authorization => ENV['API_KEY'] }#,
                                # :params => {:foo => 'bar', :baz => 'qux'}}

    @response = JSON.parse(response.body)
  end

  def create
    response = RestClient.post 'https://reqres.in/api/users',
                    { name: 'morpheus', job: 'leader' },
                    { :Authorization => ENV['API_KEY'] }

    @response = JSON.parse(response.body)
  end
end