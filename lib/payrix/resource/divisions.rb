module Payrix
  module Resource
    class Divisions < Base
      include Mixin::DeleteDisabled

      resource_name 'divisions'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :name, :email]

      attr_accessor *ATTRS
    end
  end
end
