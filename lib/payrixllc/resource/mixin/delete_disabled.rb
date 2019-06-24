module Payrixllc
  module Resource
    module Mixin
      module DeleteDisabled
        def delete(params = {})
          raise Payrixllc::Exceptions::InvalidRequest.new('Invalid Action')
        end
      end
    end
  end
end
