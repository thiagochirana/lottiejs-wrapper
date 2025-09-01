module Lottie
  module Animations
    LOTTIE_ANIMATIONS = {
      magic_wand: "magic_wand",
      loading: "loading"
    }.freeze

    def lottie(name, loop: true, autoplay: true, class_name: nil, width: 300, height: 300, **options)
      file = "lottie/#{LOTTIE_ANIMATIONS[name.to_sym]}.json"
      raise "Animation #{name} not found" unless file

      options[:data] ||= {}
      options[:data]["dotlottie-src"] = asset_path(file)
      options[:data]["dotlottie-loop"] = loop
      options[:data]["dotlottie-autoplay"] = autoplay

      options[:class] = class_name if class_name
      options[:width] = width
      options[:height] = height

      tag.canvas(**options)
    end
  end
end
