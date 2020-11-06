Rails.application.routes.draw do
  root to: 'tasks#index'
  delete 'tasks/:id/delete' => 'tasks#delete', as: "task_delete"
  get 'tasks/:id' => 'tasks#edit', as: "task_edit"
  post 'tasks/:id/update' => 'tasks#update', as: "task_update"
  post 'line/bot'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
