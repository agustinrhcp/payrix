module Payrix
  module Resource
    class Mappings < Base
      resource_name 'mappings'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :name, :description, :input, :output,
               :namespace]

      attr_accessor *ATTRS
    end
  end
end
