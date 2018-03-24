

Pod::Spec.new do |s|
  s.module_name       = 'Zip2WithNilPadding'
  s.name              = "Zip2WithNilPadding"
  s.version           = "1.0.0"
  s.summary           = "Zip2WithNilPadding"
  s.homepage          = "https://github.com/danramteke/Zip2WithNilPadding.git"
  s.license           = 'copyright Dan Ramteke Consulting Inc.'
  s.author            = { "Daniel" => "daniel@danramteke.com" }
  s.source            = { :git => "https://github.com/danramteke/Zip2WithNilPadding.git", :tag => s.version }
  s.platform          = :ios, '10.0'
  s.requires_arc      = true
  s.swift_version     = '4.0'
  s.source_files      = 'Sources/**/*.swift'
end
