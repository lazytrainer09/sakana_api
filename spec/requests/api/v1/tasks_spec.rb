require 'rails_helper'

RSpec.describe 'Api::V1::Tasks', type: :request do
  describe 'GET /index' do
    let!(:task1) { create(:task) }
    let!(:task2) { create(:task) }
    
    before { get '/api/v1/tasks' }
    
    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end
    
    it 'returns all tasks' do
      json = JSON.parse(response.body)
      expect(Task.count).to eq(json.count)
    end
  end
end
