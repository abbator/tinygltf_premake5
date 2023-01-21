project "tinygltf"
    kind "StaticLib"
    language "C++"
    cppdialect "C++11"
    staticruntime "on"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "%{prj.name}/**.h",
        "%{prj.name}/**.cc",
        "%{prj.name}/**.hpp",
        "%{prj.name}/**.cpp",
    }
    
    filter "system:windows"
        systemversion "latest"
        
    filter "configurations:Debug"
            defines "EMGR_DEBUG"
            defines "VULKAN_VALIDATION_ENABLED"
            runtime "Debug"
            symbols "on"
           
    filter "configurations:Gameplay"
        defines "EMGR_GAMEPLAY"
        runtime "Release"
        optimize "on"
    
    filter "configurations:Release"
        defines "EMGR_RELEASE"
        runtime "Release"
        optimize "on"
         
         
