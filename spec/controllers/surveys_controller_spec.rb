require 'rails_helper'

RSpec.describe SurveysController, type: :controller do
  describe 'GET #new' do
    it 'returns a successful response' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    let(:valid_params) do
      {
        q1: 'Yes',
        q2: 'No',
        q3: 'Yes',
        q4: 'No',
        q5: 'Yes'
      }
    end

    let(:invalid_params) do
      {
        q1: nil,
        q2: nil,
        q3: nil,
        q4: nil,
        q5: nil
      }
    end

    it 'creates a new result and calculates the score' do
      expect {
        post :create, params: valid_params, format: :js
      }.to change(Result, :count).by(1)

      expect(assigns(:score)).to eq(60)
      expect(assigns(:average_score)).to eq(60)
    end

    it 'handles invalid params gracefully' do
      post :create, params: invalid_params, format: :js
      expect(assigns(:score)).to eq(0)
      expect(assigns(:average_score)).to eq(0)
    end
  end
end