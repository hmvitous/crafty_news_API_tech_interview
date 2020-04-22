RSpec.describe 'POST /articles ', type: :request do
  describe 'Authenticated user comments on an article' do
    before do
      post '/api/articles'
    end

    it 'comments successfully' do
      binding.pry
     expect(response.status).to eq 200
    end
    
    it 'has correct comment' do
      expect(article.comment).to eq 'hello'
    end
  end

  describe 'Unsuccessfully comments on an article' do
  
  end

end