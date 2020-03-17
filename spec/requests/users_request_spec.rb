require 'rails_helper'
require 'pp'


RSpec.describe "Users", type: :request do

  # let(:user) { create(:user) }
  let(:user) { create(:user_with_orders, orders_count: 10) }

  describe "GET /index" do
    it "returns http success" do
      # get "/users/index"
      # expect(response).to have_http_status(:success)

      puts "------------------------"
      puts ""
      puts ""
      
      puts JSON.pretty_generate user.to_json(include: :orders)
      # pp user.to_json(include: :orders)
    end
  end

  # describe "GET /new" do
  #   it "returns http success" do
  #     get "/users/new"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /create" do
  #   it "returns http success" do
  #     get "/users/create"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /show" do
  #   it "returns http success" do
  #     get "/users/show"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /edit" do
  #   it "returns http success" do
  #     get "/users/edit"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /update" do
  #   it "returns http success" do
  #     get "/users/update"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET /destroy" do
  #   it "returns http success" do
  #     get "/users/destroy"
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
