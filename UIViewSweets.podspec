Pod::Spec.new do |s|
  s.name             = "UIViewSweets"
  s.version          = "0.1.0"
  s.summary          = "Sweet extension for UIView."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
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
  s.frameworks = 'UIKit', 'MapKit'
end
