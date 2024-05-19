class HomeController < ApplicationController
  def index
    @notifications = [
      # start_at >= Time.current
      Notification.where('start_at.lte': Time.current, 'end_at.null': Time.current).to_a,
      Notification.where('start_at.lte': Time.current, 'end_at.gte': Time.current).to_a
    ].flatten.sort_by(&:start_at).reverse.take(3)
  end
end
