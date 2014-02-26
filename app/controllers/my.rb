SampleBlog::App.controllers :my do
  
  before do
    login
  end

  get :index do
    render "my/index"
  end

end
