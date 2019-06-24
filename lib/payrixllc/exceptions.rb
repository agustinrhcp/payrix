module Payrixllc
  module Exceptions
    autoload :Base, 'payrixllc/exceptions/base'
    autoload :ApiError, 'payrixllc/exceptions/api_error'
    autoload :Connection, 'payrixllc/exceptions/connection'
    autoload :InvalidRequest, 'payrixllc/exceptions/invalid_request'
    autoload :InvalidResponse, 'payrixllc/exceptions/invalid_response'
  end
end

