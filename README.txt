系 统 要 求：
=============

- Windows 7 with SP1 / Windows 8.1 / Windows 10 / Windows 11 / Server 2008 R2 / Server 2012 R2 / Server 2016 / Server 2019 / Server 2022 LTSC 安装光盘 DVD/ISO。
- 维护 Windows 7 / Windows 8.1 源映像需要 Windows 7 with SP1 / Windows 8.1 / Windows 10 / Windows 11 主机操作系统。
- 维护 Windows 7 / 8.1 / 10 / 11（x86/x64）源映像需要 Windows 8.1 / Windows 10 / Windows 11 主机操作系统。
- 工具箱的组件移除引擎（ToolkitHelper.exe）需要 Microsoft .NET Framework 4.8 或 4.9 运行时包。

已 知 问 题：
=============

- 此工具箱不适用于长文件夹路径或包含空格或特殊字符的文件夹路径名。
- 在启用防病毒程序的情况下使用工具箱可能会影响工具箱的操作。
- 工具箱的组件移除引擎（ToolkitHelper.exe）可能会被标记为病毒/木马/恶意软件程序，请不要担心，这只是误报。
- 工具箱将不支持使用其他类似工具预维护的源映像。
- 工具箱将不支持混合体系结构的源映像。
- Windows 8.1 - 默认 Metro 应用包中缺少 Office OneNote appx 文件。
- Windows 8.1 - 集成 Windows 远程服务器管理工具（RSAT）时可单独集成，但是当它在集成所有其他组件之后进行集成时它将会出现错误代码 0x80092004 从而中断集成。
- Windows 7、8.1、10 v1507/v1511/v1607/v1703/v1709/v1803 的组件移除功能被暂时移除。
- Windows 10 v1809 - 移除组件后集成或安装 Windows 更新可以还原被移除的组件的空的资源文件/文件夹。
- Windows 10 v1903/v1909/v2004/v20H2/v21H1/v21H2/v22H2, Windows 11 v21H2/v22H2 - 执行映像清理会导致 Ghost SFC 错误，运行 SFC /SCANNOW 命令将解决此问题。
- Windows 10 v1903/v1909/v2004/v20H2/v21H1/v21H2/v22H2、Windows 11 v21H2/v22H2 - 移除组件后集成或安装 Windows 更新将还原被移除的组件，这是由于 Microsoft 更新机制中最近的更改所致。
- Windows 10 v1903/v1909/v2004/v20H2/v21H1/v21H2/v22H2、Windows 11 v21H2/v22H2 - 移除组件后集成或安装 Windows 更新将还原被移除的组件，这是由于 Microsoft 更新机制中最近的更改所致。
- Windows 10 v1809/v1909/v2004/v20H2/v21H1/v21H2/v22H2、Windows 11 v21H2/v22H2 - 组件移除需要已集成受支持的累积更新的源映像。
- Windows 10 v1809/v1909 - 移除 C或tana 会破坏开始菜单、任务栏和设置应用的搜索功能。
- Windows 10 v1809/v1909/v2004/v20H2/v21H1/v21H2/v22H2、Windows 11 v21H2/v22H2 - 移除 Internet Expl或er 会破坏 DirectX 9.0c Web 安装程序和 Photoshop CC Web 安装程序。
- Windows 10 v1809/v1909/v2004/v20H2/v21H1/v21H2/v22H2、Windows 11 v21H2/v22H2 - 移除地图控件会破坏照片应用的图像信息。
- Windows 10 v1703/v1709/v1803/v1809/v1903/v1909/v2004/v20H2/v21H1/v21H2/v22H2、Windows 11 v21H2/v22H2 - 当自定义用户帐户图片被集成时，尽管图片已显示在开始菜单用户图标中，但此图片并不会显示在登录屏幕中。
- Windows 10 v1809/v1909/v2004/v20H2/v21H1/v21H2/v22H2、Windows 11 v21H2/v22H2 - 删除云体验主机需要完全无人参与的设置，并启用 SkipMachineOOBE 设置。

一 般 用 法：
==============

- 下载工具箱压缩文件和工具箱的适配包文件。
- 通过右键单击压缩文件并选择属性，然后单击“解除阻止”按钮，解除阻止已下载的工具箱压缩文件。
- 将工具箱压缩包解压缩到文件夹路径较短的文件夹 例如：C:\ToolKit
- 解压/复制 Windows 源 ISO/DVD 镜像/光盘内容到工具箱的 <DVD> 文件夹。
- 在脚本 Start.cmd 上双击并在 UAC 提示窗口选择是。
- 单击工具箱的命令窗口控制框，然后选择属性。
- 如果使用 Windows 7/Windows 8.1 主机操作系统，则转到字体选项卡并将字体设置为 Consolas，字体大小设置为 16。
- 转到布局选项卡并在屏幕缓冲区大小组框中将高度增加到 1000。
- 按“A”键同意工具箱的最终用户许可协议（EULA）。
- 按 Enter 键以继续执行。

注：
====

由于工具箱相关的主要 Mega 帐户被取消，所有工具箱适配包内容都已丢失。
因此，从现在开始，只有工具箱的自定义包可用，其余的包文件需要用户自行获取并将它们复制到工具箱错误消息中指定的相应包文件夹中。

