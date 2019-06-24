module Payrixllc
  module Resource
    module Mixin
      module CreateDisabled
        def create(params = {})
          raise Payrixllc::Exceptions::InvalidRequest.new('Invalid Action')
        end
      end
    end
  end
end
