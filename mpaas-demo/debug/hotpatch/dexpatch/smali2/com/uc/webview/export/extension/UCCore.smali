.class public Lcom/uc/webview/export/extension/UCCore;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/extension/UCCore$Callable;
    }
.end annotation


# static fields
.field public static final AC_FLAG_DEFAULT:I = -0x1

.field public static final AC_FLAG_HAC:I = 0x1

.field public static final AC_FLAG_SWAC:I = 0x0

.field public static final ADAPTER_BUILD_TIMING:Ljava/lang/String; = "adapter_build_timing"

.field public static final ADAPTER_BUILD_VERSOPM:Ljava/lang/String; = "adapter_build_version"

.field public static final BUSINESS_INIT_BY_NEW_CORE_DEX_DIR:Ljava/lang/String; = "bit_by_new_dex_dir"

.field public static final BUSINESS_INIT_BY_NEW_CORE_ZIP_FILE:Ljava/lang/String; = "bit_by_new_zip_file"

.field public static final BUSINESS_INIT_BY_OLD_CORE_DEX_DIR:Ljava/lang/String; = "bit_by_old_dex_dir"

.field public static final CD_DISABLE_UCDNS:Ljava/lang/String; = "disable_ucdns"

.field public static final CD_ENABLE_NET_THREAD_REDUCE:Ljava/lang/String; = "dec_thread"

.field public static final CD_ENABLE_TRAFFIC_STAT:Ljava/lang/String; = "traffic_stat"

.field public static final COMPATIBLE_POLICY_ALL:I = 0x7

.field public static final COMPATIBLE_POLICY_ARMV5:I = 0x1

.field public static final COMPATIBLE_POLICY_ARMV7:I = 0x2

.field public static final COMPATIBLE_POLICY_X86:I = 0x4

.field public static final CORE_EVENT_CLEAR_DNS_CACHE:I = 0x0

.field public static final CORE_EVENT_CLEAR_HTTP_CACHE:I = 0x3

.field public static final CORE_EVENT_CONSOLE_CALLBACK:I = 0x6

.field public static final CORE_EVENT_DELETE_SERVICEWORKER_CACHE:I = 0x4

.field public static final CORE_EVENT_DELETE_SERVICEWORKER_CACHE_SYNC:I = 0x9

.field public static final CORE_EVENT_DISPATCH_WEBGL_EVENT:I = 0x12

.field public static final CORE_EVENT_GET_HTTP_CACHE_SIZE:I = 0x1

.field public static final CORE_EVENT_HTTP2_HOST_LIST:I = 0x8

.field public static final CORE_EVENT_INIT_WPK:I = 0xd

.field public static final CORE_EVENT_MAX_REQUEST_LIMITATION:I = 0x7

.field public static final CORE_EVENT_ON_ACTIVITY_RECREATE:I = 0xb

.field public static final CORE_EVENT_PUSH_DNS_RESULT:I = 0x5

.field public static final CORE_EVENT_SERVICEWORKER_PUSHMESSAGE:I = 0x2

.field public static final CORE_EVENT_SET_MAX_CACHESIZE:I = 0xa

.field public static final CORE_EVENT_SET_WPK_CALLBACK:I = 0xe

.field public static final CORE_EVENT_SET_WPK_COMMON_CUSTOM_FILELDS:I = 0xf

.field public static final CORE_EVENT_SET_WPK_CONFIGS:I = 0x10

.field public static final CORE_EVENT_THIRDPARTY_NETWORK_REQUEST_RETRY:I = 0x14

.field public static final DELETE_CORE_POLICY_ALL:I = 0x3f

.field public static final DELETE_CORE_POLICY_FILE_VERIFY_FAILED:I = 0x10

.field public static final DELETE_CORE_POLICY_LOAD_SO_ERROR:I = 0x2

.field public static final DELETE_CORE_POLICY_MULTI_CRASH:I = 0x4

.field public static final DELETE_CORE_POLICY_NONE:I = 0x0

.field public static final DELETE_CORE_POLICY_OTHER:I = 0x20

.field public static final DELETE_CORE_POLICY_SO_HASH_MISMATCH:I = 0x8

.field public static final DELETE_CORE_POLICY_SO_SIZE_MISMATCH:I = 0x1

.field public static final DEX2OAT_POLICY_DEFAULT:I = 0x0

.field public static final DEX2OAT_POLICY_DELAY:I = 0x1

.field public static final ENABLE_WEBVIEW_LISTENER_STANDARDIZATION_OPTION:Ljava/lang/String; = "enable_webview_listener_standardization"

.field public static final EVENT_COST:Ljava/lang/String; = "cost"

.field public static final EVENT_DELAY_SEARCH_CORE_FILE:Ljava/lang/String; = "e_delay_search_core_file"

.field public static final EVENT_DELETE_FILE_FINISH:Ljava/lang/String; = "be_del_fi"

