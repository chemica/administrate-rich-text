require 'rails'
require 'administrate/field/base'
require 'administrate/engine'

module Administrate
  module Field
    class RichTextArea < Administrate::Field::Base
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript 'administrate-rich-text'
        Administrate::Engine.add_stylesheet 'administrate-rich-text'
      end

      def to_s
        data
      end
    end
  end
end
