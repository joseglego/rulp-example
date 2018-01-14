Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  scope path: '/api' do
    api_version(module: "Api::V1", path: { value: "v1" }, defaults: { format: 'json' }) do
      get "solution", to: "solution#get"
    end
  end
end
