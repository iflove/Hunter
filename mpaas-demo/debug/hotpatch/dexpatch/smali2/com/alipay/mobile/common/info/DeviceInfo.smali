.class public Lcom/alipay/mobile/common/info/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final ANY_ZERO_STR:Ljava/lang/String; = "[0]+"

.field public static final CLIENT_KEY_MAX_LENGTH:I = 0xa

.field public static final CMCC:Ljava/lang/String; = "cmcc"

.field public static final CTCC:Ljava/lang/String; = "ctcc"

.field public static final CUCC:Ljava/lang/String; = "cucc"

.field public static final HARDWARD_INVALID_LEN:I = 0x5

.field public static final IMEI_LEN:I = 0xf

.field public static final NULL:Ljava/lang/String; = "null"

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static final TEMP_PREFIX:Ljava/lang/String; = "TEMP-"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final VM_TYPE:Ljava/lang/String; = "vmType"

.field private static mInstance:Lcom/alipay/mobile/common/info/DeviceInfo;

.field private static reforceInit:Z


# instance fields
.field public baseString:[Ljava/lang/String;

.field private defImei:Ljava/lang/String;

.field private defImsi:Ljava/lang/String;

.field private final format:Ljava/text/SimpleDateFormat;

.field private mClientId:Ljava/lang/String;

.field private mClientKey:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDencity:I

.field private mDid:Ljava/lang/String;

.field private final mDidGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mExternalCacheDir:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mMobileBrand:Ljava/lang/String;

.field private mMobileModel:Ljava/lang/String;

.field private mRooted:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSystemVersion:Ljava/lang/String;

.field private mVmType:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private operator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 175
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/info/DeviceInfo;->reforceInit:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 66
    .param p1, "context"    # Landroid/content/Context;

    .line 182
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->mVmType:Ljava/lang/String;

    .line 115
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDidGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    iput-object v1, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->mExternalCacheDir:Ljava/lang/String;

    .line 154
    const-string v4, "0"

    const-string v5, "1"

    const-string v6, "2"

    const-string v7, "3"

    const-string v8, "4"

    const-string v9, "5"

    const-string v10, "6"

    const-string v11, "7"

    const-string v12, "8"

    const-string v13, "9"

    const-string v14, "a"

    const-string v15, "b"

    const-string v16, "c"

    const-string v17, "d"

    const-string v18, "e"

    const-string v19, "f"

    const-string v20, "g"

    const-string v21, "h"

    const-string v22, "i"

    const-string v23, "j"

    const-string v24, "k"

    const-string v25, "l"

    const-string v26, "m"

    const-string/jumbo v27, "n"

    const-string/jumbo v28, "o"

    const-string/jumbo v29, "p"

    const-string/jumbo v30, "q"

    const-string/jumbo v31, "r"

    const-string/jumbo v32, "s"

    const-string/jumbo v33, "t"

    const-string/jumbo v34, "u"

    const-string/jumbo v35, "v"

    const-string/jumbo v36, "w"

    const-string/jumbo v37, "x"

    const-string/jumbo v38, "y"

    const-string/jumbo v39, "z"

    const-string v40, "A"

    const-string v41, "B"

    const-string v42, "C"

    const-string v43, "D"

    const-string v44, "E"

    const-string v45, "F"

    const-string v46, "G"

    const-string v47, "H"

    const-string v48, "I"

    const-string v49, "J"

    const-string v50, "K"

    const-string v51, "L"

    const-string v52, "M"

    const-string v53, "N"

    const-string v54, "O"

    const-string v55, "P"

    const-string v56, "Q"

    const-string v57, "R"

    const-string v58, "S"

    const-string v59, "T"

    const-string v60, "U"

    const-string v61, "V"

    const-string v62, "W"

    const-string v63, "X"

    const-string v64, "Y"

    const-string v65, "Z"

    filled-new-array/range {v4 .. v65}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->baseString:[Ljava/lang/String;

    .line 172
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->mLock:Ljava/lang/Object;

    .line 177
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyMMddHHmmssSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->format:Ljava/text/SimpleDateFormat;

    .line 183
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/info/DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/info/DeviceInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/info/DeviceInfo;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDidGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/info/DeviceInfo;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/info/DeviceInfo;

    monitor-enter v0

    .line 205
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/info/DeviceInfo;->mInstance:Lcom/alipay/mobile/common/info/DeviceInfo;

    if-nez v1, :cond_0

    .line 206
    new-instance v1, Lcom/alipay/mobile/common/info/DeviceInfo;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/info/DeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/info/DeviceInfo;->mInstance:Lcom/alipay/mobile/common/info/DeviceInfo;

    .line 207
    invoke-direct {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->init()V

    .line 209
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/info/DeviceInfo;->mInstance:Lcom/alipay/mobile/common/info/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 204
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private doGetDid()Ljava/lang/String;
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TEMP-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static declared-synchronized forceRefreashInstance()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/alipay/mobile/common/info/DeviceInfo;

    monitor-enter v0

    .line 231
    monitor-exit v0

    return-void
.end method

.method private generateClientKey()Ljava/lang/String;
    .locals 7

    .line 383
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 384
    .local v0, "random":Ljava/util/Random;
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->baseString:[Ljava/lang/String;

    array-length v1, v1

    .line 385
    .local v1, "length":I
    const-string v2, ""

    .line 386
    .local v2, "randomString":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->baseString:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method private generateUtDid()V
    .locals 3

    .line 303
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    .local v0, "settings":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 308
    const/4 v1, 0x0

    const-string/jumbo v2, "utdid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    .line 311
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 315
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/info/DeviceInfo$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/info/DeviceInfo$2;-><init>(Lcom/alipay/mobile/common/info/DeviceInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 330
    :cond_2
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;
    .locals 3

    const-class v0, Lcom/alipay/mobile/common/info/DeviceInfo;

    monitor-enter v0

    .line 192
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/info/DeviceInfo;->mInstance:Lcom/alipay/mobile/common/info/DeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 195
    monitor-exit v0

    return-object v1

    .line 193
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "DeviceManager must be create by call createInstance(Context context)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private init()V
    .locals 4

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 249
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "DeviceInfo"

    if-nez v0, :cond_0

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 252
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 255
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_0

    .line 253
    :catchall_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 259
    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 262
    goto :goto_1

    .line 260
    :catchall_1
    move-exception v2

    .line 261
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 265
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mScreenWidth:I

    .line 266
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mScreenHeight:I

    .line 267
    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDencity:I

    .line 268
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientId:Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->initIMEI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mImei:Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->initIMSI()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mImsi:Ljava/lang/String;

    .line 271
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->initClientKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientKey:Ljava/lang/String;

    .line 273
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->generateUtDid()V

    .line 275
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mMobileBrand:Ljava/lang/String;

    .line 276
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mMobileModel:Ljava/lang/String;

    .line 277
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mSystemVersion:Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->initVmType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mVmType:Ljava/lang/String;

    .line 279
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->rooted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mRooted:Z

    .line 280
    return-void
.end method

.method private initClientKey()Ljava/lang/String;
    .locals 4

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "clientKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".config"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "clientKey"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 344
    return-object v0

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->generateClientKey()Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    return-object v0
.end method

.method private initIMEI()Ljava/lang/String;
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->isValidClientID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 849
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private initIMSI()Ljava/lang/String;
    .locals 3

    .line 853
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->isValidClientID(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0xf

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 856
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private initVmType()Ljava/lang/String;
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 358
    .local v0, "settings":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vmType_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mSystemVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "vmType":Ljava/lang/String;
    return-object v1
.end method

.method private isBlank(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 652
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isDigitOrAlphaBelta(B)Z
    .locals 1
    .param p1, "c"    # B

    .line 826
    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x39

    if-le p1, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p1, v0, :cond_1

    const/16 v0, 0x7a

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0x41

    if-lt p1, v0, :cond_3

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "imsiOrimei"    # Ljava/lang/String;

    .line 630
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 633
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "trimS":Ljava/lang/String;
    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 637
    :cond_1
    const-string v2, "[0]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    return v0

    .line 640
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    .line 641
    return v0

    .line 643
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 635
    :cond_4
    :goto_0
    return v0

    .line 631
    .end local v1    # "trimS":Ljava/lang/String;
    :cond_5
    :goto_1
    return v0
.end method

.method private isValidClientID(Ljava/lang/String;)Z
    .locals 1
    .param p1, "clientID"    # Ljava/lang/String;

    .line 786
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    const/4 v0, 0x0

    return v0

    .line 788
    :cond_0
    const-string v0, "[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "imeiOrImsi"    # Ljava/lang/String;

    .line 797
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object p1

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "123456789012345"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 801
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->replaceNonHexChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private normalizedClientId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "imei"    # Ljava/lang/String;

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/info/DeviceInfo;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceNonHexChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "imei"    # Ljava/lang/String;

    .line 810
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    return-object p1

    .line 812
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 813
    .local v0, "byteClientId":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 814
    aget-byte v2, v0, v1

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->isDigitOrAlphaBelta(B)Z

    move-result v2

    if-nez v2, :cond_1

    .line 815
    const/16 v2, 0x30

    aput-byte v2, v0, v1

    .line 813
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private rooted()Z
    .locals 8

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "ret":Z
    const/4 v1, 0x0

    .line 396
    .local v1, "cla":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 398
    .local v2, "value":Ljava/lang/Object;
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 400
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 401
    .local v4, "claArrayTypes":[Ljava/lang/Class;
    const-string v5, "get"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 403
    .local v5, "meth":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v7, "ro.secure"

    aput-object v7, v3, v6

    .line 404
    .local v3, "arglist":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    .line 407
    .end local v3    # "arglist":[Ljava/lang/Object;
    .end local v4    # "claArrayTypes":[Ljava/lang/Class;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 405
    :catch_0
    move-exception v3

    .line 406
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "DeviceInfo"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    const/4 v0, 0x0

    goto :goto_1

    .line 410
    :cond_0
    if-eqz v2, :cond_1

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    const/4 v0, 0x1

    .line 413
    :cond_1
    :goto_1
    return v0
.end method


# virtual methods
.method public getAccessPoint()Ljava/lang/String;
    .locals 7

    .line 885
    const-string v0, ""

    const-string/jumbo v1, "wifi"

    .line 888
    .local v1, "apn":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    .line 889
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 890
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 892
    .local v3, "ni":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "unkown"

    .line 893
    .local v4, "extra":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_2

    const-string/jumbo v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    goto :goto_1

    .line 896
    :cond_1
    move-object v1, v4

    goto :goto_2

    .line 894
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    .line 899
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "ni":Landroid/net/NetworkInfo;
    .end local v4    # "extra":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 897
    :catch_0
    move-exception v2

    .line 898
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 901
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_3
    const-string v2, "internet"

    const-string/jumbo v3, "wifi"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 902
    const-string v2, "\""

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 903
    .end local v1    # "apn":Ljava/lang/String;
    .local v0, "apn":Ljava/lang/String;
    return-object v0
.end method

.method public getCellInfo()Ljava/lang/String;
    .locals 8

    .line 907
    const-string v0, "-1;-1"

    .line 910
    .local v0, "cellInfo":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 911
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 913
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 914
    .local v2, "temp":Landroid/telephony/CellLocation;
    if-eqz v2, :cond_2

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .local v3, "sbcellInfo":Ljava/lang/StringBuilder;
    instance-of v4, v2, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ";"

    if-eqz v4, :cond_1

    .line 917
    :try_start_1
    move-object v4, v2

    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 918
    .local v4, "gsmcl":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 919
    .local v6, "cellid":I
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v7

    .line 921
    .local v7, "lac":I
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 926
    .end local v4    # "gsmcl":Landroid/telephony/gsm/GsmCellLocation;
    .end local v6    # "cellid":I
    .end local v7    # "lac":I
    :cond_0
    goto :goto_0

    :cond_1
    instance-of v4, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_0

    .line 927
    move-object v4, v2

    check-cast v4, Landroid/telephony/cdma/CdmaCellLocation;

    .line 928
    .local v4, "cdmacl":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v6

    .line 929
    .restart local v6    # "cellid":I
    invoke-virtual {v4}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v7

    .line 931
    .restart local v7    # "lac":I
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    .line 941
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    .end local v2    # "temp":Landroid/telephony/CellLocation;
    .end local v3    # "sbcellInfo":Ljava/lang/StringBuilder;
    .end local v4    # "cdmacl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v6    # "cellid":I
    .end local v7    # "lac":I
    :cond_2
    :goto_0
    goto :goto_1

    .line 939
    :catch_0
    move-exception v1

    .line 940
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfo"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 943
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDefImei()Ljava/lang/String;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->defImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDefImsi()Ljava/lang/String;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->defImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getDencity()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDencity:I

    return v0
.end method

.method public getExternalCacheDir()Ljava/lang/String;
    .locals 2

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mExternalCacheDir:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 599
    .local v0, "cacheFile":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mExternalCacheDir:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    .end local v0    # "cacheFile":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 602
    :catchall_0
    move-exception v0

    .line 607
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mExternalCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "dir"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 567
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    .line 569
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, " dir:"

    const-string v5, "fail to creat "

    const-string v6, "DeviceInfo"

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-object v0

    .line 574
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    const-string v7, " dir exist,but not directory:"

    if-nez v3, :cond_1

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    return-object v1

    .line 579
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v8, Ljava/io/File;->separatorChar:C

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 581
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_2

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return-object v0

    .line 584
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    .line 585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-object v1

    .line 588
    :cond_3
    return-object v0

    .line 591
    .end local v0    # "path":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    return-object v1
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .line 955
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "MMddHHmmss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 956
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 957
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "strKey":Ljava/lang/String;
    return-object v2
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .line 1050
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .line 1062
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 3

    .line 1013
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1017
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1018
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :catchall_0
    move-exception v0

    .line 1019
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "DeviceInfo"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1021
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-object v2
.end method

.method public getOperator()Ljava/lang/String;
    .locals 5

    .line 966
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->operator:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 967
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    .line 968
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 969
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 971
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 974
    goto :goto_0

    .line 972
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "DeviceInfo"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    const-string/jumbo v2, "unknown"

    if-nez v1, :cond_0

    .line 976
    return-object v2

    .line 978
    :cond_0
    const-string v3, "46000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "46002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "46007"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 980
    :cond_1
    const-string v3, "46001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 981
    const-string v2, "cucc"

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->operator:Ljava/lang/String;

    goto :goto_2

    .line 983
    :cond_2
    const-string v3, "46003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 984
    const-string v2, "ctcc"

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->operator:Ljava/lang/String;

    goto :goto_2

    .line 986
    :cond_3
    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->operator:Ljava/lang/String;

    goto :goto_2

    .line 979
    :cond_4
    :goto_1
    const-string v2, "cmcc"

    iput-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->operator:Ljava/lang/String;

    .line 989
    .end local v0    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->operator:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .line 528
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 3

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1034
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1035
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    :catchall_0
    move-exception v0

    .line 1036
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "DeviceInfo"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-object v2
.end method

.method public getScreenHeight()I
    .locals 1

    .line 510
    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .line 501
    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mScreenWidth:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->format:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, "timeStamp":Ljava/lang/String;
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVmType()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mVmType:Ljava/lang/String;

    return-object v0
.end method

.method public getmClientKey()Ljava/lang/String;
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmDid()Ljava/lang/String;
    .locals 4

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDidGenerating:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    goto :goto_0

    .line 424
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    const-string v2, "DeviceInfo"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 426
    :cond_0
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DeviceInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getmDid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->doGetDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmDidAsync()Ljava/lang/String;
    .locals 3

    .line 435
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getmDidAsync="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceInfo"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->doGetDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmMobileBrand()Ljava/lang/String;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mMobileBrand:Ljava/lang/String;

    return-object v0
.end method

.method public getmMobileModel()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mMobileModel:Ljava/lang/String;

    return-object v0
.end method

.method public getmScreenHeight()I
    .locals 1

    .line 476
    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mScreenHeight:I

    return v0
.end method

.method public getmScreenWidth()I
    .locals 1

    .line 472
    iget v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mScreenWidth:I

    return v0
.end method

.method public getmSystemVersion()Ljava/lang/String;
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mSystemVersion:Ljava/lang/String;

    return-object v0
.end method

.method public installApk(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1066
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1067
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1068
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1072
    return-void
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 999
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1001
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 1002
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DeviceInfo"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1003
    return v0
.end method

.method public ismRooted()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mRooted:Z

    return v0
.end method

.method public refleshClientKey()Ljava/lang/String;
    .locals 4

    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 370
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->generateClientKey()Ljava/lang/String;

    move-result-object v1

    .line 371
    .local v1, "clientKey":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "clientKey"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 372
    iput-object v1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mClientKey:Ljava/lang/String;

    .line 373
    return-object v1
.end method

.method public refreashUtDid()V
    .locals 2

    .line 283
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/info/DeviceInfo$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/info/DeviceInfo$1;-><init>(Lcom/alipay/mobile/common/info/DeviceInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 296
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 297
    return-void
.end method

.method public setDefImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "defImei"    # Ljava/lang/String;

    .line 864
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->defImei:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setDefImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "defImsi"    # Ljava/lang/String;

    .line 872
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->defImsi:Ljava/lang/String;

    .line 873
    return-void
.end method

.method public setVmType(Ljava/lang/String;)V
    .locals 4
    .param p1, "vmType"    # Ljava/lang/String;

    .line 460
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mVmType:Ljava/lang/String;

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 465
    .local v0, "settings":Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vmType_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mSystemVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 468
    goto :goto_0

    .line 466
    :catchall_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "DeviceInfo"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 469
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public setmDid(Ljava/lang/String;)V
    .locals 3
    .param p1, "mDid"    # Ljava/lang/String;

    .line 444
    iput-object p1, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mDid:Ljava/lang/String;

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/info/DeviceInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 449
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "utdid"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    .end local v0    # "settings":Landroid/content/SharedPreferences;
    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    .line 451
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DeviceInfo"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
