project "nvrhi"
kind "StaticLib"
language "C++"
cppdialect "C++17"

targetdir("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
objdir("%{wks.location}/Binaries/Intermediates/" .. outputdir .. "/%{prj.name}")

files {"include/**.h", "src/**.cpp", "src/**.h", "thirdparty/**.h", "thirdparty/**.hpp"}
includedirs {"include", "src", "%{IncludeDir.VulkanSDK}", "thirdparty/DirectX-Headers/include"}

filter "system:windows"
systemversion "latest"
defines {"VK_USE_PLATFORM_WIN32_KHR", "NOMINMAX"}

filter "configurations:Debug"
runtime "Debug"
symbols "on"

filter "configurations:Release"
runtime "Release"
optimize "on"