.field public static final EVENT_DIE:Ljava/lang/String; = "die"

.field public static final EVENT_DOWNLOAD_EXCEPTION:Ljava/lang/String; = "downloadException"

.field public static final EVENT_DOWNLOAD_FILE_DELETE:Ljava/lang/String; = "downloadFileDelete"

.field public static final EVENT_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final EVENT_GONE:Ljava/lang/String; = "gone"

.field public static final EVENT_INIT_CORE_EXCEPTON:Ljava/lang/String; = "be_init_exception"

.field public static final EVENT_INIT_CORE_SUCCESS:Ljava/lang/String; = "be_init_success"

.field public static final EVENT_ODEX_DONE:Ljava/lang/String; = "e_odex_done"

.field public static final EVENT_PAUSE:Ljava/lang/String; = "pause"

.field public static final EVENT_PROGRESS:Ljava/lang/String; = "progress"

.field public static final EVENT_REPAIR:Ljava/lang/String; = "repair"

.field public static final EVENT_RESUME:Ljava/lang/String; = "resume"

.field public static final EVENT_START:Ljava/lang/String; = "start"

.field public static final EVENT_STAT:Ljava/lang/String; = "stat"

.field public static final EVENT_STOP:Ljava/lang/String; = "stop"

.field public static final EVENT_SUCCESS:Ljava/lang/String; = "success"

.field public static final EVENT_UPDATE_PROGRESS:Ljava/lang/String; = "updateProgress"

.field public static final EVENT_UPDATE_SHARE_CORE:Ljava/lang/String; = "shareCoreEvt"

.field public static final GLOBAL_OPTION_IS_BROWSER_RUNTIME:Ljava/lang/String; = "go_is_bw_rt"

.field public static final GPU_PROCESS_FULL:I = 0x2

.field public static final GPU_PROCESS_IN_PROCESS:I = 0x1

.field public static final GPU_PROCESS_NONE:I = 0x0

.field public static final LEGACY_EVENT_INIT:Ljava/lang/String; = "init"

.field public static final LEGACY_EVENT_LOAD:Ljava/lang/String; = "load"

.field public static final LEGACY_EVENT_SETUP:Ljava/lang/String; = "setup"

.field public static final LEGACY_EVENT_SWITCH:Ljava/lang/String; = "switch"

.field public static final LOAD_POLICY_SPECIFIED_ONLY:Ljava/lang/String; = "SPECIFIED_ONLY"

.field public static final LOAD_POLICY_SPECIFIED_OR_UCMOBILE:Ljava/lang/String; = "SPECIFIED_OR_UCMOBILE"

.field public static final LOAD_POLICY_UCMOBILE_ONLY:Ljava/lang/String; = "UCMOBILE_ONLY"

.field public static final LOAD_POLICY_UCMOBILE_OR_SPECIFIED:Ljava/lang/String; = "UCMOBILE_OR_SPECIFIED"

.field public static final OPTION_APP_STARTUP_OPPORTUNITY:Ljava/lang/String; = "app_st_o"

.field public static final OPTION_APP_STARTUP_TIME:Ljava/lang/String; = "app_st_t"

.field public static final OPTION_BUSINESS_DECOMPRESS_ROOT_PATH:Ljava/lang/String; = "bo_dec_r_p"

.field public static final OPTION_BUSINESS_INIT_TYPE:Ljava/lang/String; = "bo_init_type"

.field public static final OPTION_CHECK_DECOMPRESS_FINISH:Ljava/lang/String; = "chkDecFinish"

.field public static final OPTION_CHECK_MULTI_CORE:Ljava/lang/String; = "chkMultiCore"

.field public static final OPTION_COMPATIBLE_POLICY:Ljava/lang/String; = "COMPATIBLE_POLICY"

.field public static final OPTION_CONNECTION_CONNECT_TIMEOUT:Ljava/lang/String; = "conn_to"

.field public static final OPTION_CONNECTION_READ_TIMEOUT:Ljava/lang/String; = "read_to"

.field public static final OPTION_CONTEXT:Ljava/lang/String; = "CONTEXT"

.field public static final OPTION_CONTINUE_ODEX_ON_DECOMPRESSED:Ljava/lang/String; = "bo_continue_odex"

.field public static final OPTION_CORE_VERSION_EXCLUDE:Ljava/lang/String; = "core_ver_excludes"

.field public static final OPTION_CURRENT_IS_UC_CORE:Ljava/lang/String; = "o_st_cisuc"

.field public static final OPTION_DECOMPRESS_AND_ODEX_CALLBACK:Ljava/lang/String; = "bo_dec_odex_cb"

.field public static final OPTION_DECOMPRESS_AND_ODEX_TASK_WAIT_MILIS:Ljava/lang/String; = "bo_dec_odex_wm"

.field public static final OPTION_DECOMPRESS_CALLBACK:Ljava/lang/String; = "bo_dec_cl"

