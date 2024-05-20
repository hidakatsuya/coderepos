class HomeController < ApplicationController
  def index
    @notifications = [
      Notification.where('start_at.lte': Time.current + 1.hour, 'end_at.null': Time.current).to_a,
      Notification.where('start_at.lte': Time.current + 1.hour, 'end_at.gte': Time.current).to_a
    ].flatten.sort_by(&:start_at).reverse.take(3)
  end
end
