module Payrix
  module Resource
    class Orgs < Base
      resource_name 'orgs'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :name, :description]

      attr_accessor *ATTRS
    end
  end
end
