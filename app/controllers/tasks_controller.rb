class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def delete
    task = Task.find(params[:id])
    if task.destroy
      redirect_to root_path,
      notice: "タスクを１件削除しました"
    else
      redirect_to root_path,
      alert: "タスクを削除出来ませんでした"
    end
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    task = Task.find(params[:id])
    task.task = params[:task]
    if task.save
      redirect_to root_path,
      notice: "タスクを更新しました"
    else
      redirect_to root_path,
      alert: "タスクを更新出来ませんでした"
    end
    
  end
end