.field public static final OPTION_DECOMPRESS_ROOT_DIR:Ljava/lang/String; = "bo_dec_root_dir"

.field public static final OPTION_DEC_FILE:Ljava/lang/String; = "o_dec_file"

.field public static final OPTION_DELETE_AFTER_EXTRACT:Ljava/lang/String; = "bo_del_aft_extract"

.field public static final OPTION_DELETE_CORE_POLICY:Ljava/lang/String; = "delete_core"

.field public static final OPTION_DELETE_OLD_DEX_DIR:Ljava/lang/String; = "bo_dex_old_dex_dir"

.field public static final OPTION_DEX2OAT_POLICY:Ljava/lang/String; = "DEX2OAT_POLICY"

.field public static final OPTION_DEX_FILE_PATH:Ljava/lang/String; = "dexFilePath"

.field public static final OPTION_DISTINGUISH_JS_ERROR:Ljava/lang/String; = "distinguish_js_error"

.field public static final OPTION_DOWNLOAD_CHECKER:Ljava/lang/String; = "dlChecker"

.field public static final OPTION_DWN_RETRY_MAX_WAIT_MILIS:Ljava/lang/String; = "dwnRetryMaxWait"

.field public static final OPTION_DWN_RETRY_WAIT_MILIS:Ljava/lang/String; = "dwnRetryWait"

.field public static final OPTION_ENABLE_LOAD_CLASS:Ljava/lang/String; = "bo_enable_load_class"

.field public static final OPTION_EXACT_LAST_MODIFIED_CHECK:Ljava/lang/String; = "exact_mod"

.field public static final OPTION_EXACT_OLD_KERNEL_CHECK:Ljava/lang/String; = "exact_old"

.field public static final OPTION_FIRST_USE_SYSTEM_WEBVIEW:Ljava/lang/String; = "first_use_sw"

.field public static final OPTION_FORBID_GEN_REPAIR_DIR:Ljava/lang/String; = "forbid_repair"

.field public static final OPTION_FORCE_USE_BUSINESS_DECOMPRESS_ROOT_PATH:Ljava/lang/String; = "bo_f_u_dec_r_p"

.field public static final OPTION_GPU_PROCESS_MODE:Ljava/lang/String; = "gpu_process_mode"

.field public static final OPTION_GRANT_ALL_BUILDS:Ljava/lang/String; = "grant_all_builds"

.field public static final OPTION_HARDWARE_ACCELERATED:Ljava/lang/String; = "AC"

.field public static final OPTION_HAS_UPDATE_SOURCE:Ljava/lang/String; = "o_st_hupds"

.field public static final OPTION_INIT_IN_SETUP_THREAD:Ljava/lang/String; = "init_setup_thread"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OPTION_INJECT_LIBRARY_PATH_CALLBACK:Ljava/lang/String; = "e_in_lp_cb"

.field public static final OPTION_LOAD_KERNEL_TYPE:Ljava/lang/String; = "load"

.field public static final OPTION_LOAD_POLICY:Ljava/lang/String; = "loadPolicy"

.field public static final OPTION_LOAD_SHARE_CORE_HOST:Ljava/lang/String; = "load_share_core_host"

.field public static final OPTION_LOCAL_DIR:Ljava/lang/String; = "o_local_dir"

.field public static final OPTION_LOG_CONFIG:Ljava/lang/String; = "log_conf"

.field public static final OPTION_MULTI_CORE_TYPE:Ljava/lang/String; = "MULTI_CORE_TYPE"

.field public static final OPTION_MULTI_UNKNOWN_CRASH_DISABLE:Ljava/lang/String; = "disable_multi_unknown_crash"

.field public static final OPTION_NEW_UCM_ZIP_FILE:Ljava/lang/String; = "bo_new_ucm_zf"

.field public static final OPTION_NEW_UCM_ZIP_TYPE:Ljava/lang/String; = "bo_new_ucm_z_type"

.field public static final OPTION_NOT_SWITCH_UCCORE:Ljava/lang/String; = "oNotSwUCCore"

.field public static final OPTION_NOT_USE_7Z_CORE:Ljava/lang/String; = "not_use_7z_core"

.field public static final OPTION_OLD_DEX_DIR_PATH:Ljava/lang/String; = "bo_old_dex_dp"

.field public static final OPTION_ONLY_STAT_DEVICES_HAS_CORE_SHARE:Ljava/lang/String; = "o_st_dhcs"

.field public static final OPTION_PRECREATE_WEBVIEW:Ljava/lang/String; = "precreate_webview"

.field public static final OPTION_PRECREATE_WEBVIEW_URL:Ljava/lang/String; = "precreate_webview_url"

.field public static final OPTION_PRIVATE_DATA_DIRECTORY_SUFFIX:Ljava/lang/String; = "PRIVATE_DATA_DIRECTORY_SUFFIX"

