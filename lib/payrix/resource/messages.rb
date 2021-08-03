module Payrix
  module Resource
    class Messages < Base
      include Mixin::DeleteDisabled

      resource_name 'messages'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :messageThread, :opposingMessage, :type, :generated, :secure,
               :read, :message]

      attr_accessor *ATTRS
    end
  end
end
