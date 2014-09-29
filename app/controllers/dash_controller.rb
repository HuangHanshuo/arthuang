class DashController < ApplicationController
  def index
    render "index"
  end
  def resp
    req = params["req"]
    resp = case req
    when "help"
      "handsome boy"
    else
      "oops"
    end
    p resp
    render :text => resp
  end
end