.field public static final OPTION_PROMISE_SPECIAL_VERSION_CORE_INIT:Ljava/lang/String; = "bo_prom_sp_v_c_i"

.field public static final OPTION_PROVIDED_KEYS:Ljava/lang/String; = "provided_keys"

.field public static final OPTION_RES_FILE_PATH:Ljava/lang/String; = "resFilePath"

.field public static final OPTION_ROOT_TASK_KEY:Ljava/lang/String; = "root_task_key"

.field public static final OPTION_SDK_INTERNATIONAL_ENV:Ljava/lang/String; = "sdk_international_env"

.field public static final OPTION_SDK_VERSION_EXCLUDE:Ljava/lang/String; = "sdk_ver_excludes"

.field public static final OPTION_SETUP_CREATE_THREAD:Ljava/lang/String; = "setup_create_thread"

.field public static final OPTION_SETUP_THREAD_PRIORITY:Ljava/lang/String; = "setup_priority"

.field public static final OPTION_SET_ODEX_ROOT_PATH:Ljava/lang/String; = "set_odex_path"

.field public static final OPTION_SHARE_CORE_SETUP_TASK_FLAG:Ljava/lang/String; = "scst_flag"

.field public static final OPTION_SKIP_OLD_KERNEL:Ljava/lang/String; = "skip_old_extra_kernel"

.field public static final OPTION_SKIP_PRECONDITIONS_IO_CHECK:Ljava/lang/String; = "bo_skip_io_dc"

.field public static final OPTION_SO_FILE_PATH:Ljava/lang/String; = "soFilePath"

.field public static final OPTION_SPEEDUP_DEXOPT_POLICY:Ljava/lang/String; = "speedup_dexopt"

.field public static final OPTION_STARTUP_POLICY:Ljava/lang/String; = "startup_policy"

.field public static final OPTION_START_INIT_UC_CORE:Ljava/lang/String; = "bo_s_i_uc_core"

.field public static final OPTION_THICK_INTEGRATION:Ljava/lang/String; = "THICK_INTEGRATION"

.field public static final OPTION_UCMOBILE_INIT:Ljava/lang/String; = "bo_ucm_init"

.field public static final OPTION_UCM_CFG_FILE:Ljava/lang/String; = "ucmCfgFile"

.field public static final OPTION_UCM_KRL_DIR:Ljava/lang/String; = "ucmKrlDir"

.field public static final OPTION_UCM_LIB_DIR:Ljava/lang/String; = "ucmLibDir"

.field public static final OPTION_UCM_PATCH_DIR:Ljava/lang/String; = "ucmPatDir"

.field public static final OPTION_UCM_UPD_URL:Ljava/lang/String; = "ucmUpdUrl"

.field public static final OPTION_UCM_ZIP_DIR:Ljava/lang/String; = "ucmZipDir"

.field public static final OPTION_UCM_ZIP_FILE:Ljava/lang/String; = "ucmZipFile"

.field public static final OPTION_UC_PLAYER_ROOT:Ljava/lang/String; = "ucPlayerRoot"

.field public static final OPTION_UC_PROXY_ADBLOCK:Ljava/lang/String; = "proxy_adblock"

.field public static final OPTION_UPDATE_PROCESS_LOCK:Ljava/lang/String; = "upd_pro_lk"

.field public static final OPTION_UPD_SETUP_TASK_WAIT_MILIS:Ljava/lang/String; = "updWait"

.field public static final OPTION_USE_SDK_SETUP:Ljava/lang/String; = "sdk_setup"

.field public static final OPTION_USE_SYSTEM_WEBVIEW:Ljava/lang/String; = "SYSTEM_WEBVIEW"

.field public static final OPTION_USE_UC_PLAYER:Ljava/lang/String; = "ucPlayer"

.field public static final OPTION_VERIFY_POLICY:Ljava/lang/String; = "VERIFY_POLICY"

.field public static final OPTION_VIDEO_HARDWARE_ACCELERATED:Ljava/lang/String; = "VIDEO_AC"

.field public static final OPTION_VMSIZE_SAVING:Ljava/lang/String; = "vmsize_saving"

.field public static final OPTION_WAP_DENY:Ljava/lang/String; = "wap_deny"

.field public static final OPTION_WEBVIEW_MULTI_PROCESS:Ljava/lang/String; = "webview_multi_process"

.field public static final OPTION_WEBVIEW_MULTI_PROCESS_ENABLE_SECCOMP:Ljava/lang/String; = "ucm_multi_process_enable_seccomp"

.field public static final OPTION_WEBVIEW_MULTI_PROCESS_ENABLE_SERVICE_SPEEDUP:Ljava/lang/String; = "webview_multi_process_enable_service_speedup"

.field public static final OPTION_WEBVIEW_MULTI_PROCESS_FALLBACK_TIMEOUT:Ljava/lang/String; = "webview_multi_process_fallback_timeout"

