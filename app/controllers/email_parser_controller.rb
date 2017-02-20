class EmailParserController < ApplicationController
  require 'rest_client'
  require 'vhx'
  require 'json'

  def index

  vhx = Vhx.setup({ api_key: '3AxuWn9dEUuJcPVXsySKAr6HPm_uNVGR' })

  begin
    # Example Customer Create
    @customer = Vhx::Customer.all()

  rescue Vhx::VhxError

  end

  end

  def show
    respond_to do |format|
      format.json render :partial => "email_parser/show.json"
    end
  end
end
