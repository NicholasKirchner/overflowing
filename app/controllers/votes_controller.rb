class VotesController < ApplicationController

  def create
    vote = Vote.find_or_create_by_user_id_and_votable_id_and_votable_type(votable_type: params[:votable_type],
                votable_id: params[:votable_id],
                user_id: current_user.id)
    vote.update_attributes(value: params[:vote_value])

    post = params[:votable_type].classify.constantize.find(params[:votable_id])


    vote.save
    render :json => {vote_count: post.total_votes, post_id: params[:votable_id]}.to_json
  end
end
