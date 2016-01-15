Pod::Spec.new do |s|
  s.name             = "UIViewSweets"
  s.version          = "0.1"
  s.summary          = "Sweet extension for UIView."

  s.description      = <<-DESC
Sweet extension, contains different methods that simplify using UIView
                       DESC

  s.homepage         = "https://github.com/keepcalmandcodecodecode/UIViewSweets"
  s.license          = 'MIT'
  s.author           = { "keepcalmandcodecodecode" => "easy.dev@yandex.ru" }
  s.source           = { :git => "https://github.com/keepcalmandcodecodecode/UIViewSweets.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'UIViewSweets' => ['Pod/Assets/*.png']
  }
  s.frameworks = 'UIKit'
end
