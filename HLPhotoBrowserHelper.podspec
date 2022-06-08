Pod::Spec.new do |spec|

  spec.name         = "HLPhotoBrowserHelper"
  spec.version      = "1.0.0"
  spec.summary      = "对KSPhotoBrowser简单封装"

  # 描述
  spec.description  = <<-DESC
  对KSPhotoBrowser简单封装。类方法使用更简单。
  DESC

  # 项目主页
  spec.homepage     = "https://github.com/huangchangweng/HLPhotoBrowserHelper"

  # 开源协议
  spec.license      = { :type => "MIT", :file => "LICENSE" }

  # 作者
  spec.author             = { "黄常翁" => "599139419@qq.com" }
  
  # 支持平台
  spec.platform     = :ios, "9.0"

  # git仓库，tag
  spec.source       = { :git => "https://github.com/huangchangweng/HLPhotoBrowserHelper.git", :tag => spec.version.to_s }
  
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }

  # 资源路径
  spec.source_files = "HLPhotoBrowserHelper/HLPhotoBrowserHelper/*.{h,m}"

  # 依赖系统库
  spec.frameworks   = "UIKit"

  # 依赖第三方库
  spec.dependency "KSPhotoBrowser", "0.3.1"

end
