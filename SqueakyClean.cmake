# Applies strict compile flags to a target for high code quality
# Usage: target_enable_squeaky_clean(MyTarget INTERFACE|PUBLIC|PRIVATE)

function(target_enable_squeaky_clean target visibility)
    if (NOT MSVC)
        target_compile_options(${target} ${visibility}
            -Wall
            -Wextra
            -Wpedantic
            -Werror)
    else ()
        target_compile_options(${target} ${visibility}
            /W4
            /WX)
    endif ()
endfunction()
