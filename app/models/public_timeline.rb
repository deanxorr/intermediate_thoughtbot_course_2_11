class PublicTimeline
  def initialize timeline
    @timeline = timeline
  end

  def shouts
    timeline.shouts.where(private: false)
  end

  def as_json options = {}
    timeline.as_json options
  end

  def to_partial_path
    timeline.to_partial_path
  end

  private
  attr_reader :timeline
end