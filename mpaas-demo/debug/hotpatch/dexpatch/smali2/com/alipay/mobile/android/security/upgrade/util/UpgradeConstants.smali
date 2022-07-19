.class public Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;
.super Ljava/lang/Object;
.source "UpgradeConstants.java"


# static fields
.field public static final ABOUT_UPDATE_MUST:I = 0xcb

.field public static final ABOUT_UPDATE_NONEED:I = 0xc9

.field public static final ABOUT_UPDATE_NOTICE:I = 0xcc

.field public static final ABOUT_UPDATE_OPTIONAL:I = 0xca

.field public static final APKNAME_ENDFIX:Ljava/lang/String; = ".apk"

.field public static final APKNAME_PREFIX:Ljava/lang/String; = "mPaaS_Upgrade_"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final FORCE_UPGRADE_EXIST_NEWVERSION:Ljava/lang/String; = "force_upgrade_exist_newversion"

.field public static final FORCE_UPGRADE_IMAGE_URL:Ljava/lang/String; = "force_upgrade_image_url"

.field public static final FORCE_UPGRADE_LIGHT_DOWN_URL:Ljava/lang/String; = "force_upgrade_light_down_url"

.field public static final FORCE_UPGRADE_LIGHT_MD5:Ljava/lang/String; = "force_upgrade_light_md5"

.field public static final FORCE_UPGRADE_MD5:Ljava/lang/String; = "force_upgrade_md5"

.field public static final FORCE_UPGRADE_MSG:Ljava/lang/String; = "force_upgrade_msg"

.field public static final FORCE_UPGRADE_PACKAGE_DOWNLOAD_URL:Ljava/lang/String; = "force_upgrade_package_download_url"

.field public static final FORCE_UPGRADE_TAG:Ljava/lang/String; = "force_upgrade_tag"

.field public static final FORCE_UPGRADE_TARGET_CONCRETE_VERSION:Ljava/lang/String; = "force_upgrade_target_concrete_version"

.field public static final FORCE_UPGRADE_TARGET_VERSION:Ljava/lang/String; = "force_upgrade_target_version"

.field public static HAS_NEW_VERSION:I = 0x0

.field public static HAS_NO_NEW_VERSION:I = 0x0

.field public static HAS_SOME_ERROR:I = 0x0

.field public static final IGNORE_UPDATE_PERIOD:J = 0x93a80L

.field public static final IGNORE_UPDATE_VERSION_KEY:Ljava/lang/String; = "about_ignore_update_version"

.field public static final LAUNCHER_STATUS_CHANGED:Ljava/lang/String; = "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

.field public static final LOGIN_UPDATE_MUST:Ljava/lang/String; = "2"

.field public static final LOGIN_UPDATE_NONEED:Ljava/lang/String; = "0"

.field public static final LOGIN_UPDATE_NOTICE:Ljava/lang/String; = "3"

.field public static final LOGIN_UPDATE_OPTIONAL:Ljava/lang/String; = "1"

.field public static final LOG_TAG:Ljava/lang/String; = "UPDATE"

.field public static final NOT_SHOW_UPDATE_DIALOG:I = 0x1

.field public static final SECURITY_LOGIN:Ljava/lang/String; = "com.alipay.security.login"

.field public static final SECURITY_LOGIN_USERID:Ljava/lang/String; = "userId"

.field public static final SHOW_UPDATE_NORMAL_DIALOG:I = 0x3

.field public static final SHOW_UPDATE_SILENT_DIALOG:I = 0x2

.field public static final SYNC_UPDATE_DEFAULT_TIME_INTERVAL:J = 0x2bf20L

.field public static final UPDATE_CHECK_VERSION:Ljava/lang/String; = "com.alipay.mobile.about.UPDATE_CHECK_VERSION"

.field public static final UPDATE_CLIENT:Ljava/lang/String; = "com.alipay.mobile.about.UPDATE_CLIENT"

.field public static final UPDATE_FORCE_STOP:Ljava/lang/String; = "force_stop"

.field public static final UPDATE_INFO_CACHE_KEY:Ljava/lang/String; = "about_update_info_cache_key"

.field public static final UPDATE_INFO_CACHE_ON_ERROR_KEY:Ljava/lang/String; = "update_info_cache_on_error_key"

.field public static final UPDATE_SILENT_INFO_CACHE_KEY:Ljava/lang/String; = "update_silent_info_cache_key"

.field public static final UPDATE_STOP:Ljava/lang/String; = "stop"

.field public static final UPDATE_VERSION:Ljava/lang/String; = "update_version"

.field public static final UPGRADE_DIALOG_FROM_WHERE:Ljava/lang/String; = "upgrade_dialog_from_where"

.field public static final UPGRADE_DOWNLOAD_URL:Ljava/lang/String; = "upgrade_download_url"

.field public static final UPGRADE_EXIST_NEW_VERSION:Ljava/lang/String; = "upgrade_exist_new_version"

.field public static final UPGRADE_FROM_ABOUT_CHECK:Ljava/lang/String; = "upgrade_from_about_check"

.field public static final UPGRADE_FROM_LOGIN:Ljava/lang/String; = "upgrade_from_login"

.field public static final UPGRADE_FROM_SYNC:Ljava/lang/String; = "upgrade_from_sync"

.field public static final UPGRADE_GUIDE_MEMO:Ljava/lang/String; = "upgrade_guide_memo"

.field public static final UPGRADE_NET_TYPE_2G:Ljava/lang/String; = "2G"

.field public static final UPGRADE_NET_TYPE_3G:Ljava/lang/String; = "3G"

.field public static final UPGRADE_NET_TYPE_4G:Ljava/lang/String; = "4G"

.field public static final UPGRADE_NET_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final UPGRADE_NET_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final UPGRADE_NEWST_VERSION:Ljava/lang/String; = "upgrade_newest_version"

.field public static final UPGRADE_PACKAGE_FULL_MD5:Ljava/lang/String; = "upgrade_package_full_md5"

.field public static final UPGRADE_VERSION:Ljava/lang/String; = "upgrade_version"

.field public static final VALID_SILENT_INFO_PERIOD:J = 0x93a80L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 192
    const/4 v0, 0x1

    sput v0, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_NEW_VERSION:I

    .line 196
    const/4 v0, 0x2

    sput v0, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_NO_NEW_VERSION:I

    .line 200
    const/4 v0, 0x3

    sput v0, Lcom/alipay/mobile/android/security/upgrade/util/UpgradeConstants;->HAS_SOME_ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
