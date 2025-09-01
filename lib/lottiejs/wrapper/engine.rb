module Lottiejs
  module Wrapper
    class Engine < ::Rails::Engine
      isolate_namespace Lottiejs::Wrapper
    end
  end
end
