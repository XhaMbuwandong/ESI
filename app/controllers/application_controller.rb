class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    render html: "Bem vindo ao Jubilator"
    #redirect_to "/views/index.html"
  end
  
  def default
  end
  
  def calcular
    n = params[:ano_entrada]
    @ano_jubilamento = n.to_i + 5
    respond_to do |format|
      format.html
      format.js
    end
  end

end