Windows 7/ThinPC/Server 2008R2 的使用步骤：
===========================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  注：将 Windows 语言包文件夹复制到工具箱的 <Packs\LanguagePacks\w7\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w7\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w7\<体系结构> 文件夹 例如：<Drivers\Install\w7\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  支持的程序包：
	  
	  <Packs\Dart\w7>			  Microsoft 诊断和恢复工具集（DaRT）7.0
	  <Packs\DirectX9c>			  Microsoft DirectX 9.0c End-User Runtime
	  <Packs\EdgeChromium>                    Microsoft Edge Chromium 浏览器
	  <Packs\EdgeWebView2>                    Microsoft Edge WebView 2
	  <Packs\Games>				  Microsoft Windows 经典游戏
	  <Packs\IE11>				  Microsoft Internet Explorer 11
	  <Packs\LanguagePacks\w7>                适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\MediaFeaturePack\w7>             适用于 Windows N 版的媒体功能包
	  <Packs\NETCore31>			  Microsoft .NET Core Runtime 3.1
	  <Packs\NET6>				  Microsoft .NET 6 Runtime
	  <Packs\NET7>				  Microsoft .NET 7 Runtime
	  <Packs\NetFX48\w7>                      Microsoft .NET Framework 4.8 Runtime
	  <Packs\PowerShell7>                     Windows PowerShell 7.3
	  <Packs\RDP81>				  远程桌面协议（RDP）8.1
	  <Packs\RSAT\w7>			  适用于 Windows 的远程服务器管理工具（RSAT）
	  <Packs\Skins>				  适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\SystemRestore\w7>                适用于 Windows Server 2008 R2 的系统还原
	  <Packs\ThinPC>			  Windows Thin PC 附加功能包
	  <Packs\ThirdPartyAppPacks>		  第三方应用程序包
	  <Packs\UAP\w7>			  自定义用户帐户图片
	  <Packs\VCRuntime\w7>                    Microsoft Visual C++ Runtime
	  <Packs\WMF\w7>                          Windows Management Framework（WMF）5.1
  
