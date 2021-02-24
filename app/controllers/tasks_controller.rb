class TasksController < ApplicationController
  def new
  end

  def create
    @task = Task.new(params.require(:task).permit(:description, :status))
    #esse código depois de params fornece proteção para só permitir os dados e não códigos
    @task.save #salva no banco
    redirect_to root_path #redireciona para root
  end

  def edit
    #Usando params, que pega o id da task com o find no routes
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(params.require(:task).permit(:description, :status))
    redirect_to root_path
  end

  def destroy
    task = Task.find(params[:id]) #não precisa do @ por que o objeto não vai ser transferido
    task.destroy #destroi a 'task' com o id encontrado
    redirect_to root_path
  end
end
