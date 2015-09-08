class EmoStatesController < ApplicationController

  def index
    @emo_states = EmoState.where(user_id: session[:user_id])

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
