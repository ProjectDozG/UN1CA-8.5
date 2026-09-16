if [[ ! "$TARGET_CODENAME" == "a14"  ]]; then    
    LOG_STEP_IN "- Adding stock SoundBooster libs"
    ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib/lib_SoundBooster_ver1050.so" 0 0 644 "u:object_r:system_lib_file:s0"
    DELETE_FROM_WORK_DIR "system" "system/lib/lib_SoundBooster_ver1100.so"
    ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib/libsamsungSoundbooster_plus_legacy.so" 0 0 644 "u:object_r:system_lib_file:s0"
    ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/lib_SoundBooster_ver1050.so" 0 0 644 "u:object_r:system_lib_file:s0"
    DELETE_FROM_WORK_DIR "system" "system/lib64/lib_SoundBooster_ver1100.so"
    ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libsamsungSoundbooster_plus_legacy.so" 0 0 644 "u:object_r:system_lib_file:s0"
    LOG_STEP_OUT
fi

if [ "$TARGET_PLATFORM_SDK_VERSION" -lt "34" ]; then
    DELETE_FROM_WORK_DIR "system" "system/etc/vintf/manifest/fabric_crypto_manifest.xml"
    DELETE_FROM_WORK_DIR "system" "system/etc/init/fabric_crypto.rc"
    DELETE_FROM_WORK_DIR "system" "system/bin/fabric_crypto"
fi

LOG_STEP_IN "- Adding 32-bit WFD blobs"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/bin/insthk" 0 2000 755 "u:object_r:insthk_exec:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/bin/remotedisplay" 0 2000 755 "u:object_r:remotedisplay_exec:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/android.hardware.graphics.extension.composer3-V1-ndk.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/libhdcp_client_aidl.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/libhdcp2.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/libremotedisplay_wfd.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/libremotedisplayservice.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/librepeater.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/libsecuibc.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/libstagefright_hdcp.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/libtsmux.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/vendor.samsung.hardware.security.hdcp.wifidisplay-V2-ndk.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/vendor.samsung_slsi.hardware.ExynosHWCServiceTW@1.0.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/vendor.samsung_slsi.hardware.graphics.extension.composer3-V4-ndk.so" 0 0 644 "u:object_r:system_lib_file:s0"
ADD_TO_WORK_DIR "r9sxxx" "system" "system/lib/wfd_log.so" 0 0 644 "u:object_r:system_lib_file:s0"
DELETE_FROM_WORK_DIR "system" "system/lib64/android.hardware.graphics.extension.composer3-V1-ndk.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libhdcp_client_aidl.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libhdcp2.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libremotedisplay_wfd.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libremotedisplayservice.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/librepeater.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libsecuibc.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libstagefright_hdcp.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/libtsmux.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/vendor.samsung.hardware.security.hdcp.wifidisplay-V2-ndk.so"
DELETE_FROM_WORK_DIR "system" "system/lib64/wfd_log.so"
LOG_STEP_OUT

# Radio FM jni blob
ADD_TO_WORK_DIR "$TARGET_FIRMWARE" "system" "system/lib64/libfmradio_jni.so" 0 0 644 "u:object_r:system_lib_file:s0"

# MultiFrameProcessing10 blob for camera
ADD_TO_WORK_DIR "a14nsxx" "system" "system/lib64/libMultiFrameProcessing10.camera.samsung.so" 0 0 644 "u:object_r:system_lib_file:s0"
EVAL "echo \"libMultiFrameProcessing10.camera.samsung.so\" >> \"$WORK_DIR/system/system/etc/public.libraries-camera.samsung.txt\""

# Snap
if [[ "$TARGET_BOARD_API_LEVEL" == "33" ]]; then
    ADD_TO_WORK_DIR "a14xub" "vendor" "lib64/libsnaplite_native.so" 0 0 644 "u:object_r:same_process_hal_file:s0"
fi

# VlsMesDetector blobs
ADD_TO_WORK_DIR "$SOURCE_FIRMWARE" "vendor" "etc/VslMesDetector" 0 2000 755 "u:object_r:vendor_configs_file:s0"
