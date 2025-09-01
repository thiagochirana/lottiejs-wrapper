module Lottie
  class Engine < ::Rails::Engine
    isolate_namespace Lottie

    config.autoload_paths << root.join("lib")

    initializer "lottie.helpers" do
      require_relative "../../lib/lottie/animations"

      ActiveSupport.on_load(:action_view) do
        include Lottie::Animations
      end

      if defined?(ViewComponent::Base)
        ViewComponent::Base.include(Lottie::Animations)
      end
    end
  end
end
