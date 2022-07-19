.class public final Lcom/alipay/mobile/common/transport/utils/MiscUtils;
.super Ljava/lang/Object;
.source "MiscUtils.java"


# static fields
.field public static final BACKGROUND_RPC_APIS:[Ljava/lang/String;

.field public static CHANNEL_ID:Ljava/lang/String; = null

.field public static final FLAG_CHINA:I = 0x1

.field public static final FLAG_TAIWAN:I = 0x2

.field public static final FLAG_US:I = 0x4

.field public static final KEY_RUNNING:Ljava/lang/String; = "running"

.field public static final KEY_TOP:Ljava/lang/String; = "top"

.field public static LANGUAGE_FLAG:I = 0x0

.field public static final LOGIN_APIS:[Ljava/lang/String;

.field public static RELEASE_TYPE:Ljava/lang/String; = null

.field public static final RPC_LOG_BACKLIST:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "MiscUtils"

.field private static a:Ljava/lang/Boolean; = null

.field private static b:Ljava/lang/Boolean; = null

.field private static c:Ljava/lang/Object; = null

.field private static d:Ljava/lang/reflect/Method; = null

.field private static e:Ljava/lang/String; = null

.field private static f:Ljava/lang/String; = null

.field private static g:Z = false

.field private static h:Ljava/lang/Boolean; = null

.field private static final i:[Ljava/lang/String;

.field private static j:Ljava/lang/Boolean; = null

.field private static k:Ljava/lang/Boolean; = null

.field private static l:J = 0x0L

.field private static m:Ljava/lang/Boolean; = null

.field private static n:Ljava/lang/Boolean; = null

.field private static o:[Ljava/lang/String; = null

.field private static p:J = 0x0L

.field public static final testGwUrlBase64:Ljava/lang/String; = "aHR0cHM6Ly9tb2JpbGVndy50ZXN0LmFsaXBheS5uZXQvbWd3Lmh0bQ=="

.field public static final test_1_64_gwHostBase64:Ljava/lang/String; = "bW9iaWxlZ3ctMS02NC50ZXN0LmFsaXBheS5uZXQ="


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a:Ljava/lang/Boolean;

    .line 49
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    .line 55
    const-string v1, "alipay.security.vkeyDFP.staticData.report"

    const-string v2, "alipay.discovery.movie.getPreloadList"

    const-string v3, "alipay.mobileappcommon.repairinfo"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->BACKGROUND_RPC_APIS:[Ljava/lang/String;

    .line 60
    const-string v1, "alipay.mobilerelation.friend.getMobileContact"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RPC_LOG_BACKLIST:[Ljava/lang/String;

    .line 62
    const-string v1, "alipay.user.login"

    const-string v2, "ali.user.gw.unifyLogin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->LOGIN_APIS:[Ljava/lang/String;

    .line 75
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    .line 76
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;

    .line 82
    const/4 v1, 0x1

    sput v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->LANGUAGE_FLAG:I

    .line 94
    const-string v1, ""

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->e:Ljava/lang/String;

    .line 98
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->f:Ljava/lang/String;

    .line 102
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->g:Z

    .line 104
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->h:Ljava/lang/Boolean;

    .line 106
    const-string v1, "com.eg.android.AlipayGphone"

    const-string v2, "com.antfortune.wealth"

    const-string v3, "com.alipay.m.portal"

    const-string v4, "com.taobao.mobile.dipei"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->i:[Ljava/lang/String;

    .line 353
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->j:Ljava/lang/Boolean;

    .line 377
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->k:Ljava/lang/Boolean;

    .line 754
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->l:J

    .line 755
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->m:Ljava/lang/Boolean;

    .line 1013
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->n:Ljava/lang/Boolean;

    .line 1271
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->o:[Ljava/lang/String;

    .line 1273
    sput-wide v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->p:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a()Ljava/lang/reflect/Method;
    .locals 5

    .line 956
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->d:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 957
    return-object v0

    .line 961
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getLocaleHelper()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v0

    .line 962
    .local v2, "localeHelper1":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getAlipayLocaleDes"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 963
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 964
    .end local v2    # "localeHelper1":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    .line 965
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getAlipayLocaleDesMethod] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiscUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 793
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 794
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    const/4 v3, 0x0

    .line 795
    .local v3, "topActivity":Landroid/content/ComponentName;
    move-object v3, v0

    if-nez v0, :cond_0

    .line 796
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->m:Ljava/lang/Boolean;

    .line 797
    return v2

    .line 799
    :cond_0
    const-string v0, "]"

    const-string v4, "MiscUtils"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 800
    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FlyBirdWindowActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 801
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "topActivity return true. topActivity ShortClassName=["

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->m:Ljava/lang/Boolean;

    .line 803
    return v1

    .line 805
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "topActivity return false. topActivity ShortClassName=["

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->m:Ljava/lang/Boolean;

    .line 807
    return v2
.end method

.method public static generateRandomStr(I)Ljava/lang/String;
    .locals 5
    .param p0, "length"    # I

    .line 1251
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1252
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 1253
    .local v1, "random":Ljava/util/Random;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_0

    .line 1254
    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    const-string v4, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1256
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final getAlipayLocaleDes()Ljava/lang/String;
    .locals 3

    .line 931
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getLocaleHelper()Ljava/lang/Object;

    move-result-object v0

    .line 932
    .local v0, "localeHelper1":Ljava/lang/Object;
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a()Ljava/lang/reflect/Method;

    move-result-object v1

    .line 933
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 934
    .end local v0    # "localeHelper1":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 937
    const-string v0, ""

    return-object v0
.end method

.method public static getAmnetServerAddressFromMetaData()Ljava/lang/String;
    .locals 5

    .line 1204
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, v0

    .line 1205
    .local v2, "context":Landroid/content/Context;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1206
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "sandbox.amnet.server"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    .line 1207
    .local v3, "amnetServerAddress":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1208
    return-object v3

    .line 1212
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "amnetServerAddress":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1210
    :catchall_0
    move-exception v1

    .line 1211
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1213
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static final getBooleanFromMetaData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaDatakey"    # Ljava/lang/String;

    .line 1192
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1193
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    return v0

    .line 1195
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " getBooleanFromMetaData ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static final getConfigFromSdcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "fileName"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "externalStorageState":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "mounted_ro"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    return-object v0

    .line 115
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    move-object v3, v0

    .line 117
    .local v3, "externalStorageDirectory":Ljava/io/File;
    move-object v3, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 121
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 122
    .local v4, "file":Ljava/io/File;
    move-object v4, v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 126
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v2, "builder":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .local v5, "inputStream":Ljava/io/InputStream;
    const/16 v6, 0x400

    :try_start_1
    new-array v6, v6, [B

    .local v6, "bytes":[B
    const/4 v7, 0x0

    move v8, v7

    .line 130
    .local v8, "size":I
    :goto_0
    const/4 v9, -0x1

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    move-result v10

    move v8, v10

    if-eq v9, v10, :cond_3

    .line 131
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v6, v7, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    .end local v8    # "size":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "localJson":Ljava/lang/String;
    const-string v8, "TransportStrategy"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "MiscUtils#getConfigFromSdcard().  \u52a0\u8f7d\u672c\u5730\u914d\u7f6e\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    nop

    .line 137
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 135
    return-object v7

    .line 137
    .end local v6    # "bytes":[B
    .end local v7    # "localJson":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .end local p0    # "fileName":Ljava/lang/String;
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "fileName":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v0

    .line 118
    .end local v4    # "file":Ljava/io/File;
    :cond_5
    :goto_2
    return-object v0

    .line 139
    .end local v1    # "externalStorageState":Ljava/lang/String;
    .end local v3    # "externalStorageDirectory":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static final getCpuModel()Ljava/lang/String;
    .locals 5

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/proc/cpuinfo"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    const/4 v1, 0x0

    .line 462
    .local v1, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1

    .line 463
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 475
    goto :goto_0

    .line 473
    :catch_0
    move-exception v3

    .line 464
    :goto_0
    return-object v2

    .line 472
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 475
    :goto_1
    goto :goto_2

    .line 473
    :catch_1
    move-exception v1

    goto :goto_1

    .line 470
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 467
    :catch_2
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "MiscUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCpuModel Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 472
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 478
    :cond_2
    :goto_2
    const-string v1, ""

    return-object v1

    .line 470
    :goto_3
    if-eqz v0, :cond_3

    .line 472
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 475
    goto :goto_4

    .line 473
    :catch_3
    move-exception v2

    .line 475
    :cond_3
    :goto_4
    throw v1
.end method

.method public static final getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 407
    const-string v0, ""

    .line 409
    .local v0, "processName":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.ddm.DdmHandleAppName"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    .line 410
    .local v3, "clazz":Ljava/lang/Class;
    move-object v3, v2

    const-string v4, "getAppName"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 411
    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 414
    .end local v3    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 412
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MiscUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 416
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    return-object v0

    .line 420
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 421
    .local v2, "pid":I
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 422
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 423
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 424
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object v1, v4

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_1

    .line 425
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 426
    goto :goto_2

    .line 428
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    goto :goto_1

    .line 430
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static final getCurShortProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 435
    const-string/jumbo v0, "main"

    .line 437
    .local v0, "procName":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 438
    .local v3, "curProcessName":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    return-object v0

    .line 441
    :cond_0
    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v2, "procNameSplit":[Ljava/lang/String;
    move-object v2, v1

    array-length v1, v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    .line 443
    const/4 v1, 0x1

    aget-object v1, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 447
    .end local v2    # "procNameSplit":[Ljava/lang/String;
    .end local v3    # "curProcessName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 445
    :catchall_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "MiscUtils"

    const-string v3, "getCurShortProcessName fail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object v0
.end method

.method public static final getCurrentLocale(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 919
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 920
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move-object v3, v2

    .line 921
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v3, v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v2, "countryCode":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 924
    const-string v1, "-"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultPort(Ljava/lang/String;)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;

    .line 989
    const-string v0, "http"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 990
    const/16 v0, 0x50

    return v0

    .line 991
    :cond_0
    const-string v0, "https"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 992
    const/16 v0, 0x1bb

    return v0

    .line 994
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static final getEffectivePort(Ljava/lang/String;I)I
    .locals 1
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "specifiedPort"    # I

    .line 985
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return p1

    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getDefaultPort(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final getInvokeStartTimeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "operationType"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rpc#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getLocaleHelper()Ljava/lang/Object;
    .locals 6

    .line 941
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 942
    return-object v0

    .line 945
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.alipay.mobile.framework.locale.LocaleHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 946
    .local v2, "localeHelperClazz":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 947
    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 948
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 949
    .end local v2    # "localeHelperClazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[getLocaleHelper] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiscUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static final getMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaDatakey"    # Ljava/lang/String;

    .line 1166
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 1167
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1168
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MiscUtils"

    const-string v2, " getMetaData exception. "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    .end local v0    # "e":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static final getMetaDataVO(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "metaDatakey"    # Ljava/lang/String;

    .line 1176
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    move-object v2, v0

    .line 1177
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1178
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v1

    .line 1179
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "MiscUtils"

    const-string v3, " getMetaData exception. "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1181
    .end local v1    # "e":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static getReleaseChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 222
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;

    return-object v0

    .line 226
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;

    monitor-enter v0

    .line 228
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 233
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 234
    .local v3, "properties":Ljava/util/Properties;
    move-object v3, v1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "channel.config"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 235
    invoke-virtual {v3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 236
    .local v4, "configEntity":Ljava/util/Map$Entry;
    move-object v4, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "channel_id"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 237
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v2, "valueObj":Ljava/lang/Object;
    move-object v2, v1

    if-nez v1, :cond_2

    .line 239
    const-string/jumbo v1, "unkown"

    .line 240
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 242
    :cond_2
    :try_start_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 243
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    .line 245
    .end local v2    # "valueObj":Ljava/lang/Object;
    .end local v4    # "configEntity":Ljava/util/Map$Entry;
    :cond_3
    goto :goto_0

    .line 248
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_4
    goto :goto_1

    .line 246
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MiscUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getReleaseChannelId error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v1, "unkown"

    .line 251
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->CHANNEL_ID:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 252
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static getReleaseType(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 186
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    return-object v0

    .line 190
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;

    monitor-enter v0

    .line 192
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 197
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 198
    .local v3, "properties":Ljava/util/Properties;
    move-object v3, v1

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "channel.config"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 199
    invoke-virtual {v3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 200
    .local v4, "configEntity":Ljava/util/Map$Entry;
    move-object v4, v5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "release_type"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 201
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 202
    .local v2, "valueObj":Ljava/lang/Object;
    move-object v2, v1

    if-nez v1, :cond_2

    .line 203
    const-string/jumbo v1, "unkown"

    .line 204
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 206
    :cond_2
    :try_start_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    .line 209
    .end local v2    # "valueObj":Ljava/lang/Object;
    .end local v4    # "configEntity":Ljava/util/Map$Entry;
    :cond_3
    goto :goto_0

    .line 212
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_4
    goto :goto_1

    .line 210
    :catch_0
    move-exception v1

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "MiscUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getReleaseType error occurr "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v1, "unkown"

    .line 215
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RELEASE_TYPE:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public static final getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 487
    const/4 v0, 0x0

    .line 488
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .local v1, "tmpCause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    .line 489
    move-object v0, v1

    .line 488
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 491
    .end local v1    # "tmpCause":Ljava/lang/Throwable;
    :cond_0
    if-eqz v0, :cond_1

    .line 492
    return-object v0

    .line 496
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    goto :goto_1

    .line 494
    :catch_0
    move-exception v1

    .line 495
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getRootCause exception : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object p0
.end method

.method public static final getSharedPrefsDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 1053
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/shared_prefs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1054
    :catchall_0
    move-exception v0

    .line 1055
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getSharedPrefsDir exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .end local v0    # "e":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static getTestGwUrl()Ljava/lang/String;
    .locals 4

    .line 706
    const-string v0, "MiscUtils"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    new-instance v1, Ljava/lang/String;

    const-string v2, "aHR0cHM6Ly9tb2JpbGVndy50ZXN0LmFsaXBheS5uZXQvbWd3Lmh0bQ=="

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->e:Ljava/lang/String;

    .line 709
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "testGwUrl= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 711
    :catchall_0
    move-exception v1

    .line 712
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 714
    .end local v1    # "ex":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static getTest_1_64_gwHost()Ljava/lang/String;
    .locals 4

    .line 720
    const-string v0, "MiscUtils"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 721
    new-instance v1, Ljava/lang/String;

    const-string v2, "bW9iaWxlZ3ctMS02NC50ZXN0LmFsaXBheS5uZXQ="

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->f:Ljava/lang/String;

    .line 723
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "test_1_64_gwHost= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 725
    :catchall_0
    move-exception v1

    .line 726
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 728
    .end local v1    # "ex":Ljava/lang/Throwable;
    const-string v0, ""

    return-object v0
.end method

.method public static getTopDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .line 1262
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1263
    .local v1, "uri":Ljava/net/URI;
    move-object v1, v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1264
    .local v0, "index":I
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 1265
    .end local v0    # "index":I
    .end local v1    # "uri":Ljava/net/URI;
    :catchall_0
    move-exception v0

    .line 1266
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getTopDomain ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-object p0
.end method

.method public static final getUrlconnectionHostList()[Ljava/lang/String;
    .locals 7

    .line 1291
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->o:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->p:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 1294
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->o:[Ljava/lang/String;

    return-object v0

    .line 1298
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->URLCONNECTION_HOST_LIST:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    .line 1299
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1300
    .local v2, "urlHostList":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    return-object v1

    .line 1305
    :cond_1
    :try_start_0
    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->o:[Ljava/lang/String;

    .line 1306
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    sput-wide v3, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->p:J

    .line 1307
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->o:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1308
    :catchall_0
    move-exception v0

    .line 1312
    return-object v1
.end method

.method public static final getWalletProcState(Landroid/content/Context;)Ljava/util/Map;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 819
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 820
    .local v2, "outParam":Ljava/util/Map;
    move-object v2, v0

    const-string/jumbo v3, "top"

    const-string v4, "false"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string/jumbo v0, "running"

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v6, "true"

    if-eqz v5, :cond_0

    .line 825
    :try_start_1
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 828
    :cond_0
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    const-string v3, "activity"

    .line 831
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    move-object v4, v1

    .line 832
    .local v4, "activityManager":Landroid/app/ActivityManager;
    const/16 v5, 0x64

    .line 833
    invoke-virtual {v3, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 834
    .local v1, "runningTasks":Ljava/util/List;
    move-object v1, v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 838
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 839
    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 840
    .local v5, "baseActivity":Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 841
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 842
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 841
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 843
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 844
    goto :goto_2

    .line 846
    .end local v5    # "baseActivity":Landroid/content/ComponentName;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 850
    .end local v1    # "runningTasks":Ljava/util/List;
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    :cond_3
    goto :goto_2

    .line 835
    .restart local v1    # "runningTasks":Ljava/util/List;
    .restart local v4    # "activityManager":Landroid/app/ActivityManager;
    :cond_4
    :goto_1
    return-object v2

    .line 848
    .end local v1    # "runningTasks":Ljava/util/List;
    .end local v4    # "activityManager":Landroid/app/ActivityManager;
    :catch_0
    move-exception v0

    .line 849
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 852
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2
    return-object v2
.end method

.method public static final grayscale(II)Z
    .locals 2
    .param p0, "maxNum"    # I
    .param p1, "grayNum"    # I

    .line 606
    :try_start_0
    div-int v0, p0, p1

    .line 607
    .local v0, "randomNum":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 608
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 609
    const/4 v1, 0x1

    return v1

    .line 613
    .end local v0    # "randomNum":I
    :cond_0
    goto :goto_0

    .line 611
    :catch_0
    move-exception v0

    .line 612
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 614
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final grayscale(Ljava/lang/String;)Z
    .locals 4
    .param p0, "numRange"    # Ljava/lang/String;

    .line 585
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 586
    .local v1, "split":[Ljava/lang/String;
    move-object v1, v0

    array-length v0, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 587
    return v2

    .line 589
    :cond_0
    aget-object v0, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v2

    .line 590
    .local v3, "grayNum":I
    move v3, v0

    if-gtz v0, :cond_1

    .line 591
    return v2

    .line 593
    :cond_1
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 594
    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscale(II)Z

    move-result v0

    return v0
.end method

.method public static final grayscaleUtdid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "utdid"    # Ljava/lang/String;
    .param p1, "grayValuesStr"    # Ljava/lang/String;

    .line 529
    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "-1"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 533
    :cond_0
    :try_start_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 534
    .local v2, "split":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    new-array v0, v0, [I

    .line 535
    .local v0, "grayValues":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 536
    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v3

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 538
    .end local v3    # "i":I
    :cond_1
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->grayscaleUtdid(Ljava/lang/String;[I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 539
    .end local v0    # "grayValues":[I
    .end local v2    # "split":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 540
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v2, "MiscUtils"

    const-string v3, "grayscaleUtdid exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 542
    .end local v0    # "ex":Ljava/lang/Throwable;
    return v1

    .line 530
    :cond_2
    :goto_1
    return v1
.end method

.method public static final grayscaleUtdid(Ljava/lang/String;[I)Z
    .locals 7
    .param p0, "utdid"    # Ljava/lang/String;
    .param p1, "grayValues"    # [I

    .line 548
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    array-length v1, p1

    if-lez v1, :cond_2

    .line 549
    const/4 v1, 0x1

    .line 550
    .local v1, "hit":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 551
    aget v3, p1, v2

    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 553
    goto :goto_1

    .line 550
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 557
    return v0

    .line 562
    .end local v1    # "hit":Z
    :cond_2
    const/4 v1, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_7

    if-eqz p1, :cond_7

    array-length v2, p1

    if-eqz v2, :cond_7

    array-length v2, p1

    sub-int/2addr v2, v0

    aget v2, p1, v2

    if-nez v2, :cond_3

    goto :goto_3

    .line 566
    :cond_3
    array-length v2, p1

    .line 567
    .local v2, "grayBitLen":I
    array-length v3, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 568
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 570
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_2
    if-ge v3, v2, :cond_6

    .line 571
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ+/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 572
    sub-int v6, v2, v4

    aget v6, p1, v6

    if-le v5, v6, :cond_5

    .line 573
    return v1

    .line 570
    :cond_5
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 576
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_6
    return v0

    .line 564
    .end local v2    # "grayBitLen":I
    :cond_7
    :goto_3
    return v1
.end method

.method public static final grayscaleUtdidForABTest(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z
    .locals 2
    .param p0, "configureItem"    # Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;

    .line 514
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/ABTestHelper;->isSwitchEnableInner(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 515
    :catchall_0
    move-exception v0

    .line 516
    .local v0, "ex":Ljava/lang/Throwable;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    .end local v0    # "ex":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "paramClasses"    # [Ljava/lang/Class;
    .param p3, "methodParam"    # [Ljava/lang/Object;

    .line 638
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 639
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 640
    invoke-virtual {v0, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isAlipayGW(Ljava/lang/String;)Z
    .locals 3
    .param p0, "gwUrl"    # Ljava/lang/String;

    .line 1135
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isAlipayUrl(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1136
    .local v0, "useSignAtlas":Z
    return v1

    .line 1137
    .end local v0    # "useSignAtlas":Z
    :catchall_0
    move-exception v1

    .line 1138
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1140
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static isAlipayLocalPackage(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1023
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->n:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1027
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/CertUtils;->isDevSignPackage(Landroid/content/Context;)Z

    move-result v0

    .line 1028
    const/4 v1, 0x1

    const-string v2, "MiscUtils"

    if-eqz v0, :cond_1

    .line 1029
    const-string v0, " isDevSignPackage is true."

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1031
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 1035
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->getReleaseType()Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, "releaseType":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getReleaseType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->isReleaseTypeDev()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1038
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v3, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->n:Ljava/lang/Boolean;

    goto :goto_0

    .line 1040
    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v3, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->n:Ljava/lang/Boolean;

    .line 1042
    :goto_0
    sget-object v3, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->n:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 1043
    .end local v0    # "releaseType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getReleaseType exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    .end local v0    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public static final isAtFrontDesk(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 765
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 766
    .local v0, "realTime":J
    sget-wide v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->l:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sget-object v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->m:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 768
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 771
    :cond_0
    const-class v2, Lcom/alipay/mobile/common/transport/utils/MiscUtils;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :try_start_1
    sget-wide v3, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->l:J

    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    sget-object v3, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->m:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 775
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v3

    .line 779
    :cond_1
    const-wide/16 v3, 0x3e8

    :try_start_2
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a(Landroid/content/Context;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 781
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v3

    sput-wide v6, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->l:J

    monitor-exit v2

    .line 779
    return v5

    .line 781
    :catchall_0
    move-exception v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long/2addr v6, v3

    sput-wide v6, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->l:J

    .end local v0    # "realTime":J
    .end local p0    # "context":Landroid/content/Context;
    throw v5

    .line 784
    .restart local v0    # "realTime":J
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local p0    # "context":Landroid/content/Context;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 786
    .end local v0    # "realTime":J
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MiscUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isAtFrontDesk Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method public static final isBgRpc(Ljava/lang/String;)Z
    .locals 3
    .param p0, "operationType"    # Ljava/lang/String;

    .line 618
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->BACKGROUND_RPC_APIS:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 619
    aget-object v1, v1, v0

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 620
    const/4 v1, 0x1

    return v1

    .line 618
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final isDebugger(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 147
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 153
    return v0

    .line 155
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 156
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 157
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 158
    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 159
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "MiscUtils"

    const-string v3, "isDebugger error, default return false."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v1    # "e":Ljava/lang/Throwable;
    return v0
.end method

.method public static final isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 1158
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1161
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1159
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static final isEnableExtTransport(Landroid/content/Context;)Z
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;

    .line 872
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    const/4 v0, 0x1

    return v0

    .line 886
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isExistMultiMainProcess(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 1107
    :try_start_0
    const-string v0, "activity"

    .line 1108
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    .line 1110
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 1111
    .local v0, "runningApps":Ljava/util/List;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, "pname":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1113
    .local v3, "procCount":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1114
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 1115
    add-int/lit8 v3, v3, 0x1

    .line 1117
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 1118
    :cond_1
    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 1119
    return v4

    .line 1123
    .end local v0    # "runningApps":Ljava/util/List;
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "pname":Ljava/lang/String;
    .end local v3    # "procCount":I
    :cond_2
    goto :goto_1

    .line 1121
    :catchall_0
    move-exception v0

    .line 1122
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1124
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isGreatEqualAndroid5()Z
    .locals 2

    .line 644
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 645
    const/4 v0, 0x1

    return v0

    .line 647
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isInAlipayClient(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 892
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 897
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 898
    .local v1, "currPackageName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 899
    return v2

    .line 902
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->i:[Ljava/lang/String;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 903
    .local v4, "alipayPackageName":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 904
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 905
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 902
    .end local v4    # "alipayPackageName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 910
    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static final isInLogBackList(Ljava/lang/String;)Z
    .locals 5
    .param p0, "operationType"    # Ljava/lang/String;

    .line 734
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->RPC_LOG_BACKLIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 735
    invoke-static {v4, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 736
    const/4 v0, 0x1

    return v0

    .line 734
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 739
    :cond_1
    return v2
.end method

.method public static isInUrlconnectionHostList(Ljava/lang/String;)Z
    .locals 6
    .param p0, "host"    # Ljava/lang/String;

    .line 1276
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getUrlconnectionHostList()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1277
    .local v1, "hostList":[Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    array-length v0, v1

    if-gtz v0, :cond_0

    goto :goto_1

    .line 1280
    :cond_0
    array-length v0, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    .line 1281
    .local v4, "shortHost":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1282
    const/4 v0, 0x1

    return v0

    .line 1280
    .end local v4    # "shortHost":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1285
    :cond_2
    return v2

    .line 1278
    :cond_3
    :goto_1
    return v2
.end method

.method public static final isLoginRpc(Ljava/lang/String;)Z
    .locals 6
    .param p0, "operationType"    # Ljava/lang/String;

    .line 743
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 744
    return v1

    .line 746
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->LOGIN_APIS:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 747
    .local v4, "loginApi":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 748
    const/4 v0, 0x1

    return v0

    .line 746
    .end local v4    # "loginApi":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 751
    :cond_2
    return v1
.end method

.method public static isMainProcessRuning(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "MiscUtils"

    .line 1082
    :try_start_0
    const-string v1, "activity"

    .line 1083
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    .line 1085
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1086
    .local v1, "runningApps":Ljava/util/List;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1087
    .local v3, "pname":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1088
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1089
    const-string v4, "isMainProcessRuning is true"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1090
    const/4 v0, 0x1

    return v0

    .line 1092
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 1095
    .end local v1    # "runningApps":Ljava/util/List;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "pname":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 1093
    :catchall_0
    move-exception v1

    .line 1094
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1096
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isMdapApi(Ljava/lang/String;)Z
    .locals 6
    .param p0, "operationType"    # Ljava/lang/String;

    .line 1219
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1220
    return v0

    .line 1223
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->MDAP_APIS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1225
    .local v2, "mdapApis":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1228
    :cond_1
    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1229
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 1230
    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 1231
    const/4 v0, 0x1

    return v0

    .line 1229
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1234
    :cond_3
    return v0

    .line 1226
    :cond_4
    :goto_1
    return v0

    .line 1235
    .end local v2    # "mdapApis":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1236
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isMdapApi ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiscUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .end local v1    # "ex":Ljava/lang/Throwable;
    return v0
.end method

.method public static isNeedShowUserTip(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "channel.config"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    const/4 v1, 0x0

    .line 311
    .local v1, "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 312
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 313
    move-object v1, v2

    const-string v3, "isShowUserTip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 314
    const/4 v2, 0x1

    return v2

    .line 321
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 320
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MiscUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNeedShowUserTip exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 321
    goto :goto_0

    .line 324
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 320
    :goto_2
    if-eqz v0, :cond_3

    .line 321
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v1
.end method

.method public static isOnlineUrl(Ljava/net/URL;)Z
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .line 654
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegw.alipay.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 655
    :catchall_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 658
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static final isOtherProcess(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 328
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isOversea()Z
    .locals 1

    .line 1149
    sget-boolean v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->g:Z

    return v0
.end method

.method public static isPreUrl(Ljava/net/URL;)Z
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .line 663
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegwpre.alipay.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 664
    :catchall_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static final isPushProcess(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 337
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 341
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "curProcessName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "curProcessName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 344
    const-string v1, "Other Process"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    goto :goto_0

    .line 347
    :cond_1
    const-string v1, "Main Process"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    .line 350
    :goto_0
    sget-object v1, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public static isPushProcessRuning(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "MiscUtils"

    .line 1062
    :try_start_0
    const-string v1, "activity"

    .line 1063
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    .line 1065
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1066
    .local v1, "runningApps":Ljava/util/List;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":push"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1067
    .local v3, "pname":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1068
    .local v5, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1069
    const-string v4, "isPushProcessRuning is true"

    invoke-static {v0, v4}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    const/4 v0, 0x1

    return v0

    .line 1072
    .end local v5    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 1075
    .end local v1    # "runningApps":Ljava/util/List;
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "pname":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 1073
    :catchall_0
    move-exception v1

    .line 1074
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1076
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isRCVersion(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/netsdkextdependapi/appinfo/AppInfoUtil;->isReleaseTypeRC()Z

    move-result v0

    return v0
.end method

.method public static final isRealPushProcess(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 386
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 391
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":push"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 392
    .local v1, "pname":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 393
    .end local v1    # "pname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRealPushProcess exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static isSandboxChannel()Z
    .locals 4

    .line 258
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getReleaseChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 260
    .local v2, "channelId":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    return v0

    .line 264
    :cond_0
    const-string/jumbo v1, "sandbox"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "special_channel"

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    .line 270
    .end local v2    # "channelId":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 265
    .restart local v2    # "channelId":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 268
    .end local v2    # "channelId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 269
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSandboxChannel ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiscUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_1
    return v0
.end method

.method public static isSandboxUrl(Ljava/net/URL;)Z
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .line 681
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobilegw.alipaydev.com"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 682
    :catchall_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static final isScreenOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 857
    const-string v0, "MiscUtils"

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/os/PowerManager;

    const-string v3, "isScreenOn"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 859
    .local v2, "mReflectScreenState":Ljava/lang/reflect/Method;
    const-string/jumbo v3, "power"

    .line 860
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 861
    .local v3, "manager":Landroid/os/PowerManager;
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 862
    .local v4, "screenState":Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isScreenOn="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    return v4

    .line 864
    .end local v2    # "mReflectScreenState":Ljava/lang/reflect/Method;
    .end local v3    # "manager":Landroid/os/PowerManager;
    .end local v4    # "screenState":Z
    :catchall_0
    move-exception v2

    .line 865
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "API < 7,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .end local v2    # "e":Ljava/lang/Throwable;
    return v1
.end method

.method public static isShowUserTip(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 283
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isNeedShowUserTip(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    return v0

    .line 288
    :cond_0
    const-string/jumbo v1, "usertip"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    .line 289
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "showTip"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    if-eqz v1, :cond_1

    .line 291
    return v4

    .line 296
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    goto :goto_0

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isShowUserTip exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiscUtils"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public static final isTFSHost(Ljava/lang/String;)Z
    .locals 1
    .param p0, "host"    # Ljava/lang/String;

    .line 973
    const-string/jumbo v0, "tfsimg.alipay.com"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTestUrl(Ljava/net/URL;)Z
    .locals 2
    .param p0, "url"    # Ljava/net/URL;

    .line 672
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getTest_1_64_gwHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 673
    :catchall_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MiscUtils"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static final isToolProcess(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 362
    sget-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 367
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":tools"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 368
    .local v1, "pname":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 369
    .end local v1    # "pname":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isToolProcess exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiscUtils"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return v0
.end method

.method public static logThreadStackTrace(Ljava/lang/Thread;)V
    .locals 9

    .line 1317
    const-string v0, "\n"

    const-string v1, ":"

    const-string v2, "MiscUtils"

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 1318
    if-eqz v4, :cond_2

    array-length v5, v4

    if-gtz v5, :cond_0

    goto :goto_1

    .line 1321
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[logThreadStackTrace] thread info = ["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    array-length p0, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p0, :cond_1

    aget-object v7, v4, v6

    .line 1324
    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")<-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1326
    :cond_1
    const-string p0, "]"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1327
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1330
    goto :goto_2

    .line 1319
    :cond_2
    :goto_1
    return-void

    .line 1328
    :catchall_0
    move-exception p0

    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[logThreadStackTrace] Exception = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object p0

    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->LOG_DUMP_ALL_THREADS:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    const-string v4, "T"

    invoke-virtual {p0, v1, v4}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->equalsString(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;Ljava/lang/String;)Z

    move-result p0

    .line 1333
    if-nez p0, :cond_3

    .line 1334
    const-string p0, "[logThreadStackTrace] isOpenDumpThreadsSwitch is false."

    invoke-static {v2, p0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    return-void

    .line 1339
    :cond_3
    :try_start_1
    const-string p0, "Dump all threads:"

    invoke-static {v2, p0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object p0

    .line 1341
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1343
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    .line 1344
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    .line 1345
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1347
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1348
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1349
    const-string v7, "ThreadName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " State="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    array-length v4, v1

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_4

    aget-object v7, v1, v5

    .line 1352
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1353
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1356
    :cond_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1360
    goto :goto_3

    .line 1358
    :catchall_1
    move-exception v1

    .line 1359
    :try_start_3
    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1361
    goto :goto_3

    .line 1364
    :cond_5
    return-void

    .line 1362
    :catchall_2
    move-exception p0

    .line 1363
    invoke-static {v2, p0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1366
    return-void
.end method

.method public static final replaceTFS2CDN(Ljava/net/URI;)Ljava/lang/String;
    .locals 3
    .param p0, "tfsURL"    # Ljava/net/URI;

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 978
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    move-object v1, v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    const-string/jumbo v0, "tfs.alipayobjects.com"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setOversea(Z)V
    .locals 0
    .param p0, "oversea"    # Z

    .line 1153
    sput-boolean p0, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->g:Z

    .line 1154
    return-void
.end method
