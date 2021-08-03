module Payrix
  module Resource
    class NoteDocuments < Base
      resource_name 'noteDocuments'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :note, :custom, :type, :documentType, :name,
               :description, :status, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
