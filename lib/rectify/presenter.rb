module Rectify
  class Presenter
    include Virtus.model

    def attach_controller(controller)
      @controller = controller
      self
    end

    def method_missing(method_name, ...)
      if view_context.respond_to?(method_name)
        view_context.public_send(method_name, ...)
      else
        super
      end
    end

    def respond_to_missing?(method_name, include_private = false)
      view_context.respond_to?(method_name, include_private)
    end

    private

    def controller
      @controller ||= ActionController::Base.new
    end

    def view_context
      @view_context ||= controller.view_context
    end
  end
end
