require 'rails_helper'

RSpec.describe 'Api::V1::Tasks', type: :request do
  describe 'GET /index' do
    before do
      create_list(:task, 10)
      get '/api/v1/tasks'
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'returns all tasks' do
      json = JSON.parse(response.body)
      expect(Task.count).to eq(json.count)
    end
  end
end
