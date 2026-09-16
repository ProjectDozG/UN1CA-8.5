if [ "$TARGET_PLATFORM_SDK_VERSION" -lt "34" ]; then
    # Delete old files
    DELETE_FROM_WORK_DIR "vendor" "lib64/android.hardware.radio.config@1.0.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/android.hardware.radio.config@1.1.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/android.hardware.radio.config@1.2.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/android.hardware.radio.deprecated@1.0.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/android.hardware.radio@1.3.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/android.hardware.radio@1.4.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/android.hardware.radio@1.5.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.radio.bridge@2.0.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.radio.bridge@2.1.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.radio.channel@2.0.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.radio@2.0.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.radio@2.1.so"
    DELETE_FROM_WORK_DIR "vendor" "lib64/vendor.samsung.hardware.radio@2.2.so"
    
    # /vendor/bin/hw
    EVAL "cp -f \"$MODPATH/bin/hw/rild\" \"$WORK_DIR/vendor/bin/hw/rild\""
    SET_METADATA "vendor" "bin/hw/rild" 0 2000 755 "u:object_r:rild_exec:s0"
    
    # /vendor/etc/vintf
    EVAL "cp -f \"$MODPATH/etc/vintf/manifest/vendor.samsung.hardware.radio.exclude.slsi.xml\" \"$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.radio.exclude.slsi.xml\""
    EVAL "cp -f \"$MODPATH/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_34.xml\" \"$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_34.xml\""
    EVAL "cp -f \"$MODPATH/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_34.xml\" \"$WORK_DIR/vendor/etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_34.xml\""
    SET_METADATA "vendor" "etc/vintf/manifest/vendor.samsung.hardware.radio.exclude.slsi.xml" 0 0 644 "u:object_r:vendor_configs_file:s0"
    SET_METADATA "vendor" "etc/vintf/manifest/vendor.samsung.hardware.radio_manifest_2_34.xml" 0 0 644 "u:object_r:vendor_configs_file:s0"
    SET_METADATA "vendor" "etc/vintf/manifest/vendor.samsung.hardware.sehradio_manifest_2_34.xml" 0 0 644 "u:object_r:vendor_configs_file:s0"
    
    EVAL "cp -f \"$MODPATH/etc/vintf/manifest_$TARGET_BOARD_API_LEVEL.xml\" \"$WORK_DIR/vendor/etc/vintf/manifest.xml\""
    SET_METADATA "vendor" "etc/vintf/manifest.xml" 0 0 644 "u:object_r:vendor_configs_file:s0"
    
    # /vendor/lib64
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio@1.0.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio@1.0.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio@1.1.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio@1.1.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio@1.2.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio@1.2.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio.config-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio.config-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio.data-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio.data-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio.messaging-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio.messaging-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio.modem-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio.modem-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio.network-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio.network-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio.sim-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio.sim-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/android.hardware.radio.voice-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/android.hardware.radio.voice-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/libprotobuf-cpp-full-21.7.so\" \"$WORK_DIR/vendor/lib64/libprotobuf-cpp-full-21.7.so\""
    EVAL "cp -f \"$MODPATH/lib64/libprotobuf-cpp-lite-21.7.so\" \"$WORK_DIR/vendor/lib64/libprotobuf-cpp-lite-21.7.so\""
    EVAL "cp -f \"$MODPATH/lib64/libril_sem.so\" \"$WORK_DIR/vendor/lib64/libril_sem.so\""
    EVAL "cp -f \"$MODPATH/lib64/librilutils.so\" \"$WORK_DIR/vendor/lib64/librilutils.so\""
    EVAL "cp -f \"$MODPATH/lib64/libsecril-client.so\" \"$WORK_DIR/vendor/lib64/libsecril-client.so\""
    EVAL "cp -f \"$MODPATH/lib64/libsec-ril.so\" \"$WORK_DIR/vendor/lib64/libsec-ril.so\""
    EVAL "cp -f \"$MODPATH/lib64/libSemDataProps.so\" \"$WORK_DIR/vendor/lib64/libSemDataProps.so\""
    EVAL "cp -f \"$MODPATH/lib64/libSemTelephonyProps.so\" \"$WORK_DIR/vendor/lib64/libSemTelephonyProps.so\""
    EVAL "cp -f \"$MODPATH/lib64/vendor.samsung.hardware.radio.bridge-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/vendor.samsung.hardware.radio.bridge-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/vendor.samsung.hardware.radio.channel-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/vendor.samsung.hardware.radio.channel-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/vendor.samsung.hardware.radio.data-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/vendor.samsung.hardware.radio.data-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/vendor.samsung.hardware.radio.messaging-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/vendor.samsung.hardware.radio.messaging-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/vendor.samsung.hardware.radio.network-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/vendor.samsung.hardware.radio.network-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/vendor.samsung.hardware.radio.sim-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/vendor.samsung.hardware.radio.sim-V1-ndk.so\""
    EVAL "cp -f \"$MODPATH/lib64/vendor.samsung.hardware.radio-V1-ndk.so\" \"$WORK_DIR/vendor/lib64/vendor.samsung.hardware.radio-V1-ndk.so\""
    SET_METADATA "vendor" "lib64/android.hardware.radio@1.0.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio@1.1.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio@1.2.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio.config-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio.data-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio.messaging-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio.modem-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio.network-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio.sim-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/android.hardware.radio.voice-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/libprotobuf-cpp-full-21.7.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/libprotobuf-cpp-lite-21.7.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/libril_sem.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/librilutils.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/libsecril-client.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/libsec-ril.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/libSemDataProps.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/libSemTelephonyProps.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/vendor.samsung.hardware.radio.bridge-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/vendor.samsung.hardware.radio.channel-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/vendor.samsung.hardware.radio.data-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/vendor.samsung.hardware.radio.messaging-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/vendor.samsung.hardware.radio.network-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/vendor.samsung.hardware.radio.sim-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    SET_METADATA "vendor" "lib64/vendor.samsung.hardware.radio-V1-ndk.so" 0 0 644 "u:object_r:vendor_file:s0"
    
    # Dual SIM fix - not required for UN1CA but it is for a16+
    EVAL "echo \"    setprop ro.telephony.sim_slots.count 2\" >> \"$WORK_DIR/vendor/etc/init/init.baseband.rc\""
    
    # SELinux
    LOG "- Adding SELinux entries"
    if [[ "$TARGET_BOARD_API_LEVEL" == "31" ]]; then
        {
            echo "(allow vendor_init_31_0 telephony_prop (property_service (set)))"
        } >> "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
    elif [[ "$TARGET_BOARD_API_LEVEL" == "33" ]]; then
        {
            echo "(allow vendor_init_33_0 telephony_prop (property_service (set)))"
        } >> "$WORK_DIR/vendor/etc/selinux/vendor_sepolicy.cil"
    fi
else
    LOG "\033[0;33m! Nothing to do\033[0m"
    return 0
fi
