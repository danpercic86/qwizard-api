# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Quizzes API', type: :request do
  describe 'index' do
    subject { get api_v1_quizzes_path }
    
    it 'returns status http 200' do
      subject
      
      expect(response.status).to eq(200)
    end

    it 'returns a list of quizzes' do
      quiz1 = FactoryBot.create(:quiz)
      quiz2 = FactoryBot.create(:quiz)
      
      subject
      
      expected_response = JSON.parse(response.body)
      
      expect(expected_response).to eq([quiz1, quiz2].as_json)
    end
  end
end