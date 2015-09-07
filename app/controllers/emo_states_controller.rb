class EmoStatesController < ApplicationController

  def index
    @emo_states = EmoState.where(user_id: session[:user_id])

  end

  def create
    @emo_state = EmoState.create(emo_params)
    @emo_state.user = current_user
    @emo_state.save
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