.field public static final OPTION_WEBVIEW_POLICY:Ljava/lang/String; = "WEBVIEW_POLICY"

.field public static final OPTION_WEBVIEW_POLICY_WAIT_MILLIS:Ljava/lang/String; = "wait_fallback_sys"

.field public static final OPTION_ZIP_FILE_TYPE:Ljava/lang/String; = "o_zio_file_type"

.field public static final PRE_INIT_EVENT_DECOMPRESS:I = 0x0

.field public static final PRE_INIT_EVENT_ICU:I = 0x9

.field public static final PRE_INIT_EVENT_INIT_WEBVIEW_PROVIDER:I = 0x6

.field public static final PRE_INIT_EVENT_LOAD_CORE_CLASS:I = 0x3

.field public static final PRE_INIT_EVENT_LOAD_IO:I = 0x1

.field public static final PRE_INIT_EVENT_LOAD_JAR:I = 0x4

.field public static final PRE_INIT_EVENT_LOAD_SDK_CLASS:I = 0x2

.field public static final PRE_INIT_EVENT_LOAD_SO:I = 0x5

.field public static final PRE_INIT_EVENT_PAK:I = 0x8

.field public static final PRE_INIT_EVENT_PRE_PROCESS:I = 0xa

.field public static final PRE_INIT_EVENT_START_CORE_ENGINE:I = 0x7

.field public static final PROCESS_PRIVATE_DATA_DIR_SUFFIX_OPTION:Ljava/lang/String; = "process_private_data_dir_suffix"

.field public static final QUICK_VERIFIED_RESULT_FAILED:I = 0x2

.field public static final QUICK_VERIFIED_RESULT_NOFLAG:I = 0x0

.field public static final QUICK_VERIFIED_RESULT_SUCCESS:I = 0x1

.field public static final SPEEDUP_DEXOPT_POLICY_ALL:I = 0x7ff

.field public static final SPEEDUP_DEXOPT_POLICY_ART:I = 0x780

.field public static final SPEEDUP_DEXOPT_POLICY_DAVIK:I = 0x7f

.field public static final SPEEDUP_DEXOPT_POLICY_NONE:I = 0x0

.field public static final STARTUP_ELAPSE_BEETWEEN_UC_INIT_AND_APP:Ljava/lang/String; = "st_el_b_uc_and_app"

.field public static final STARTUP_POLICY_DEFAULT:I = 0x10

.field public static final STARTUP_POLICY_ENABLE_ALL_STARTUP_OPT:I = 0x10

.field public static final STARTUP_POLICY_NONE:I = 0x0

.field public static final VERIFY_POLICY_ALL:I = 0x4000002f

.field public static final VERIFY_POLICY_ALL_FULL_HASH:I = -0x3fffff81

.field public static final VERIFY_POLICY_ASYNC:I = -0x80000000

.field public static final VERIFY_POLICY_BROWSER_IF:I = 0x2

.field public static final VERIFY_POLICY_CORE_IMPL:I = 0x4

.field public static final VERIFY_POLICY_NONE:I = 0x0

.field public static final VERIFY_POLICY_PAK:I = 0x20

.field public static final VERIFY_POLICY_PAK_FULL_HASH:I = 0x40

.field public static final VERIFY_POLICY_PAK_QUICK:I = 0x20000000

.field public static final VERIFY_POLICY_QUICK:I = 0x40000000

.field public static final VERIFY_POLICY_SDK_SHELL:I = 0x1

.field public static final VERIFY_POLICY_SO:I = 0x8

.field public static final VERIFY_POLICY_SO_FULL_HASH:I = 0x10

.field public static final VERIFY_POLICY_SO_QUICK:I = 0x10000000

.field public static final VERIFY_POLICY_WITH_MD5:I = 0x100000

.field public static final VERIFY_POLICY_WITH_SHA1:I = 0x200000

.field public static final VERIFY_POLICY_WITH_SHA256:I = 0x400000

.field public static final VIDEO_AC_FLAG_DEFAULT:I = -0x1

.field public static final VIDEO_AC_FLAG_HAC:I = 0x1

.field public static final VIDEO_AC_FLAG_SWAC:I = 0x0

.field public static final WEBVIEW_MULTI_PROCESS_ISOLATE:I = 0x2

.field public static final WEBVIEW_MULTI_PROCESS_NONE:I = 0x0

.field public static final WEBVIEW_MULTI_PROCESS_NORMAL:I = 0x1

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_EXCEPTION:I = 0x3

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_FALLBACK_SYSTEM:I = 0x2

.field public static final WEBVIEW_POLICY_WAIT_UNTIL_LOADED:I = 0x1

