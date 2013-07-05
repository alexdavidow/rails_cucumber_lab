class CalculatorController < ApplicationController

  def add
    if params[:first] && params[:second]
      @answer = params[:first].to_i + params[:second].to_i
      render :add
    end
  end

  def subtract
    if params[:s_first] && params[:s_second]
      @s_answer = params[:s_first].to_i - params[:s_second].to_i
      render :subtract
    end
  end

  def multiply
    if params[:m_first] && params[:m_second]
      @m_answer = params[:m_first].to_i * params[:m_second].to_i
      render :multiply
    end
  end

  def divide
    if params[:d_first] && params[:d_second]
      @d_answer = params[:d_first].to_i / params[:d_second].to_i
      unless params[:d_second] == 0
        puts 'You cannot divide by zero' 
      end
      render :divide
    end 
  end
end