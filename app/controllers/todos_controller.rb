class TodosController < ApplicationController
  def new
    @todo = Todo.new(todo_params)
  end

  def create
    @todo = Todo.new(todo_params)
    @todos = Todo.all
    if @todo.save
      render :index
    else
      flash[:errors] = @todo.errors.full_messages
    end
  end

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find_by(id: params[:id])
  end

  def update
    @todo = Todo.find_by(id: params[:id])
    if @todo.update_attributes(todo_params)
      redirect_to todos_url
    else
      flash[:errors] = @todo.errors.full_messages
    end
  end

  def edit
    @todo = Todo.find_by(id: params[:id])
  end

  def destroy
    @todo = Todo.find_by(id: params[:id])
    @todo.destroy
    index
    render :index
  end

  def toggleCompleted
    @todo = Todo.find_by(id: params[:id])
    @todo.toggle!(:completed)
    index
    render :index
  end

  def todo_params
    params.require(:todo).permit(:title, :due_date, :details)
  end

end
