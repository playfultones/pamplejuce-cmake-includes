# Test assets - reference audio files for validation tests
# These are only linked against the Tests target, not the plugin itself
file(GLOB_RECURSE TestAssetFiles CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/test_assets/*")
list (FILTER TestAssetFiles EXCLUDE REGEX "/\\.DS_Store$")

# Setup our binary data as a target called TestAssets
# Use unique HEADER_NAME and NAMESPACE to avoid conflicts with plugin Assets
juce_add_binary_data(TestAssets
    HEADER_NAME "TestAssets.h"
    NAMESPACE "TestAssets"
    SOURCES ${TestAssetFiles})

# Required for Linux happiness
set_target_properties(TestAssets PROPERTIES POSITION_INDEPENDENT_CODE TRUE)
