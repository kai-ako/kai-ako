class Api::EmoStatesController < ApplicationController

  def index
     emo_states = EmoState.where(user_id: session[:user_id])
     render json: emo_states
  end

  def create
    emo_state = EmoState.create(emo_params)
    render json: emo_state, status: 201
  end

  private

  def emo_params
    params.require(:emo_state).permit(:emotion, :comment, :user_id)
  end

end
