class Api::CalendarsController < ApplicationController




  def index
    @holidays = HTTP.get(
      "https://calendarific.com/api/v2/holidays?&api_key=#{Rails.application.credentials.calendar_key[:api_key]}&country=US&year=2019").parse

    render "index.json.jb" 

  end


end