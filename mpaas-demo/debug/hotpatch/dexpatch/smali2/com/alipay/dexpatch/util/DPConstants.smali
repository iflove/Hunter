.class public Lcom/alipay/dexpatch/util/DPConstants;
.super Ljava/lang/Object;
.source "DPConstants.java"


# static fields
.field public static final BIZ_DEXPATCH:Ljava/lang/String; = "BIZ_DEXPATCH"

.field public static final BUFFER_SIZE:I = 0x4000

.field public static final CLASS_N_PATTERN:Ljava/util/regex/Pattern;

.field public static final CONFIG_KEY_PREPARE_PATCH:Ljava/lang/String; = "DexPPreparePatch"

.field public static final DEX_OPT_PATH:Ljava/lang/String; = "odex"

.field public static final DEX_PATH:Ljava/lang/String; = "dex"

.field public static final DEX_SUFFIX:Ljava/lang/String; = ".dex"

.field public static final DP_UNSUPPORTED:Ljava/lang/String; = "DP_UNSUPPORTED"

.field public static final DYNAMIC_RELEASE_SG_SP_NAME:Ljava/lang/String; = "DynamicReleaseSG"

.field public static final KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final KEY_DELAY_MAX_TIME:Ljava/lang/String; = "delayMaxTime"

.field public static final KEY_DELAY_PREPARE:Ljava/lang/String; = "delayPrepare"

.field public static final KEY_MD5:Ljava/lang/String; = "_md5"

.field public static final KEY_PATCH_TO_REMOVE:Ljava/lang/String; = "patch_to_remove"

.field public static final MAX_EXTRACT_ATTEMPTS:I = 0x2

.field public static final MAX_WAIT_COUNT:I = 0x78

.field public static final MD5_FILE_BUF_LENGTH:I = 0x19000

.field public static final MD5_LENGTH:I = 0x20

.field public static final MERGE_FILE:Ljava/lang/String; = "dexpatch_merged.jar"

.field public static final ODEX_SUFFIX:Ljava/lang/String; = ".odex"

.field public static final PATCH_BASE_DIR_NAME:Ljava/lang/String; = "dexpatch"

.field public static final PATCH_FILE_DIR_NAME:Ljava/lang/String; = "patch"

.field public static final PATCH_FILE_SUFFIX:Ljava/lang/String; = ".jar"

.field public static final PATCH_INFO_FILE_NAME:Ljava/lang/String; = "patch.info"

.field public static final PATCH_INFO_LOCK_NAME:Ljava/lang/String; = "lock.info"

.field public static final PATCH_SP:Ljava/lang/String; = "_dexpatch_"

.field public static final PATCH_WORK_DIR_NAME:Ljava/lang/String; = "workspace"

.field public static final PURE_PROCESS_TO_KILL:Ljava/lang/String; = "pure_p_to_kill"

.field public static final SCENE_ADD:Ljava/lang/String; = "add"

.field public static final SCENE_LAUNCH:Ljava/lang/String; = "launch"

.field public static final SG_CLEAN:Ljava/lang/String; = "cleanDexPatch"

.field public static final SPLIT:Ljava/lang/String; = "<split>"

.field public static final UNSUPPORTED_CODE_DALVIKART:Ljava/lang/String; = "2"

.field public static final UNSUPPORTED_CODE_HOOK:Ljava/lang/String; = "4"

.field public static final UNSUPPORTED_CODE_LEMUR:Ljava/lang/String; = "3"

.field public static final UNSUPPORTED_CODE_SAMSUNG50:Ljava/lang/String; = "1"

.field public static final UNSUPPORTED_CODE_VMJIT:Ljava/lang/String; = "0"

.field public static final WAIT_ASYN_OAT_TIME:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "classes(?:[2-9]{0,1}|[1-9][0-9]+)\\.dex(\\.jar)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/dexpatch/util/DPConstants;->CLASS_N_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
