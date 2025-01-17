# frozen_string_literal: true

require "action_view"
require "active_support/dependencies/autoload"

module ViewComponent
  extend ActiveSupport::Autoload

  autoload :Base
  autoload :Compiler
  autoload :CompileCache
  autoload :ComponentError
  autoload :Instrumentation
  autoload :Preview
  autoload :PreviewTemplateError
  autoload :TestHelpers
  autoload :TestCase
  autoload :TemplateError
  autoload :Translatable
end

# :nocov:
if defined?(ViewComponent::Engine)
  ActiveSupport::Deprecation.warn(
    "This manually engine loading is deprecated and will be removed in v3.0.0. " \
    "Remove `require \"view_component/engine\"`."
  )
elsif defined?(Rails::Engine)
  require "view_component/engine"
end
# :nocov:
