class Vote < ActiveRecord::Base
  belongs_to :votable, :polymorphic => true
  belongs_to :user

  # makes sure a user can only vote once per comment or post
  validates_uniqueness_of :user_id, scope: [:votable_id, :votable_type]
  validates :votable_type, format: {with: /Post|Comment/}

  attr_accessible :votable_id, :user_id, :votable_type, :value

end
