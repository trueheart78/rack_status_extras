require "rack_status_extras/version"
require "rack"

module Rack
  module Utils
    SYMBOL_TO_STATUS_CODE = Hash[*HTTP_STATUS_CODES.map { |code, message|
      [
        message.downcase.gsub(/\s|-|'/, '_').to_sym, code,
        "#{message}_#{code}".downcase.gsub(/\s|-|'/, '_').to_sym, code
      ]
    }.flatten]
  end
end

module RackStatusExtras
  # Your code goes here...
end
