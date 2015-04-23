class JobsController < ApplicationController
  before_action :authorize!

  def index
    @jobs = Job.order(posting_date: :desc)
  end

  def show
  end
end
