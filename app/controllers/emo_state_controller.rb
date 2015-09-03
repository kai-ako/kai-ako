class EmoStateController < ApplicationController

  def create
    @emo_state = EmoState.create(emo_params)
    redirect_to :back
  end

  private

  def emo_params
    params.require(:emo_state).permit(:emotion, :comment)
  end
end
