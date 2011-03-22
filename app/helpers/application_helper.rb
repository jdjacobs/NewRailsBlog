module ApplicationHelper

  def print_time(timestamp)
    timestamp.strftime("%m/%d/%Y %I:%M:%S %p")
  end

end
