module Payrixllc
  module Resource
    module Mixin
      module UpdateDisabled
        def update(params = {})
          raise Payrixllc::Exceptions::InvalidRequest.new('Invalid Action')
        end
      end
    end
  end
end