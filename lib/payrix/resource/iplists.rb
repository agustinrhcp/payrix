module Payrix
  module Resource
    class Iplists < Base
      resource_name 'iplists'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :version, :type, :start, :finish,
               :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
