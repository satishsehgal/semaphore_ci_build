require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  include Devise::TestHelpers

  # describe "get all posts route", :type => :request do
  #   let!(:posts) {FactoryGirl.create_list(:post, 20)}
  #   before {get '/posts.json'}
  #   it 'returns all posts' do
  #     expect(JSON.parse(response.body).size).to eq(20)
  #   end
  #   it 'returns status code 200' do
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe 'GET #index' do
    it 'should get all posts' do
      get :index
      expect(response).to render_template(:index)
    end
  end
end
