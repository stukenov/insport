# frozen_string_literal: true

Rails.application.routes.draw do
  # Root route
  root 'home#index' # +

  # Static pages
  get 'about', to: 'pages#about', as: 'pages_about' # +
  get 'contact', to: 'pages#contact', as: 'pages_contact' # +

  # Main sections
  get 'epgs', to: 'epgs#index', as: 'epgs' # +
  get 'live', to: 'live#show', as: 'live' # +

  get 'projects', to: 'projects#index', as: 'projects'
  get 'project/:slug', to: 'projects#show', as: 'project'
  get 'project/:slug/episodes', to: 'episodes#index_for_project', as: 'project_episodes' # +

  get 'archive', to: 'episodes#index', as: 'archive' # +
  get 'episode/:episode_id', to: 'episodes#show', as: 'episode' # +

  get 'articles', to: 'articles#index', as: 'articles' # +
  get 'article/:id', to: 'articles#show', as: 'article' # +
end
