class TimeController < ApplicationController

layout false

  def current_time
    @curr_time = Time.new
  end

  def utc_time
    time = Time.new
    values = time.to_a
    @utc_time = Time.utc(*values)
  end
end
