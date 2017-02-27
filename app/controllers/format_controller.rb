class FormatController < ApplicationController
  def index
    if(params.has_key?(:message)) # MAC addresses for formatting have been requested
      @mac_addresses = params[:message].split(/\r?\n/)
      
      #@mac_addresses.each do |mac_address|
      #  // 
      #end
    end
  end
end
