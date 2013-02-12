class Timeline
  def initialize user_ids
    @user_ids = user_ids
  end

  def shouts
    Shout.where(user_id: @user_ids).reverse_chronological
  end

  def as_json
    shouts.as_json
  end

  def to_partial_path
    "timelines/timeline"
  end
end