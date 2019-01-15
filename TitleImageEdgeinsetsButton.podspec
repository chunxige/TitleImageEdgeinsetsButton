#
#  Be sure to run `pod spec lint TitleImageEdgeinsetsButton.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "TitleImageEdgeinsetsButton"
  s.version      = "0.0.2"
  s.summary      = "轻松调整button中title和image的位置和间距"
  s.description  = <<-DESC
    纠结button中title和image间距和位置的同学们，轻松解决
                   DESC
  s.homepage     = "https://github.com/chunxige/TitleImageEdgeinsetsButton"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "README.md" }
  s.author             = { "chunxi" => "" }
  s.platform     = :ios, "9.0"
  s.swift_version = "4.0"
  s.source       = { :git => "https://github.com/chunxige/TitleImageEdgeinsetsButton.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.swift"
end
