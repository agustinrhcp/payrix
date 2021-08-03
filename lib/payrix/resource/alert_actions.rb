module Payrix
  module Resource
    class AlertActions < Base
      resource_name 'alertActions'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :type, :options, :value, :alert, :retries,
               :headerName, :headerValue]

      attr_accessor *ATTRS
    end
  end
end
