project "nvrhi"
kind "StaticLib"
language "C++"
cppdialect "C++17"

targetdir("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
objdir("%{wks.location}/Binaries/Intermediates/" .. outputdir .. "/%{prj.name}")

files {"include/**.h", "src/**.cpp", "src/**.h", "thirdparty/**.h", "thirdparty/**.hpp"}
includedirs {"include", "src", "thirdparty/Vulkan-Headers/include"}

filter "system:windows"
systemversion "latest"

filter "configurations:Debug"
runtime "Debug"
symbols "on"

filter "configurations:Release"
runtime "Release"
optimize "on"