[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w7\<体系结构> 文件夹 例如：<Updates\w7\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 7 WHD 更新包文件夹到工具箱的 <WHD\w7\<体系结构> 文件夹（例如 <WHD\w7\x64>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - 使用 [移除 -> 使用程序包列表移除 Windows 组件] 菜单移除 Windows 组件。

	  注：你需要在工具箱的文件 <Bin\Lists\RemovePkgsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
	  使用 DISM 标准 /Remove-Package 命令删除 Windows 程序包。

[G] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[H] - <可选> 使用 [自定义定制] 菜单自定义映像。
[I] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。


Windows 8.1/Server 2012R2 的使用步骤：
======================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  将 Windows 语言包文件夹复制到 <Packs\LanguagePacks\w81\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w81\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w81\<体系结构> 文件夹 例如：<Drivers\Install\w81\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  对于 Microsoft .NET Framework 3.5 Runtime，包文件夹已压缩为 x86.zip 和 x64.zip，你需要将其下载并解压缩到 <Packs\NetFX35\w81>
	  文件夹中的 x86 和 x64 文件夹。

	  支持的程序包：

	  <Packs\Dart\w81>			  Microsoft 诊断和恢复工具集（DaRT）8.1
	  <Packs\Dedup\w81>			  Microsoft 重复数据删除包
	  <Packs\DirectX9c>			  Microsoft DirectX 9.0c End-User Runtime
	  <Packs\EdgeChromium>                    Microsoft Edge Chromium 浏览器
	  <Packs\EdgeWebView2>                    Microsoft Edge WebView 2
	  <Packs\Games>				  Microsoft Windows 经典游戏
	  <Packs\LanguagePacks\w81>               适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\MediaFeaturePack\w81>            适用于 Windows N 版的媒体功能包
	  <Packs\NETCore31>			  Microsoft .NET Core Runtime 3.1
	  <Packs\NetFX35\w81>                     Microsoft .NET Framework 3.5 Runtime
	  <Packs\NET6>				  Microsoft .NET 6 Runtime
	  <Packs\NET7>				  Microsoft .NET 7 Runtime
	  <Packs\NetFX48\w81>                     Microsoft .NET Framework 4.8 Runtime
	  <Packs\PowerShell7>                     Windows PowerShell 7.3
	  <Packs\PreActTokens\w81>                预激活数据令牌的占位符
	  <Packs\RSAT\w81>			  适用于 Windows 的远程服务器管理工具（RSAT）
	  <Packs\Sidebar>                         Windows 边栏小工具
	  <Packs\Skins>				  适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\ThirdPartyAppPacks>		  第三方应用程序包
	  <Packs\UAP\w81>                         自定义用户帐户图片
	  <Packs\VCRuntime\w81>                   Microsoft Visual C++ Runtime
	  <Packs\WinToGo\w81>                     Windows 便携工作区创建程序（Windows To Go）
	  <Packs\WMF\w81>                         Windows Management Framework（WMF）5.1
	  
[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w81\<体系结构> 文件夹 例如：<Updates\w81\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 8.1 WHD 更新包文件到工具箱的 <WHD\w81\<体系结构> 文件夹（例如 <WHD\w81\x64>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - <可选> 使用 [集成 -> Windows 更新 -> Windows 安装媒介更新] 菜单集成 Windows 安装媒介更新。

	  注：仅限当 WHD 更新包集成到 Windows 安装程序启动映像时。

[G] - 使用集成 -> Windows 内置应用菜单集成 Windows 默认内置应用。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  <Packs\Apps\w81>			  默认内置 Metro 应用

	  有关如何下载应用的信息，请参阅 <PacksAppsGettingApps.txt> 文件。

[H] - 使用移除菜单移除 Windows 组件。

	  [1] 如果使用移除 Windows 应用时使用应用列表菜单

		注：你需要将要移除的应用列表添加到工具箱的 <Bin\Lists\RemoveAppsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-ProvisionedAppxPackage 命令移除 Windows 应用。

	  [2] 如果使用移除 Windows 组件时使用程序包列表菜单

		[A] 使用包列表移除 Windows 组件 -> 使用程序包列表（DISM 方式）菜单移除 Windows 组件。

		注：你需要在工具箱的文件 <Bin\Lists\RemovePkgsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-Package 命令删除 Windows 程序包。

[I] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[J] - <可选> 使用 [自定义定制] 菜单自定义映像。
[K] - 使用 [应用 -> 清理源映像] 菜单清理源映像文件。
[L] - <可选> 使用 [集成 -> Windows 功能 -> Microsoft .NET Framework 3.5] 菜单集成 Microsoft .NET Framework 3.5 功能。
[M] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。


Windows 10 v1507/v1511/v1607/v1703/v1709/V1803 Client/Server 的使用步骤：
=========================================================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  将 Windows 语言包文件夹复制到 <Packs\LanguagePacks\w10\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w10\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w10\<体系结构> 文件夹 例如：<Drivers\Install\w10\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  支持的程序包：

	  <Packs\Braille\w10\<OSVersion>                                Windows 盲文辅助功能
	  <Packs\Dart\w10>                                              Microsoft 诊断和恢复工具集（DaRT）10
	  <Packs\Dedup\w10\<OSVersion>                                  Microsoft 重复数据删除包
	  <Packs\DirectX9c>                                             Microsoft DirectX 9.0c End-User Runtime
	  <Packs\EdgeBrowser\<OSVersion>                                适用于 LTSB/LTSC 和 Windows 服务器版本的 Microsoft Edge 浏览器应用
	  <Packs\EdgeWebView2>                                          Microsoft Edge WebView 2
	  <Packs\Games>                                                 Microsoft Windows 经典游戏
	  <Packs\LanguagePacks\w10\<OSVersion>                          适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\MediaFeaturePack\w10\<OSVersion>                       适用于 Windows N 版的媒体功能包
	  <Packs\MultimediaRestrictedCodecs\w10\<OSVersion>             适用于 N 版和 Windows 服务器版本的 Multimedia Restricted Codec
	  <Packs\NETCore31>                                             Microsoft .NET Core Runtime 3.1
	  <Packs\NET6>                                                  Microsoft .NET 6 Runtime
	  <Packs\NET7>                                                  Microsoft .NET 7 Runtime
	  <Packs\NetFX35\w10\<OSVersion>                                Microsoft .NET Framework 3.5 Runtime
	  <Packs\NetFX48\w10>                                           适用于 Windows 10 v1607、v1703、v1709、v1803 和 v1809 的 Microsoft .NET Framework 4.8 Runtime
	  <Packs\NetFX462>                                              适用于 Windows 10 v1507 和 v1511 的 Microsoft .NET Framework 4.6.2 Runtime
	  <Packs\OfficeUWP>                                             Microsoft Office 桌面 UWP 应用
	  <Packs\OpenSSH\w10\<OSVersion>                                Open Secure Shell（SSH）客户端和服务器端
	  <Packs\PortableDevices\w10\<OSVersion>                        Windows 移动便携设备
	  <Packs\PowerShell7>                                           Windows PowerShell 7.3
	  <Packs\RSAT\w10\10.0.14393>                                   适用于 Windows 10 v1607 和 v1703 的远程服务器管理工具（RSAT）
	  <Packs\RSAT\w10\10.0.16299>                                   适用于 Windows 10 v1709 的远程服务器管理工具（RSAT）
	  <Packs\RSAT\w10\10.0.17134>                                   适用于 Windows 10 v1803 的远程服务器管理工具（RSAT）
	  <Packs\Sidebar>                                               Windows 边栏小工具
	  <Packs\Skins>                                                 适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\SystemRestore\w10\<OSVersion>                          适用于 Windows 服务器版本的系统还原
	  <Packs\ThirdPartyAppPacks>		  			第三方应用程序包
	  <Packs\UAP\w10>                                               自定义用户帐户图片
	  <Packs\VCRuntime\w10>                                         Microsoft Visual C++ Runtime
	  <Packs\Win32Calc>                                             适用于 LTSB/LTSC 和 Windows 的 Server 版本 Windows 经典计算器
	  <Packs\WinToGo\w10\<OSVersion>                                Windows 便携工作区创建程序（Windows To Go）
	  <Packs\WSL\w10\<OSVersion>                                    适用于 Windows 服务器版本的适用于 Linux 的 Windows 子系统（WSL）

[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w10\<体系结构>> 文件夹 例如：<Updates\w10\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 10 WHD 更新包文件到工具箱的 <WHD\w11\<体系结构>\<ImageBuild>> 文件夹（例如 <WHD\w10\x64\10.0.17134>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - <可选> 使用 [集成 -> Windows 更新 -> Windows 安装媒介更新] 菜单集成 Windows 安装媒介更新。

	  注：仅当 WHD 更新包集成到 Windows 安装启动映像，并且你在从 Windows 安装介质启动时收到缺少驱动程序提示时。

[G] - 使用集成 -> Windows 内置应用菜单集成 Windows 默认内置应用。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  <Packs\Apps\w10>			  默认内置 Metro 应用

	  有关下载应用方式的信息，请参阅 <PacksAppsGettingApps.txt> 文件，并参阅 HASH.txt 以了解要为某个 Windows 10 版本下载何种应用版本。

[H] - 使用 [移除 -> 移除 Windows 组件] 菜单移除所有所需的 Windows 组件。
[I] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[J] - <可选> 使用 [自定义定制] 菜单自定义映像。
[K] - 使用 [应用 -> 清理源映像] 菜单清理源映像文件。
[L] - <可选> 使用 [集成 -> Windows 功能 -> Microsoft .NET Framework 3.5] 菜单集成 Microsoft .NET Framework 3.5 功能。
[M] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。


Windows 10 v1809 Client/Server 的使用步骤：
===========================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  将 Windows 语言包文件夹复制到 <Packs\LanguagePacks\w10\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w10\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w10\<体系结构> 文件夹 例如：<Drivers\Install\w10\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  支持的程序包：

	  <Packs\Braille\w10\<OSVersion>                                Windows 盲文辅助功能
	  <Packs\Dart\w10>                                              Microsoft 诊断和恢复工具集（DaRT）10
	  <Packs\Dedup\w10\<OSVersion>                                  Microsoft 重复数据删除包
	  <Packs\DirectX9c>                                             Microsoft DirectX 9.0c End-User Runtime
	  <Packs\EdgeBrowser\<OSVersion>                                适用于 LTSC 和 Windows 服务器版本的 Microsoft Edge 浏览器应用
	  <Packs\EdgeWebView2>                                          Microsoft Edge WebView 2
	  <Packs\Games>                                                 Microsoft Windows 经典游戏
	  <Packs\LanguagePacks\w10\<OSVersion>                          适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\MediaFeaturePack\w10\<OSVersion>                       适用于 Windows N 版的媒体功能包
	  <Packs\MultimediaRestrictedCodecs\w10\<OSVersion>             适用于 N 版和 Windows 服务器版本的 Multimedia Restricted Codec
	  <Packs\NETCore31>                                             Microsoft .NET Core Runtime 3.1
	  <Packs\NET6>                                                  Microsoft .NET 6 Runtime
	  <Packs\NET7>                                                  Microsoft .NET 7 Runtime
	  <Packs\NetFX35\w10\<OSVersion>                                Microsoft .NET Framework 3.5 Runtime
	  <Packs\NetFX48\w10>                                           适用于 Windows 10 v1607、v1703、v1709、v1803 和 v1809 的 Microsoft .NET Framework 4.8 Runtime
	  <Packs\OfficeUWP>                                             Microsoft Office 桌面 UWP 应用
	  <Packs\OpenSSH\w10\<OSVersion>                                Open Secure Shell（SSH）客户端和服务器端
	  <Packs\PortableDevices\w10\<OSVersion>                        Windows 移动便携设备
	  <Packs\PowerShell7>                                           Windows PowerShell 7.1
	  <Packs\Sidebar>						Windows 边栏小工具
	  <Packs\Skins>                                                 适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\ThirdPartyAppPacks>		  			第三方应用程序包
	  <Packs\UAP\w10>                                               自定义用户帐户图片
	  <Packs\VCRuntime\w10>                                         Microsoft Visual C++ Runtime
	  <Packs\Win32Calc>                                             适用于 LTSB/LTSC 和 Windows 的 Server 版本 Windows 经典计算器
	  <Packs\WinToGo\w10\<OSVersion>                                Windows 便携工作区创建程序（Windows To Go）
	  <Packs\WMR\w10\<OSVersion>					Windows 混合现实
	  <Packs\WSL\w10\<OSVersion>                                    适用于 Windows 服务器版本的适用于 Linux 的 Windows 子系统（WSL）

[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w10\<体系结构>> 文件夹 例如：<Updates\w10\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 10 WHD 更新包文件到工具箱的 <WHD\w10\<体系结构>\<ImageBuild>> 文件夹（例如 <WHD\w10\x64\17763>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - <可选> 使用 [集成 -> Windows 更新 -> Windows 安装媒介更新] 菜单集成 Windows 安装媒介更新。

	  注：仅当 WHD 更新包集成到 Windows 安装启动映像，并且你在从 Windows 安装介质启动时收到缺少驱动程序提示时。

[G] - 使用集成 -> Windows 内置应用菜单集成 Windows 默认内置应用。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  <Packs\Apps\w10>			  默认内置 Metro 应用

	  有关下载应用方式的信息，请参阅 <PacksAppsGettingApps.txt> 文件，并参阅 HASH.txt 以了解要为某个 Windows 10 版本下载何种应用版本。

[H] - 使用移除菜单移除 Windows 组件。

	  [1] 如果使用“移除 Windows 组件”菜单，之后
		[A] 使用 [移除 Windows 组件 -> 兼容性] 菜单选择组件兼容性。
		[B] 使用 [移除 Windows 组件 -> 选择 Windows 组件] 菜单选择要移除的组件。
		[C] 使用 [移除 Windows 组件 -> 开始移除 Windows 组件] 菜单移除所选的 Windows 组件。

		注：仅适用于客户端（x86 和 x64）版本，并在 changelog.txt 中指定了集成累积更新的源映像。

      或

	  [2] 如果使用移除 Windows 应用时使用应用列表菜单

		注：你需要将要移除的应用列表添加到工具箱的 <Bin\Lists\RemoveAppsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-ProvisionedAppxPackage 命令移除 Windows 应用。

      或

	  [3] 如果使用移除 Windows 组件时使用程序包列表菜单

		[A] 使用包列表移除 Windows 组件 -> 使用程序包列表（DISM 方式）菜单移除 Windows 组件。

		注：你需要在工具箱的文件 <Bin\Lists\RemovePkgsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-Package 命令删除 Windows 程序包。

		或

		[B] 使用程序包列表 -> 移除 Windows 组件使用程序包列表（ToolKitHelper 方式）菜单移除 Windows 组件。

		注：你需要将要移除的组件列表添加到工具箱的 <Bin\Lists\RemovePkgsList.txt> 文件，可以在工具箱的 <Bin\Lists\ToolkitHelper_Templates> 文件夹中找到模板列表。
		仅在 changelog.txt 中指定的具有集成累积更新的客户端版本源映像。

[I] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[J] - <可选> 使用 [自定义定制] 菜单自定义映像。
[K] - 使用 [应用 -> 清理源映像] 菜单清理源映像文件。
[L] - <可选> 使用 [集成 -> Windows 功能 -> Microsoft .NET Framework 3.5] 菜单集成 Microsoft .NET Framework 3.5 功能。
[M] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。


Windows 10 v1903/v1909 Client/Server 的使用步骤：
=================================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  将 Windows 语言包文件夹复制到 <Packs\LanguagePacks\w10\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w10\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w10\<体系结构> 文件夹 例如：<Drivers\Install\w10\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  支持的程序包：

	  <Packs\Braille\w10\<OSVersion>                                Windows 盲文辅助功能
	  <Packs\Dart\w10>                                              Microsoft 诊断和恢复工具集（DaRT）10
	  <Packs\Dedup\w10\<OSVersion>                                  Microsoft 重复数据删除包
	  <Packs\DirectX9c>                                             Microsoft DirectX 9.0c End-User Runtime
	  <Packs\EdgeBrowser\<OSVersion>                                适用于 LTSC 和 Windows 服务器版本的 Microsoft Edge 浏览器应用
	  <Packs\EdgeWebView2>                                          Microsoft Edge WebView 2
	  <Packs\Games>                                                 Microsoft Windows 经典游戏
	  <Packs\LanguagePacks\w10\<OSVersion>                          适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\MediaFeaturePack\w10\<OSVersion>                       适用于 Windows N 版的媒体功能包
	  <Packs\MultimediaRestrictedCodecs\w10\<OSVersion>             适用于 N 版和 Windows 服务器版本的 Multimedia Restricted Codec
	  <Packs\NETCore31>                                             Microsoft .NET Core Runtime 3.1
	  <Packs\NET6>                                                  Microsoft .NET 6 Runtime
	  <Packs\NET7>                                                  Microsoft .NET 7 Runtime
	  <Packs\NetFX35\w10\<OSVersion>                                Microsoft .NET Framework 3.5 Runtime
	  <Packs\OfficeUWP>                                             Microsoft Office 桌面 UWP 应用
	  <Packs\OpenSSH\w10\<OSVersion>                                Open Secure Shell（SSH）客户端和服务器端
	  <Packs\PortableDevices\w10\<OSVersion>                        Windows 移动便携设备
	  <Packs\PowerShell7>                                           Windows PowerShell 7.1
	  <Packs\Sidebar>						Windows 边栏小工具
	  <Packs\Skins>                                                 适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\ThirdPartyAppPacks>		  			第三方应用程序包
	  <Packs\UAP\w10>                                               自定义用户帐户图片
	  <Packs\VCRuntime\w10>                                         Microsoft Visual C++ Runtime
	  <Packs\Win32Calc>                                             适用于 LTSB/LTSC 和 Windows 的 Server 版本 Windows 经典计算器
	  <Packs\WinToGo\w10\<OSVersion>                                Windows 便携工作区创建程序（Windows To Go）
	  <Packs\WSL\w10\<OSVersion>                                    适用于 Windows 服务器版本的适用于 Linux 的 Windows 子系统（WSL）

[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w10\<体系结构>> 文件夹 例如：<Updates\w10\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 10 WHD 更新包文件到工具箱的 <WHD\w10\<体系结构>\<ImageBuild>> 文件夹（例如 <WHD\w10\x64\18363>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - <可选> 使用 [集成 -> Windows 更新 -> Windows 安装媒介更新] 菜单集成 Windows 安装媒介更新。

	  注：仅当 WHD 更新包集成到 Windows 安装启动映像，并且你在从 Windows 安装介质启动时收到缺少驱动程序提示时。

[G] - 使用集成 -> Windows 内置应用菜单集成 Windows 默认内置应用。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  <Packs\Apps\w10>			  默认内置 Metro 应用

	  有关下载应用方式的信息，请参阅 <PacksAppsGettingApps.txt> 文件，并参阅 HASH.txt 以了解要为某个 Windows 10 版本下载何种应用版本。

[H] - 使用移除菜单移除 Windows 组件。

	  [1] 如果使用“移除 Windows 组件”菜单，之后
		[A] 使用 [移除 Windows 组件 -> 兼容性] 菜单选择组件兼容性。
		[B] 使用 [移除 Windows 组件 -> 选择 Windows 组件] 菜单选择要移除的组件。
		[C] 使用 [移除 Windows 组件 -> 开始移除 Windows 组件] 菜单移除所选的 Windows 组件。

		注：仅适用于客户端（x86 和 x64）版本，并在 changelog.txt 中指定了集成累积更新的源映像。

      或

	  [2] 如果使用移除 Windows 应用时使用应用列表菜单

		注：你需要将要移除的应用列表添加到工具箱的 <Bin\Lists\RemoveAppsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-ProvisionedAppxPackage 命令移除 Windows 应用。

      或

	  [3] 如果使用移除 Windows 组件时使用程序包列表菜单

		[A] 使用包列表移除 Windows 组件 -> 使用程序包列表（DISM 方式）菜单移除 Windows 组件。

		注：你需要在工具箱的文件 <Bin\Lists\RemovePkgsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-Package 命令删除 Windows 程序包。

		或

		[B] 使用程序包列表 -> 移除 Windows 组件使用程序包列表（ToolKitHelper 方式）菜单移除 Windows 组件。

		注：你需要将要移除的组件列表添加到工具箱的 <Bin\Lists\RemovePkgsList.txt> 文件，可以在工具箱的 <Bin\Lists\ToolkitHelper_Templates> 文件夹中找到模板列表。
		仅在 changelog.txt 中指定的具有集成累积更新的客户端版本源映像。

[I] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[J] - <可选> 使用 [自定义定制] 菜单自定义映像。
[K] - 使用 [应用 -> 清理源映像] 菜单清理源映像文件。

	  注：不推荐使用，因为它会产生 Ghost SFC 错误。

[L] - <可选> 使用 [集成 -> Windows 功能 -> Microsoft .NET Framework 3.5] 菜单集成 Microsoft .NET Framework 3.5 功能。
[M] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。


Windows 10 v2004/v20H2/v21H1/v21H2/v22H2 Client/Server 的使用步骤：
===================================================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  将 Windows 语言包文件夹复制到 <Packs\LanguagePacks\w10\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w10\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w10\<体系结构> 文件夹 例如：<Drivers\Install\w10\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  支持的程序包：

	  <Packs\Braille\w10\<OSVersion>                                Windows 盲文辅助功能
	  <Packs\Dart\w10>                                              Microsoft 诊断和恢复工具集（DaRT）10
	  <Packs\Dedup\w10\<OSVersion>                                  Microsoft 重复数据删除包
	  <Packs\DirectX9c>                                             Microsoft DirectX 9.0c End-User Runtime
	  <Packs\EdgeBrowser\<OSVersion>                                适用于 LTSC 和 Windows 服务器版本的 Microsoft Edge 浏览器应用
	  <Packs\EdgeWebView2>                                          Microsoft Edge WebView 2
	  <Packs\Games>                                                 Microsoft Windows 经典游戏
	  <Packs\LanguagePacks\w10\<OSVersion>                          适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\MediaFeaturePack\w10\<OSVersion>                       适用于 Windows N 版的媒体功能包
	  <Packs\MultimediaRestrictedCodecs\w10\<OSVersion>             适用于 N 版和 Windows 服务器版本的 Multimedia Restricted Codec
	  <Packs\NETCore31>                                             Microsoft .NET Core Runtime 3.1
	  <Packs\NET6>                                                  Microsoft .NET 6 Runtime
	  <Packs\NET7>                                                  Microsoft .NET 7 Runtime
	  <Packs\NetFX35\w10\<OSVersion>                                Microsoft .NET Framework 3.5 Runtime
	  <Packs\NetFX481>                                              适用于 Windows 10 v2004/v20H2/v21H1/v21H2/v22H2 的 Microsoft .NET Framework 4.8.1 Runtime
	  <Packs\OfficeUWP>                                             Microsoft Office 桌面 UWP 应用
	  <Packs\OpenSSH\w10\<OSVersion>                                Open Secure Shell（SSH）客户端和服务器端
	  <Packs\PortableDevices\w10\<OSVersion>                        Windows 移动便携设备
	  <Packs\PowerShell7>                                           Windows PowerShell 7.1
	  <Packs\Sidebar>						Windows 边栏小工具
	  <Packs\Skins>                                                 适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\ThirdPartyAppPacks>		  			第三方应用程序包
	  <Packs\UAP\w10>                                               自定义用户帐户图片
	  <Packs\VCRuntime\w10>                                         Microsoft Visual C++ Runtime
	  <Packs\Win32Calc>                                             适用于 LTSB/LTSC 和 Windows 的 Server 版本 Windows 经典计算器
	  <Packs\WMR\w10\<OSVersion>					Windows 混合现实
	  <Packs\WSL\w10\<OSVersion>                                    适用于 Windows 服务器版本的适用于 Linux 的 Windows 子系统（WSL）

[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w10\<体系结构>> 文件夹 例如：<Updates\w10\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 10 WHD 更新包文件到工具箱的 <WHD\w10\<体系结构>\<ImageBuild>> 文件夹（例如 <WHD\w10\x64\19044>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - <可选> 使用 [集成 -> Windows 更新 -> Windows 安装媒介更新] 菜单集成 Windows 安装媒介更新。

	  注：仅当 WHD 更新包集成到 Windows 安装启动映像，并且你在从 Windows 安装介质启动时收到缺少驱动程序提示时。

[G] - 使用集成 -> Windows 内置应用菜单集成 Windows 默认内置应用。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  <Packs\Apps\w10>			  默认内置 Metro 应用

	  有关下载应用方式的信息，请参阅 <PacksAppsGettingApps.txt> 文件，并参阅 HASH.txt 以了解要为某个 Windows 10 版本下载何种应用版本。

[H] - 使用移除菜单移除 Windows 组件。

	  [1] 如果使用“移除 Windows 组件”菜单，之后
		[A] 使用 [移除 Windows 组件 -> 兼容性] 菜单选择组件兼容性。
		[B] 使用 [移除 Windows 组件 -> 选择 Windows 组件] 菜单选择要移除的组件。
		[C] 使用 [移除 Windows 组件 -> 开始移除 Windows 组件] 菜单移除所选的 Windows 组件。

		注：仅适用于客户端（x86 和 x64）版本，并在 changelog.txt 中指定了集成累积更新的源映像。

      或

	  [2] 如果使用移除 Windows 应用时使用应用列表菜单

		注：你需要将要移除的应用列表添加到工具箱的 <Bin\Lists\RemoveAppsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-ProvisionedAppxPackage 命令移除 Windows 应用。

      或

	  [3] 如果使用移除 Windows 组件时使用程序包列表菜单

		[A] 使用包列表移除 Windows 组件 -> 使用程序包列表（DISM 方式）菜单移除 Windows 组件。

		注：你需要在工具箱的文件 <Bin\Lists\RemovePkgsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-Package 命令删除 Windows 程序包。

		或

		[B] 使用程序包列表 -> 移除 Windows 组件使用程序包列表（ToolKitHelper 方式）菜单移除 Windows 组件。

		注：你需要将要移除的组件列表添加到工具箱的 <Bin\Lists\RemovePkgsList.txt> 文件，可以在工具箱的 <Bin\Lists\ToolkitHelper_Templates> 文件夹中找到模板列表。
		仅在 changelog.txt 中指定的具有集成累积更新的客户端版本源映像。

[I] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[J] - <可选> 使用 [自定义定制] 菜单自定义映像。
[K] - 使用 [应用 -> 清理源映像] 菜单清理源映像文件。

	  注：不推荐使用，因为它会产生 Ghost SFC 错误。

[L] - <可选> 使用 [集成 -> Windows 功能 -> Microsoft .NET Framework 3.5] 菜单集成 Microsoft .NET Framework 3.5 功能。
[M] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。


Windows Server LTSC 2022 的使用步骤：
=====================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  将 Windows 语言包文件夹复制到 <Packs\LanguagePacks\w10\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w10\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w10\<体系结构> 文件夹 例如：<Drivers\Install\w10\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  支持的程序包：

	  <Packs\Dart\w10>                                              Microsoft 诊断和恢复工具集（DaRT）10
	  <Packs\DirectX9c>                                             Microsoft DirectX 9.0c End-User Runtime
	  <Packs\Games>                                                 Microsoft Windows 经典游戏
	  <Packs\LanguagePacks\w10\<OSVersion>                          适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\NETCore31>                                             Microsoft .NET Core Runtime 3.1
	  <Packs\NET6>                                                  Microsoft .NET 6 Runtime
	  <Packs\NET7>                                                  Microsoft .NET 7 Runtime
	  <Packs\NetFX35\w10\<OSVersion>                                Microsoft .NET Framework 3.5 Runtime
	  <Packs\NetFX481>                                              适用于 Windows 10 v2004/v20H2/v21H1/v21H2/v22H2 的 Microsoft .NET Framework 4.8.1 Runtime
	  <Packs\OfficeUWP>                                             Microsoft Office 桌面 UWP 应用
	  <Packs\PowerShell7>                                           Windows PowerShell 7.1
	  <Packs\Sidebar>						Windows 边栏小工具
	  <Packs\Skins>                                                 适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\ThirdPartyAppPacks>		  			第三方应用程序包
	  <Packs\UAP\w10>                                               自定义用户帐户图片
	  <Packs\VCRuntime\w10>                                         Microsoft Visual C++ Runtime


[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w10\<体系结构>> 文件夹 例如：<Updates\w10\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 10 WHD 更新包文件到工具箱的 <WHD\w10\<体系结构>\<ImageBuild>> 文件夹（例如 <WHD\w10\x64\10.0.20348>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - <可选> 使用 [集成 -> Windows 更新 -> Windows 安装媒介更新] 菜单集成 Windows 安装媒介更新。

	  注：仅当 WHD 更新包集成到 Windows 安装启动映像，并且你在从 Windows 安装介质启动时收到缺少驱动程序提示时。

[G] - 使用集成 -> Windows 内置应用菜单集成 Windows 默认内置应用。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  <Packs\Apps\w10>			  默认内置 Metro 应用

	  有关下载应用方式的信息，请参阅 <PacksAppsGettingApps.txt> 文件，并参阅 HASH.txt 以了解要为某个 Windows 10 版本下载何种应用版本。

[H] - 使用移除菜单移除 Windows 组件。

	  [1] 如果使用移除 Windows 应用时使用应用列表菜单

		注：你需要将要移除的应用列表添加到工具箱的 <Bin\Lists\RemoveAppsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-ProvisionedAppxPackage 命令移除 Windows 应用。

	  [2] 如果使用移除 Windows 组件时使用程序包列表菜单

		[A] 使用包列表移除 Windows 组件 -> 使用程序包列表（DISM 方式）菜单移除 Windows 组件。

		注：你需要在工具箱的文件 <Bin\Lists\RemovePkgsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-Package 命令删除 Windows 程序包。

[I] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[J] - <可选> 使用 [自定义定制] 菜单自定义映像。
[K] - 使用 [应用 -> 清理源映像] 菜单清理源映像文件。

	  注：不推荐使用，因为它会产生 Ghost SFC 错误。

[L] - <可选> 使用 [集成 -> Windows 功能 -> Microsoft .NET Framework 3.5] 菜单集成 Microsoft .NET Framework 3.5 功能。
[M] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。


Windows 11 v21H2/v22H2/v23H2 客户端/Server 的使用步骤：
=======================================================

[A] - 使用 [源文件 -> 从源 <DVD> 文件夹中选择源文件] 菜单选择源映像。
	
	  <可选> 如果需要维护源启动/恢复映像，请在询问时选择是或否。

	  注：请将 Windows 安装源中的内容复制到工具箱的 <DVD> 文件夹。
	  此工具箱要求 Windows 安装映像使用 .wim 格式进行维护。

[B] - <可选> 使用 [集成->Windows 语言包] 菜单集成 Windows 语言包。

	  注：你需要从工具箱网站下载适用于 MSMG 工具箱的 Windows 语言包 ：https://msmgtoolkit.in
	  此适配包所包含的 Windows 语言包和 WinPE 语言包文件和适用于 MSMG 工具箱的 Windows 语言包仅在需要时上传，因为这里的
	  上传速度非常低。

	  将 Windows 语言包文件夹复制到 <Packs\LanguagePacks\w11\<体系结构> 文件夹 例如：<Packs\LanguagePacks\w11\x64>。

[C] - <可选> 使用 [集成 -> Windows 驱动] 菜单集成 Windows 驱动。

	  注：将驱动文件/文件夹复制到工具箱的 <Drivers\Install\w11\<体系结构> 文件夹 例如：<Drivers\Install\w11\x64>。

[D] - 使用 [集成 -> Windows 功能] 菜单集成所需的 Windows 功能（Microsoft .NET Framework 3.5 除外）。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  支持的程序包：

	  <Packs\Braille\w11\<OSVersion>                                Windows 盲文辅助功能
	  <Packs\Dart\w11>                                              Microsoft 诊断和恢复工具集（DaRT）10
	  <Packs\DirectX9c>                                             Microsoft DirectX 9.0c End-User Runtime
	  <Packs\Firefox>                                               Mozilla Firefox Browser
	  <Packs\Games>                                                 Microsoft Windows 经典游戏
	  <Packs\LanguagePacks\w11\<OSVersion>                          适用于安装和 WinPE 映像的 Windows 语言包
	  <Packs\MediaFeaturePack\w11\<OSVersion>                       适用于 Windows N 版的媒体功能包
	  <Packs\MultimediaRestrictedCodecs\w11\<OSVersion>             适用于 N 版和 Windows 服务器版本的 Multimedia Restricted Codec
	  <Packs\NETCore31>                                             Microsoft .NET Core Runtime 3.1
	  <Packs\NET6>                                                  Microsoft .NET 6 Runtime
	  <Packs\NET7>                                                  Microsoft .NET 7 Runtime
	  <Packs\NetFX35\w11\<OSVersion>                                Microsoft .NET Framework 3.5 Runtime
	  <Packs\NetFX481>						适用于 Windows 11 v21H2/v22H2 的 Microsoft .NET Framework 4.8.1 Runtime
	  <Packs\OfficeUWP>                                             Microsoft Office 桌面 UWP 应用
	  <Packs\OpenSSH\w11\<OSVersion>                                Open Secure Shell（SSH）客户端和服务器端
	  <Packs\PortableDevices\w11\<OSVersion>                        Windows 移动便携设备
	  <Packs\PowerShell7>                                           Windows PowerShell 7.1
	  <Packs\Sidebar>						Windows 边栏小工具
	  <Packs\Skins>                                                 适用于 Windows 计算器、Media Player 和照片查看器的自定义皮肤
	  <Packs\ThirdPartyAppPacks>		  			第三方应用程序包
	  <Packs\UAP\w11>                                               自定义用户帐户图片
	  <Packs\VCRuntime\w11>                                         Microsoft Visual C++ Runtime
	  <Packs\Win32Calc>                                             适用于 LTSB/LTSC 和 Windows 的 Server 版本 Windows 经典计算器


[E] - 使用集成 -> Windows 更新菜单集成 Windows 更新

	  [1] 如果使用集成 Windows 更新菜单，复制 Windows 更新到工具箱的 <Updates\w11\<体系结构>> 文件夹 例如：<Updates\w11\x64>。

	  或

	  [2] 如果使用集成 Windows WHD 更新包菜单，复制 Windows 10 WHD 更新包文件到工具箱的 <WHD\w11\<体系结构>\<ImageBuild>> 文件夹（例如 <WHD\w11\x64\10.0.22000>）。

	  注：工具箱支持 .msu/.cab 格式的更新。

[F] - <可选> 使用 [集成 -> Windows 更新 -> Windows 安装媒介更新] 菜单集成 Windows 安装媒介更新。

	  注：仅当 WHD 更新包集成到 Windows 安装启动映像，并且你在从 Windows 安装介质启动时收到缺少驱动程序提示时。

[G] - 使用集成 -> Windows 内置应用菜单集成 Windows 默认内置应用。

	  注：MSMG 工具箱软件适配包由于其大小的原因并没有包含在工具箱压缩包中，而是单独提供的。
	  你需要从工具箱的网站 https://msmgtoolkit.in 下载所需的适配包，并将它们复制到工具箱的 Packs 文件夹中。

	  <Packs\Apps\w10>			  默认内置 Metro 应用

	  有关下载应用方式的信息，请参阅 <PacksAppsGettingApps.txt> 文件，并参阅 HASH.txt 以了解要为某个 Windows 11 版本下载何种应用版本。

[H] - 使用移除菜单移除 Windows 组件。

	  [1] 如果使用“移除 Windows 组件”菜单，之后
		[A] 使用 [移除 Windows 组件 -> 兼容性] 菜单选择组件兼容性。
		[B] 使用 [移除 Windows 组件 -> 选择 Windows 组件] 菜单选择要移除的组件。
		[C] 使用 [移除 Windows 组件 -> 开始移除 Windows 组件] 菜单移除所选的 Windows 组件。

		注：仅适用于客户端（x86 和 x64）版本，并在 changelog.txt 中指定了集成累积更新的源映像。

      或

	  [2] 如果使用移除 Windows 应用时使用应用列表菜单

		注：你需要将要移除的应用列表添加到工具箱的 <Bin\Lists\RemoveAppsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-ProvisionedAppxPackage 命令移除 Windows 应用。

      或

	  [3] 如果使用移除 Windows 组件时使用程序包列表菜单

		[1] 使用包列表移除 Windows 组件 -> 使用程序包列表（DISM 方式）菜单移除 Windows 组件。

		注：你需要在工具箱的文件 <Bin\Lists\RemovePkgsList.txt> 中填写组件包名称列表，模板列表可在工具箱的 <Bin\Lists\DISM_Templates> 文件夹中找到。
		使用 DISM 标准 /Remove-Package 命令删除 Windows 程序包。

		或

		[2] 使用程序包列表 -> 移除 Windows 组件使用程序包列表（ToolKitHelper 方式）菜单移除 Windows 组件。

		注：你需要将要移除的组件列表添加到工具箱的 <Bin\Lists\RemovePkgsList.txt> 文件，可以在工具箱的 <Bin\Lists\ToolkitHelper_Templates> 文件夹中找到模板列表。
		仅在 changelog.txt 中指定的具有集成累积更新的客户端版本源映像。

[I] - <可选> 使用 [集成 -> Windows 自定义功能] 菜单集成所需的 Windows 自定义功能。
[J] - <可选> 使用 [自定义定制] 菜单自定义映像。
[K] - 使用 [应用 -> 清理源映像] 菜单清理源映像文件。

	  注：不推荐使用，因为它会产生 Ghost SFC 错误。

[L] - <可选> 使用 [集成 -> Windows 功能 -> Microsoft .NET Framework 3.5] 菜单集成 Microsoft .NET Framework 3.5 功能。
[M] - 使用 [应用 -> 应用并保存到源映像文件] 菜单应用并保存对源映像的更改。

