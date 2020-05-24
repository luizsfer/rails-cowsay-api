# Documentation
class CowController < ApplicationController
  def say
    params.require(:message)
    params.permit(:cow, :ballon_type, :face_type)
    message      = params[:message]
    cow          = params[:cow] || 'cow'
    balloon_type = params[:ballon_type] || 'say'
    face_type    = params[:face_type] || 'default'

    @message = Cow.new(cow: cow, face_type: face_type).say(message, balloon_type)
  end
end
