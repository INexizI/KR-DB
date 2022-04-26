require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe '#index' do
    subject! { get :index }
    it { expect(response).to have_http_status :success }
  end

  describe '#offline' do
    subject! { get :offline }
    it { expect(subject).to be_successful }
    it { expect(response).to have_http_status :success }
    it { expect(subject).to render_template(:offline, layout: []) }
  end
end
