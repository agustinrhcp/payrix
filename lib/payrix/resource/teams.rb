module Payrix
  module Resource
    class Teams < Base
      resource_name 'teams'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :name, :description, :autoCascadeDisabled, :inactive,
               :frozen, :autoCascadeOwner]

      attr_accessor *ATTRS
    end
  end
end