.field private static a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1316
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 11

    .line 53
    nop

    .line 4413
    invoke-static {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUCPlayerRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 4416
    const-wide/16 v1, 0x400

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 4417
    const-wide/16 v1, 0x800

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 4418
    const-wide/16 v1, 0x1000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 4419
    const-wide/16 v1, 0x2000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 4420
    const-wide/16 v1, 0x4000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 4421
    const-wide/32 v1, 0x8000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 4422
    const-wide/32 v1, 0x10000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/Long;)V

    .line 4423
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    const-string v2, "sdk_ecur1"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4424
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    const-string v2, "sdk_ecdl1"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4425
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    const-string v2, "sdk_ecv1"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4426
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->q:Ljava/util/Map;

    const-string v2, "sdk_ecuz1"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4427
    new-instance v8, Lcom/uc/webview/export/extension/i;

    invoke-direct {v8}, Lcom/uc/webview/export/extension/i;-><init>()V

    .line 4463
    new-instance v1, Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libu3player.so"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/uc/webview/export/utility/download/UpdateTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 4466
    new-instance p1, Lcom/uc/webview/export/extension/g;

    invoke-direct {p1}, Lcom/uc/webview/export/extension/g;-><init>()V

    const-string v2, "beginDownload"

    invoke-virtual {v1, v2, p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p1

    new-instance v1, Lcom/uc/webview/export/extension/f;

    invoke-direct {v1}, Lcom/uc/webview/export/extension/f;-><init>()V

    .line 4472
    const-string v2, "beginUnZip"

    invoke-virtual {p1, v2, v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p1

    new-instance v1, Lcom/uc/webview/export/extension/p;

    invoke-direct {v1}, Lcom/uc/webview/export/extension/p;-><init>()V

    .line 4478
    const-string v2, "unzipSuccess"

    invoke-virtual {p1, v2, v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p1

    new-instance v1, Lcom/uc/webview/export/extension/o;

    invoke-direct {v1, p2}, Lcom/uc/webview/export/extension/o;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4483
    const-string p2, "check"

    invoke-virtual {p1, p2, v1}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p1

    new-instance p2, Lcom/uc/webview/export/extension/n;

    invoke-direct {p2, p0, p3}, Lcom/uc/webview/export/extension/n;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    .line 4495
    const-string p0, "success"

    invoke-virtual {p1, p0, p2}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p0

    new-instance p1, Lcom/uc/webview/export/extension/m;

    invoke-direct {p1}, Lcom/uc/webview/export/extension/m;-><init>()V

    .line 4501
    const-string p2, "failed"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p0

    new-instance p1, Lcom/uc/webview/export/extension/k;

    invoke-direct {p1, p3}, Lcom/uc/webview/export/extension/k;-><init>(Ljava/util/Map;)V

    .line 4506
    const-string p2, "exception"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p0

    new-instance p1, Lcom/uc/webview/export/extension/j;

    invoke-direct {p1, p3, v0}, Lcom/uc/webview/export/extension/j;-><init>(Ljava/util/Map;Ljava/io/File;)V

    .line 4529
    const-string p2, "exists"

    invoke-virtual {p0, p2, p1}, Lcom/uc/webview/export/utility/download/UpdateTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/utility/download/UpdateTask;

    move-result-object p0

    .line 4551
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 53
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    .line 53
    nop

    .line 5397
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->d(Landroid/content/Context;)V

    .line 5398
    if-eqz p1, :cond_0

    .line 5399
    const-string p0, "success"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/ValueCallback;

    .line 5400
    if-eqz p0, :cond_0

    .line 5402
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5405
    return-void

    .line 5404
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 53
    nop

    .line 4190
    if-eqz p2, :cond_2

    .line 4192
    const-string v0, "downloadException"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4193
    const-string p0, "exception"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/ValueCallback;

    .line 4194
    if-eqz p0, :cond_0

    .line 4196
    :try_start_0
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getException()Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4199
    return-void

    .line 4198
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4201
    :cond_0
    return-void

    :cond_1
    const-string v0, "updateProgress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4202
    const-string p0, "progress"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/ValueCallback;

    .line 4203
    if-eqz p0, :cond_2

    .line 4205
    :try_start_1
    check-cast p1, Lcom/uc/webview/export/internal/setup/l;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/l;->getPercent()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4208
    return-void

    .line 4207
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :cond_2
    return-void
.end method

.method public static checkQuickVerifiedResult(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 2208
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/k;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static clearPrecacheResources([Ljava/lang/String;)V
    .locals 2

    .line 2033
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 2035
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2036
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/16 v1, 0x68

    invoke-interface {p0, v1, v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2040
    return-void

    .line 2038
    :catch_0
    move-exception p0

    .line 2042
    :cond_0
    return-void
.end method

.method public static extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .line 1739
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1741
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z

    move-result p0

    .line 1743
    const/16 p1, 0x15

    invoke-static {p1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1744
    if-eqz p0, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const/16 p2, 0x13

    invoke-static {p2, p1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    .line 1745
    return p0
.end method

.method public static extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .line 1719
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1721
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z

    move-result p0

    .line 1723
    const/16 p1, 0x15

    invoke-static {p1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 1724
    if-eqz p0, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const/16 p2, 0x13

    invoke-static {p2, p1}, Lcom/uc/webview/export/internal/uc/startup/b;->a(ILjava/lang/String;)V

    .line 1725
    return p0
.end method

.method public static getCoreInfo()Ljava/lang/String;
    .locals 1

    .line 1623
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtractDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1884
    const-string v0, "decompresses2"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1885
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtractDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1869
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1870
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1871
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtractDirPathByUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1897
    const-string v0, "updates"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1898
    new-instance v0, Ljava/io/File;

    .line 1899
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1900
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtractRootDirPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1909
    const-string v0, "decompresses2"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1910
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalOption(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 1979
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getODexDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1921
    nop

    .line 1922
    const-string v0, "odexs"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1923
    invoke-static {p0, p1}, Lcom/uc/webview/export/internal/utility/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1921
    invoke-static {v0, p0}, Lcom/uc/webview/export/internal/utility/k;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 1925
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1806
    invoke-static {p0}, Lcom/uc/webview/export/internal/cd/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResponseByUrl(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 0

    .line 1668
    invoke-static {p0}, Lcom/uc/webview/export/internal/SDKFactory;->b(Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object p0

    return-object p0
.end method

.method public static getTraffic()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1655
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->i()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1817
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "notifyCoreEvent"

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1818
    invoke-static {v2, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Lcom/uc/webview/export/internal/interfaces/InvokeObject;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Lcom/uc/webview/export/internal/uc/a;

    invoke-direct {v4, p0, p1}, Lcom/uc/webview/export/internal/uc/a;-><init>(ILjava/lang/Object;)V

    aput-object v4, v1, v5

    invoke-static {v0, v2, v3, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1823
    :catchall_0
    move-exception p0

    .line 1824
    invoke-static {v2, v2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1825
    goto :goto_0

    .line 1826
    :cond_0
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_1

    .line 1828
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 1829
    :catch_0
    move-exception p0

    .line 1830
    const-string p1, "notifyCoreEvent error="

    invoke-static {v2, p1, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1833
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1843
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1845
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1, p2}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1846
    :catch_0
    move-exception p0

    .line 1847
    const-string p1, "notifyCoreEvent"

    const-string p2, "notifyCoreEvent error="

    invoke-static {p1, p2, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1850
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onLowMemory()V
    .locals 1

    .line 1570
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1572
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onLowMemory()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    return-void

    .line 1573
    :catchall_0
    move-exception v0

    .line 1577
    :cond_0
    return-void
.end method

.method public static onTrimMemory(I)V
    .locals 1

    .line 1586
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1588
    :try_start_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onTrimMemory(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1591
    return-void

    .line 1589
    :catchall_0
    move-exception p0

    .line 1593
    :cond_0
    return-void
.end method

.method public static preInitCore(ILandroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2065
    invoke-static {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/ak;->a(ILandroid/content/Context;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static precacheResources(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uc/webview/export/WebResourceResponse;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2013
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 2016
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 2017
    sget-object p0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    const/16 p1, 0x67

    invoke-interface {p0, p1, v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2021
    return-void

    .line 2019
    :catch_0
    move-exception p0

    .line 2023
    :cond_0
    return-void
.end method

.method public static setDrawableResource(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1643
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1644
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->getWebResources()Lcom/uc/webview/export/internal/interfaces/IWebResourceInternal;

    move-result-object v0

    .line 1645
    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/IWebResourceInternal;->setDrawable(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1647
    :cond_0
    return-void
.end method

.method public static setGlobalOption(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    .line 1970
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Lcom/uc/webview/export/internal/utility/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static setInitCallback(Lcom/uc/webview/export/extension/InitCallback;)V
    .locals 0

    .line 1755
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->i:Lcom/uc/webview/export/extension/InitCallback;

    .line 1756
    return-void
.end method

.method public static setLocationManager(Lcom/uc/webview/export/extension/ILocationManager;)V
    .locals 1

    .line 1560
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1561
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setLocationManagerUC(Lcom/uc/webview/export/extension/ILocationManager;)V

    .line 1562
    :cond_0
    return-void
.end method

.method public static setMediaPlayerFactory(Lcom/uc/webview/export/media/MediaPlayerFactory;)V
    .locals 2

    .line 2050
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2054
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setMediaPlayerFactory(Lcom/uc/webview/export/media/MediaPlayerFactory;)V

    .line 2055
    return-void

    .line 2051
    :cond_1
    :goto_0
    const-string p0, "UCCore.ucmedia"

    const-string v0, "setMediaPlayerFactory failed - env invalid"

    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    return-void
.end method

.method public static setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V
    .locals 1

    .line 1706
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setNetLogger(Lcom/uc/webview/export/internal/interfaces/INetLogger;)V

    .line 1707
    return-void
.end method

.method public static setNetworkDelegate(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
    .locals 2

    .line 1689
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1690
    const-string v0, "network delegate"

    const-string v1, "UCCore U4 setNetworkDelegate"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v1, p0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setNetworkDelegate(Lcom/uc/webview/export/internal/interfaces/INetworkDelegate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1695
    return-void

    .line 1693
    :catch_0
    move-exception p0

    .line 1694
    const-string v1, "setNetworkDelegate"

    invoke-static {v0, v1, p0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1698
    :cond_0
    return-void
.end method

.method public static setNotAvailableUCListener(Lcom/uc/webview/export/extension/NotAvailableUCListener;)V
    .locals 0

    .line 1610
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->a:Lcom/uc/webview/export/extension/NotAvailableUCListener;

    .line 1611
    return-void
.end method

.method public static setParam(Ljava/lang/String;)V
    .locals 0

    .line 1797
    invoke-static {p0}, Lcom/uc/webview/export/internal/cd/a;->a(Ljava/lang/String;)V

    .line 1798
    return-void
.end method

.method public static setPrintLog(Z)V
    .locals 3

    .line 1632
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "[all]"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 1633
    invoke-static {p0, v0}, Lcom/uc/webview/export/internal/utility/Log;->setPrintLog(Z[Ljava/lang/Object;)V

    .line 1634
    return-void
.end method

.method public static setSetupExceptionListener(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Lcom/uc/webview/export/internal/setup/UCSetupException;",
            ">;)V"
        }
    .end annotation

    .line 1785
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->o:Landroid/webkit/ValueCallback;

    .line 1786
    return-void
.end method

.method public static setStatDataCallback(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1765
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->m:Landroid/webkit/ValueCallback;

    .line 1766
    return-void
.end method

.method public static setStatDataCheckCallback(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1776
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->n:Landroid/webkit/ValueCallback;

    .line 1777
    return-void
.end method

.method public static setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V
    .locals 2

    .line 1678
    invoke-static {}, Lcom/uc/webview/export/WebView;->getCoreType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 1680
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0, p0, p1}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->setThirdNetwork(Lcom/uc/webview/export/internal/interfaces/INetwork;Lcom/uc/webview/export/internal/interfaces/INetworkDecider;)V

    .line 1681
    :cond_0
    return-void
.end method

.method public static setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;
    .locals 3

    .line 1170
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    instance-of v1, p1, Landroid/content/Context;

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x9

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/setup/af;->a(I[Ljava/lang/Object;)V

    .line 1173
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->a()Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object p0

    check-cast p0, Lcom/uc/webview/export/utility/SetupTask;

    return-object p0
.end method

.method public static startDownload()V
    .locals 2

    .line 1858
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->a()Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    .line 2850
    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->a:Lcom/uc/webview/export/internal/setup/l;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/uc/webview/export/internal/setup/o;->a:Lcom/uc/webview/export/internal/setup/l;

    instance-of v1, v1, Lcom/uc/webview/export/internal/setup/bw;

    if-eqz v1, :cond_0

    .line 2851
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/o;->a:Lcom/uc/webview/export/internal/setup/l;

    check-cast v0, Lcom/uc/webview/export/internal/setup/bw;

    .line 3458
    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bw;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->startDownload()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 1859
    :cond_0
    return-void
.end method

.method public static startTCPDevtools(Ljava/lang/String;I)V
    .locals 2

    .line 1989
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 1990
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    .line 1989
    const/16 p0, 0x65

    invoke-static {p0, v0}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1991
    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1185
    invoke-static {}, Lcom/uc/webview/export/internal/setup/o;->a()Lcom/uc/webview/export/internal/setup/o;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/uc/webview/export/internal/setup/o;->a(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 1186
    return-void
.end method

.method public static updateUCCore(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1246
    new-instance v6, Lcom/uc/webview/export/extension/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/uc/webview/export/extension/c;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/util/concurrent/Callable;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/i;->b(Ljava/lang/Runnable;)V

    .line 1300
    return-void
.end method

.method public static updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1313
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V

    .line 1314
    return-void
.end method

.method public static updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback;",
            ">;)V"
        }
    .end annotation

    .line 1352
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ucmedia.UCCore"

    if-nez v0, :cond_0

    .line 1353
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ignore updateUCPlayer in process "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1354
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1353
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    return-void

    .line 1358
    :cond_0
    sget-object v0, Lcom/uc/webview/export/extension/UCCore;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1359
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "want to updateUCPlayer again - "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    return-void

    .line 1364
    :cond_1
    new-instance v0, Lcom/uc/webview/export/extension/h;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/uc/webview/export/extension/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/i;->b(Ljava/lang/Runnable;)V

    .line 1393
    return-void
.end method

.method public static uploadCrashLogs()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1601
    return-void
.end method
