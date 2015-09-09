class EmoStatesController < ApplicationController

  def index

    @user = User.find_by(id: session[:user_id])
    if @user.teacher?
      # debugger
      @users = User.all
      @emo_states = []
      @users.each{|user| @emo_states.push(user.emo_states.last)}
    else
      @emo_states = EmoState.where(user_id: session[:user_id])
    end

  end

  def create
    current_user.emo_states.create(emo_params)
    redirect_to :back
  end

  def show
    @emo_state = EmoState.find([:id])
  end

  private

  def emo_params
    params.require(:emo_state).permit(:emotion, :comment)
  end
end
