.class public Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressAndODexCallback;,
        Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;,
        Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$OldCoreVersionCallable;
    }
.end annotation


# static fields
.field private static final BUFF_SIZE:I = 0x100000

.field private static final INIT_CONFIG_NOTIFY_CORE_EVENT:Ljava/lang/String; = "notifyCoreEvent"

.field private static final INIT_CONFIG_SET_GLOBAL_BOOL_VALUE:Ljava/lang/String; = "setGlobalBoolValue"

.field private static final INIT_CONFIG_UPDATE_BUSSINESS_INFO:Ljava/lang/String; = "updateBussinessInfo"

.field static final KEY_LAST_SUCCESS_ODEX_VERSION:Ljava/lang/String; = "KEY_LAST_SUCCESS_ODEX_VERSION"

.field static final KEY_MAIN_UCODEX_INIT_SUCCESS:Ljava/lang/String; = "KEY_MAIN_UCODEX_INIT_SUCCESS"

.field private static final TAG:Ljava/lang/String; = "H5UcService"

.field private static final UC_CORE_VERSION_FOR_WOODPECKER:Ljava/lang/String; = "ucCoreVersion"

.field static s7zInited:Z

.field private static s7zPath:Ljava/lang/String;

.field public static sAppId:Ljava/lang/String;

.field public static sAppIdDirectorySet:Z

.field private static sCheckedIfDeleteOldCore:Z

.field private static sDecompressCoreFilesLock:Ljava/lang/Object;

.field static sFallbackLimit:I

.field public static sInitUcFromSdcardPath:Ljava/lang/String;

.field public static sIsolateSpeedUp:Z

.field private static sOldDirCleared:Z

.field private static sOnWebViewPoolChange:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static sOtherInited:Z

.field public static sPreheadHasInit:Z

.field public static sPreheadInit:Z

.field static sProcessMode:I

.field public static sRebindIsolateProcessTimeout:I

.field public static sRenderProcessLaunchTimeout:I

.field public static sRenderProcessLaunchTimeout30:I

.field private static sSaveLastVersionDecompressDirLock:Ljava/lang/Object;

.field static sUcInited:Z

.field public static sUcReallyInitSuccess:Z

.field private static sUnzipLocalUpdatePath:Ljava/lang/String;

.field private static sUnzipLocalUpdateVersion:Ljava/lang/String;

.field private static sUpdatedUCVersionAndSdcardPath:Z

.field static sWebViewCreateDelay:I

.field static sWebViewPoolKeep:Z

.field static sWebViewPoolReallyUse:Z

.field static sWebViewPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 82
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 83
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOldDirCleared:Z

    .line 86
    const/4 v1, 0x1

    sput v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    .line 88
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    .line 90
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    .line 92
    const/16 v1, 0xbb8

    sput v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    .line 94
    sput v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    .line 95
    const/16 v1, 0x1f40

    sput v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRebindIsolateProcessTimeout:I

    .line 96
    const/16 v1, 0x2af8

    sput v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRenderProcessLaunchTimeout:I

    .line 97
    const/16 v1, 0x7530

    sput v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRenderProcessLaunchTimeout30:I

    .line 98
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sIsolateSpeedUp:Z

    .line 99
    const/4 v1, 0x3

    sput v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sFallbackLimit:I

    .line 100
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadInit:Z

    .line 101
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadHasInit:Z

    .line 103
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOtherInited:Z

    .line 104
    const-string v1, ""

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    .line 105
    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    .line 106
    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    .line 107
    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zPath:Ljava/lang/String;

    .line 109
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppId:Ljava/lang/String;

    .line 110
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppIdDirectorySet:Z

    .line 111
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcReallyInitSuccess:Z

    .line 112
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sDecompressCoreFilesLock:Ljava/lang/Object;

    .line 113
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sSaveLastVersionDecompressDirLock:Ljava/lang/Object;

    .line 115
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOnWebViewPoolChange:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 1317
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUpdatedUCVersionAndSdcardPath:Z

    .line 1347
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sCheckedIfDeleteOldCore:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->configureWebViewPool(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->checkOldCoreVersion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->dumpUCMSDKIfNeed(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Ljava/io/File;Z)Z
    .locals 1
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # Z

    .line 67
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->delete(Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 67
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sDecompressCoreFilesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getLastVersionDecompressDirFromAPSP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->saveLastVersionDecompressDir(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->deleteUCCoreFilesOnInitSuccess(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->setInitScenario(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .line 67
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->notifyUCInitSuccess()V

    return-void
.end method

.method public static addCommonInfoForMultiProcess(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    .locals 3
    .param p0, "data"    # Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1555
    if-eqz p0, :cond_0

    .line 1556
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    const-string v2, "ucVersion"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1557
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->WEBVIEW_VERSION:Ljava/lang/String;

    const-string v2, "webviewVersion"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1558
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cpuHardware"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1559
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRenderProcessLaunchTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "renderProcessLaunchTimeout"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1560
    invoke-virtual {p0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRebindIsolateProcessTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rebindIsolateProcessTimeout"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    .line 1562
    :cond_0
    return-void
.end method

.method private static declared-synchronized checkAabPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zipPath"    # Ljava/lang/String;

    move-object/from16 v1, p1

    const-class v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;

    monitor-enter v2

    .line 1602
    :try_start_0
    const-string v0, "H5UcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre check aab: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "apk!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 1605
    :try_start_1
    const-string v0, "apk!"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1606
    .local v0, "apkPath":Ljava/lang/String;
    const-string v4, "apk!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1607
    .local v4, "soPath":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1608
    .local v5, "soFilename":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "aab_lib"

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 1609
    .local v6, "targetSoDire":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1610
    .local v7, "targetSoPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1611
    .local v8, "desFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1612
    const-string v3, "H5UcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "has unzip, input: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\ntarget: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    monitor-exit v2

    return-object v7

    .line 1615
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1616
    .local v9, "start":J
    const-string v11, "H5UcService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start unzip: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v11, "zipFile":Ljava/io/File;
    new-instance v12, Ljava/util/zip/ZipFile;

    invoke-direct {v12, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 1619
    .local v12, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v12, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    .line 1620
    .local v13, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v12, v13}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v14

    .line 1621
    .local v14, "in":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1622
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    .line 1623
    .local v15, "fileParentDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1624
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 1626
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 1628
    .end local v15    # "fileParentDir":Ljava/io/File;
    :cond_2
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1629
    .local v15, "out":Ljava/io/OutputStream;
    const/high16 v3, 0x100000

    new-array v3, v3, [B

    .line 1631
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {v14, v3}, Ljava/io/InputStream;->read([B)I

    move-result v17

    move/from16 v18, v17

    .local v18, "realLength":I
    if-lez v17, :cond_3

    .line 1632
    move-object/from16 v17, v0

    move-object/from16 v16, v4

    move/from16 v0, v18

    const/4 v4, 0x0

    .end local v4    # "soPath":Ljava/lang/String;
    .end local v18    # "realLength":I
    .local v0, "realLength":I
    .local v16, "soPath":Ljava/lang/String;
    .local v17, "apkPath":Ljava/lang/String;
    invoke-virtual {v15, v3, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    move-object/from16 v4, v16

    move-object/from16 v0, v17

    goto :goto_0

    .line 1634
    .end local v16    # "soPath":Ljava/lang/String;
    .end local v17    # "apkPath":Ljava/lang/String;
    .local v0, "apkPath":Ljava/lang/String;
    .restart local v4    # "soPath":Ljava/lang/String;
    .restart local v18    # "realLength":I
    :cond_3
    move-object/from16 v17, v0

    move-object/from16 v16, v4

    move/from16 v0, v18

    .end local v4    # "soPath":Ljava/lang/String;
    .end local v18    # "realLength":I
    .local v0, "realLength":I
    .restart local v16    # "soPath":Ljava/lang/String;
    .restart local v17    # "apkPath":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 1635
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    .line 1636
    const-string v4, "H5UcService"

    move/from16 v18, v0

    .end local v0    # "realLength":I
    .restart local v18    # "realLength":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    .end local v3    # "buffer":[B
    .local v19, "buffer":[B
    const-string v3, "end unzip cast: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    move-object v3, v5

    move-object/from16 v22, v6

    .end local v5    # "soFilename":Ljava/lang/String;
    .end local v6    # "targetSoDire":Ljava/io/File;
    .local v3, "soFilename":Ljava/lang/String;
    .local v22, "targetSoDire":Ljava/io/File;
    sub-long v5, v20, v9

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1637
    monitor-exit v2

    return-object v7

    .line 1638
    .end local v3    # "soFilename":Ljava/lang/String;
    .end local v7    # "targetSoPath":Ljava/lang/String;
    .end local v8    # "desFile":Ljava/io/File;
    .end local v9    # "start":J
    .end local v11    # "zipFile":Ljava/io/File;
    .end local v12    # "zf":Ljava/util/zip/ZipFile;
    .end local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v15    # "out":Ljava/io/OutputStream;
    .end local v16    # "soPath":Ljava/lang/String;
    .end local v17    # "apkPath":Ljava/lang/String;
    .end local v18    # "realLength":I
    .end local v19    # "buffer":[B
    .end local v22    # "targetSoDire":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v3, "H5UcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aab exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1640
    const/4 v3, 0x0

    monitor-exit v2

    return-object v3

    .line 1643
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_4
    const-string v0, "H5UcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no need aab: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1644
    monitor-exit v2

    return-object v1

    .line 1601
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "zipPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static checkIfDeleteOldCore()V
    .locals 16

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfDeleteOldCore "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sCheckedIfDeleteOldCore:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "H5UcService"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sCheckedIfDeleteOldCore:Z

    if-eqz v0, :cond_0

    .line 1352
    return-void

    .line 1354
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sCheckedIfDeleteOldCore:Z

    .line 1355
    new-instance v3, Lcom/alipay/mobile/nebulauc/util/ProcessLock;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/.delete_uc_core.lock"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;-><init>(Ljava/lang/String;)V

    .line 1357
    .local v3, "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lock()V

    .line 1358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1359
    .local v5, "start":J
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1360
    .local v7, "context":Landroid/content/Context;
    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->updateUCVersionAndSdcardPath(Landroid/content/Context;)V

    .line 1362
    const/4 v8, 0x0

    .line 1363
    .local v8, "coreJarFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 1364
    .local v9, "webviewUCSoFile":Ljava/io/File;
    const-string v10, "h5container"

    invoke-virtual {v7, v10, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v10

    .line 1365
    .local v10, "h5Container":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    const-string v12, "uc"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1366
    .local v11, "unzipTargetParentDir":Ljava/io/File;
    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getLastVersionDecompressDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 1367
    .local v12, "lastUCCorePath":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1368
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1369
    new-instance v13, Ljava/io/File;

    const-string v14, "core.jar"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v13

    .line 1370
    new-instance v13, Ljava/io/File;

    const-string v14, "lib/libwebviewuc.so"

    invoke-direct {v13, v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v13

    .line 1372
    :cond_1
    const/4 v13, 0x0

    .line 1373
    .local v13, "invalidUCCore":Z
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    if-eqz v9, :cond_2

    .line 1374
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 1375
    :cond_2
    const/4 v13, 0x1

    .line 1377
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "checkIfDeleteOldCore invalidUCCore: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " lastUCCorePath: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " coreJarFile: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " webviewUCSoFile: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc()Z

    move-result v14

    if-nez v14, :cond_5

    sget-object v14, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    .line 1383
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    sget-object v14, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    if-eqz v13, :cond_7

    .line 1384
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v14, :cond_7

    .line 1386
    :cond_5
    :try_start_1
    invoke-static {v11, v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->delete(Ljava/io/File;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    goto :goto_0

    .line 1387
    :catchall_0
    move-exception v0

    move-object v14, v0

    move-object v0, v14

    .line 1388
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v14, "delete unzipTargetParentDir error"

    invoke-static {v2, v14, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1390
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_6

    .line 1412
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 1391
    return-void

    .line 1393
    :cond_6
    :try_start_3
    const-string v0, ""

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->saveLastVersionDecompressDir(Ljava/lang/String;)V

    .line 1395
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1396
    .local v0, "bundle":Landroid/os/Bundle;
    nop

    .line 1397
    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getDecompressRootDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getCoreZipFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 1396
    invoke-static {v14, v15}, Lcom/uc/webview/export/extension/UCCore;->getExtractDirPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1398
    .local v14, "extractDirPath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    .line 1399
    const-string v15, "decDirPath"

    invoke-virtual {v0, v15, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    const-string v15, "zipFilePath"

    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getCoreZipFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v15, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v4, "zipFileType"

    const-string v15, "7z"

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const-string v4, "deleteAfterExtract"

    const/4 v15, 0x0

    invoke-virtual {v0, v4, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1403
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;

    invoke-direct {v1, v7}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;->call(Landroid/os/Bundle;)Ljava/lang/Boolean;

    .line 1406
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v14    # "extractDirPath":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfDeleteOldCore elapse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v5

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1412
    .end local v5    # "start":J
    .end local v7    # "context":Landroid/content/Context;
    .end local v8    # "coreJarFile":Ljava/io/File;
    .end local v9    # "webviewUCSoFile":Ljava/io/File;
    .end local v10    # "h5Container":Ljava/io/File;
    .end local v11    # "unzipTargetParentDir":Ljava/io/File;
    .end local v12    # "lastUCCorePath":Ljava/lang/String;
    .end local v13    # "invalidUCCore":Z
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 1413
    nop

    .line 1414
    return-void

    .line 1412
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "catch exception "

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1409
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sCheckedIfDeleteOldCore:Z

    .line 1410
    nop

    .end local v3    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1412
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    :goto_1
    invoke-virtual {v3}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    throw v0
.end method

.method private static checkOldCoreVersion(Ljava/lang/String;)Z
    .locals 9
    .param p0, "oldCoreVersion"    # Ljava/lang/String;

    .line 308
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 309
    return v1

    .line 312
    :cond_0
    :try_start_0
    const-string v0, "2.13.2.38.*^^2.13.2.[^123](.*)"

    .line 314
    .local v0, "supportVersions":Ljava/lang/String;
    const-string v2, "h5_ucPreheadOldVersionList"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 315
    .local v2, "oldVersionConfig":Lcom/alibaba/fastjson/JSONObject;
    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 316
    const-string v4, "enable"

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    .line 317
    .local v4, "enable":Z
    if-nez v4, :cond_1

    .line 318
    return v1

    .line 320
    :cond_1
    const-string v5, "versions"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "versions":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 322
    move-object v0, v5

    .line 325
    .end local v4    # "enable":Z
    .end local v5    # "versions":Ljava/lang/String;
    :cond_2
    const-string v4, "\\^\\^"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, "list":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 327
    .local v7, "ver":Ljava/lang/String;
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 328
    return v3

    .line 330
    :cond_3
    invoke-virtual {p0, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_4

    .line 331
    return v3

    .line 326
    .end local v7    # "ver":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 334
    :cond_5
    return v1

    .line 335
    .end local v0    # "supportVersions":Ljava/lang/String;
    .end local v2    # "oldVersionConfig":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "list":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOldCoreVersion exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5UcService"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return v1
.end method

.method private static cleanOldFilesIfNeed()V
    .locals 5

    .line 1422
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOldDirCleared:Z

    if-eqz v0, :cond_0

    .line 1423
    return-void

    .line 1425
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOldDirCleared:Z

    .line 1428
    const/4 v1, 0x1

    .line 1429
    .local v1, "configSwitch":Z
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 1430
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v2, :cond_1

    .line 1431
    const-string v3, "h5_clearOldUCCoreFiles"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    xor-int/2addr v0, v3

    move v1, v0

    .line 1434
    :cond_1
    if-nez v1, :cond_2

    .line 1435
    return-void

    .line 1438
    :cond_2
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$12;

    invoke-direct {v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$12;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1456
    return-void
.end method

.method private static commonSetBeforeInit()V
    .locals 5

    .line 189
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->getCpuHardware()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cpuHardware"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "ucCoreVersion":Ljava/lang/String;
    const-string v1, "ucCoreVersion"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/nativecrash/NativeCrashHandlerApi;->addCrashHeadInfo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUCCoreVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5UcService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v1

    .line 198
    .local v1, "isForeground":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fg_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fgbg_start"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init start in foreground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private static configureWebViewPool(Ljava/lang/String;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .line 206
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 207
    .local v0, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 212
    .local v1, "enable":Ljava/lang/Boolean;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 215
    :cond_1
    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    const-string v3, "size"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    .line 216
    .local v2, "poolSize":I
    const/4 v3, 0x4

    if-gt v2, v3, :cond_3

    if-gtz v2, :cond_2

    goto :goto_0

    .line 220
    :cond_2
    sput v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    goto :goto_1

    .line 218
    :cond_3
    :goto_0
    const/4 v3, 0x2

    sput v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    .line 222
    :goto_1
    sget v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    const-string v4, "delay"

    invoke-static {v0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 223
    .local v3, "delay":I
    if-lez v3, :cond_4

    .line 224
    sput v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewCreateDelay:I

    .line 226
    :cond_4
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    const-string v5, "use"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolReallyUse:Z

    .line 228
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    .line 231
    :cond_5
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    const-string v5, "keep"

    invoke-static {v0, v5, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolKeep:Z

    goto :goto_3

    .line 213
    .end local v2    # "poolSize":I
    .end local v3    # "delay":I
    :cond_6
    :goto_2
    const/4 v2, 0x0

    sput v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sWebViewPoolSize:I

    .line 233
    :goto_3
    return-void
.end method

.method private static delete(Ljava/io/File;Z)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "deleteDirItSelf"    # Z

    .line 1533
    const/4 v0, 0x1

    .line 1534
    .local v0, "bRet":Z
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1535
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1536
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1537
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 1538
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1539
    .local v4, "child":Ljava/io/File;
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->delete(Ljava/io/File;Z)Z

    move-result v5

    and-int/2addr v0, v5

    .line 1538
    .end local v4    # "child":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1543
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1544
    .local v1, "path":Ljava/lang/String;
    const-string v2, ", bRet="

    const-string v3, "H5UcService"

    if-eqz p1, :cond_1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->checkPathValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1545
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    and-int/2addr v0, v4

    .line 1546
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file valid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1548
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete file invalid or !deleteDirItSelf "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    .end local v1    # "path":Ljava/lang/String;
    :cond_2
    :goto_1
    return v0
.end method

.method private static deleteUCCoreFilesOnInitSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "initType"    # Ljava/lang/String;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUCCoreFilesOnInitSuccess "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UcService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    const-string v0, "bit_by_new_zip_file"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    const-string v0, "bit_by_new_dex_dir"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    :cond_0
    const/4 v0, 0x0

    const-string v2, "h5container"

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 439
    .local v0, "h5Container":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "uc"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    .local v2, "unzipTargetParentDir":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteUCCoreFiles "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v1, "IO"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;

    invoke-direct {v3, v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$2;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 468
    .end local v0    # "h5Container":Ljava/io/File;
    .end local v2    # "unzipTargetParentDir":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private static dumpUCMSDKIfNeed(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1001
    if-eqz p0, :cond_0

    const-string v0, "h5_dumpUCMSDK"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1003
    .local v0, "start":J
    const-string v2, "H5UcService"

    const-string v3, "begin dump app_ucmsdk"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const/4 v3, 0x0

    const-string v4, "ucmsdk"

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->dumpDir(Ljava/io/File;)V

    .line 1005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end dump app_ucmsdk used time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    .end local v0    # "start":J
    :cond_0
    return-void
.end method

.method public static enablePreheadInit()Z
    .locals 4

    .line 472
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadHasInit:Z

    const-string v1, "H5UcService"

    if-nez v0, :cond_3

    .line 474
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 477
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 478
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 479
    const-class v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 480
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/process/H5IpcServer;

    .line 481
    .local v2, "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    if-eqz v2, :cond_0

    .line 482
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/process/H5IpcServer;->enableUCCorePreheadInit()Z

    move-result v3

    sput-boolean v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadInit:Z

    .line 485
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    .end local v2    # "h5IpcServer":Lcom/alipay/mobile/nebula/process/H5IpcServer;
    :cond_0
    goto :goto_1

    .line 486
    :cond_1
    const-string v0, "h5_ucPrehead"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "enablePrehead":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .end local v0    # "enablePrehead":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 489
    :catchall_0
    move-exception v0

    .line 490
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadHasInit:Z

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prehead config value is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadInit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get prehead config value "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadInit:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sPreheadInit:Z

    return v0
.end method

.method private static genPrivateDataDirectorySuffix(Z)Ljava/lang/String;
    .locals 5
    .param p0, "isInTinyProcess"    # Z

    .line 1575
    const/4 v0, 0x0

    .line 1576
    .local v0, "pid":Ljava/lang/String;
    const-string v1, "H5UcService"

    if-eqz p0, :cond_1

    .line 1577
    const-class v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 1579
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1578
    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 1580
    .local v2, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v2, :cond_0

    .line 1581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->getLitePid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1583
    :cond_0
    const-string v3, "h5EventHandlerService == null"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    .end local v2    # "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", subprocess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    move-object v1, v0

    .line 1591
    .local v1, "directory":Ljava/lang/String;
    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init use "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5UcDir"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppId:Ljava/lang/String;

    .line 1594
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppIdDirectorySet:Z

    .line 1596
    :cond_2
    return-object v1
.end method

.method private static getCoreZipFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 247
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zPath:Ljava/lang/String;

    return-object v0

    .line 250
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->updateUCVersionAndSdcardPath(Landroid/content/Context;)V

    .line 252
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "H5UcService"

    if-nez v0, :cond_1

    .line 253
    const-string v0, "init 7z so from sdcard"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zPath:Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init 7z so from local update path "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zPath:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_2
    const-string v0, "init 7z so by default"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getZipPathFromLibDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zPath:Ljava/lang/String;

    return-object v0
.end method

.method private static getDecompressRootDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 236
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->updateUCVersionAndSdcardPath(Landroid/content/Context;)V

    .line 238
    const-string v0, "h5container"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 239
    .local v0, "h5Container":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "uc"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v1, "unzipTargetParentDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/so"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .local v2, "unzipTargetDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 242
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 243
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getLastVersionDecompressDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 289
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getLastVersionDecompressDirFromAPSP()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "oldUCCoreDecompressDirPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    return-object v0

    .line 295
    :cond_0
    const/4 v1, 0x0

    const-string v2, "h5container"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 296
    .local v1, "h5Container":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "uc"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    const-string v4, "core.jar"

    invoke-static {v2, v4, v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getSpecialFilePath(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "historyOldUCCorePath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 300
    .local v3, "historyOldUCCoreFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "so"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 304
    .end local v3    # "historyOldUCCoreFile":Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getLastVersionDecompressDirFromAPSP()Ljava/lang/String;
    .locals 3

    .line 283
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sSaveLastVersionDecompressDirLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    const-string v1, "h5_last_version_dec_dir"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 285
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getMultiProcessMode(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;)I
    .locals 12
    .param p0, "multiProcessConfig"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "context"    # Landroid/content/Context;

    .line 883
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "multi_process"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 885
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const/4 v1, 0x0

    const-string v2, "H5UcService"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 887
    const-string v4, "ucversion"

    invoke-virtual {v0, v4, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 888
    .local v4, "ucVersion":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 889
    const-string v1, "pageStart uncalled user, keep fallback"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    return v3

    .line 893
    .end local v4    # "ucVersion":Ljava/lang/String;
    :cond_0
    const-string v4, "mode"

    invoke-static {p0, v4, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v4

    .line 894
    .local v4, "mode":I
    if-nez v4, :cond_1

    .line 895
    return v4

    .line 899
    :cond_1
    const/16 v5, 0x1f40

    const-string v6, "rebindIsolateTimeout"

    invoke-static {p0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRebindIsolateProcessTimeout:I

    .line 901
    const/16 v5, 0x2af8

    const-string v6, "launchTimeout"

    invoke-static {p0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRenderProcessLaunchTimeout:I

    .line 902
    const/16 v5, 0x7530

    const-string v6, "launchTimeout_30"

    invoke-static {p0, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRenderProcessLaunchTimeout30:I

    .line 904
    const/4 v5, 0x1

    if-eqz v0, :cond_2

    const-string v6, "launch_failed"

    invoke-virtual {v0, v6, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 906
    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->reportMultiProcessAutoFallback(Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;Z)V

    .line 907
    return v3

    .line 910
    :cond_2
    const-string v6, "disableFallback"

    invoke-static {p0, v6, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v6

    .line 911
    .local v6, "disableFallback":Z
    if-nez v6, :cond_3

    if-lez v4, :cond_3

    .line 912
    const/4 v7, 0x3

    const-string v8, "fallbackLimit"

    invoke-static {p0, v8, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sFallbackLimit:I

    .line 914
    if-eqz v0, :cond_3

    const-string v7, "count"

    invoke-virtual {v0, v7, v3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    sget v8, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sFallbackLimit:I

    if-le v7, v8, :cond_3

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pageStart uncalled user, auto fallback, limit\uff1a"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sFallbackLimit:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->reportMultiProcessAutoFallback(Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;Z)V

    .line 917
    return v3

    .line 922
    :cond_3
    const/4 v7, 0x2

    if-ne v4, v7, :cond_4

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v8, "Xiaomi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 923
    const-string v7, "sandboxXiaomiMemory"

    invoke-static {p0, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v7

    .line 924
    .local v7, "memoryLimit":I
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/api/DeviceHWInfo;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    div-long/2addr v8, v10

    long-to-int v9, v8

    .line 925
    .local v9, "totalMemory":I
    if-ge v9, v7, :cond_4

    .line 926
    const/4 v4, 0x1

    .line 930
    .end local v7    # "memoryLimit":I
    .end local v9    # "totalMemory":I
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 932
    .local v7, "phoneInfo":Ljava/lang/String;
    const-string v8, "sandboxDeviceList"

    invoke-static {p0, v8, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 933
    .local v8, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 934
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_6

    .line 935
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 936
    const-string v1, "device should use normal render process"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    return v5

    .line 934
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 943
    .end local v9    # "i":I
    :cond_6
    const-string v9, "sandboxSdkIntList"

    invoke-static {p0, v9, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 944
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 945
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_1
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_8

    .line 946
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson/JSONArray;->getIntValue(I)I

    move-result v11

    if-ne v10, v11, :cond_7

    .line 947
    const-string v1, "sdk version should use normal render process"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return v5

    .line 945
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 954
    .end local v9    # "i":I
    :cond_8
    const-string v5, "singleDeviceList"

    invoke-static {p0, v5, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 955
    .end local v8    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .local v5, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_a

    .line 956
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 957
    invoke-virtual {v5, v8}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 958
    const-string v1, "device should use single process"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    return v3

    .line 956
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 965
    .end local v8    # "i":I
    :cond_a
    const-string v8, "singleSdkIntList"

    invoke-static {p0, v8, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 966
    .end local v5    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .local v1, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 967
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v8

    if-ge v5, v8, :cond_c

    .line 968
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONArray;->getIntValue(I)I

    move-result v9

    if-ne v8, v9, :cond_b

    .line 969
    const-string v8, "sdk version should use single process"

    invoke-static {v2, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    return v3

    .line 967
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 974
    .end local v5    # "i":I
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "use default multi process config "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    return v4
.end method

.method private static getOptionProviderKey()[Ljava/lang/String;
    .locals 2

    .line 873
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5GetOptionProvidedKeyProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5GetOptionProvidedKeyProvider;

    .line 874
    .local v0, "h5GetOptionProvidedKeyProvider":Lcom/alipay/mobile/nebula/provider/H5GetOptionProvidedKeyProvider;
    if-eqz v0, :cond_0

    .line 875
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5GetOptionProvidedKeyProvider;->getOptionProvidedKey()[Ljava/lang/String;

    move-result-object v1

    .local v1, "provided_key":[Ljava/lang/String;
    goto :goto_0

    .line 877
    .end local v1    # "provided_key":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .line 879
    .restart local v1    # "provided_key":[Ljava/lang/String;
    :goto_0
    return-object v1
.end method

.method public static getSpecialFilePath(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "fileNameFilter"    # Ljava/lang/String;
    .param p2, "traverseDir"    # Z

    .line 1293
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1294
    return-object v1

    .line 1296
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1297
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_6

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    .line 1300
    :cond_1
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 1301
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1302
    if-nez p2, :cond_2

    goto :goto_1

    .line 1303
    :cond_2
    invoke-static {v4, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getSpecialFilePath(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 1304
    .local v5, "path":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1305
    return-object v5

    .line 1308
    .end local v5    # "path":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1309
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1300
    .end local v4    # "file":Ljava/io/File;
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1312
    :cond_5
    return-object v1

    .line 1298
    :cond_6
    :goto_2
    return-object v1
.end method

.method public static getZipPathFromLibDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 1460
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$13;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$13;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1466
    .local v0, "files":[Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getZipPathFromLibDir recursiveDelete cache/alipay_temp_dec_ files length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5UcService"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 1469
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v0, v5

    .line 1470
    .local v6, "fil":Ljava/io/File;
    invoke-static {v6, v3, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 1469
    .end local v6    # "fil":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1474
    :cond_0
    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1475
    return-object v1

    .line 1479
    :cond_1
    sget-object v1, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->PURE_SO_NAME:Ljava/lang/String;

    .line 1480
    .local v1, "PURE_SO_NAME":Ljava/lang/String;
    sget-object v4, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->SO_NAME:Ljava/lang/String;

    .line 1483
    .local v4, "SO_NAME":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/common/logging/api/LogContext;->runningBit()I

    move-result v5

    .line 1484
    .local v5, "runingBit":I
    const/16 v6, 0x40

    if-ne v5, v6, :cond_3

    .line 1485
    sget-object v6, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    .line 1487
    .local v6, "ucVersion":Ljava/lang/String;
    const-string v7, "_64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1488
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 1489
    .local v7, "len":I
    add-int/lit8 v8, v7, -0x3

    invoke-virtual {v6, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 1491
    .end local v7    # "len":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WebViewCore_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_7z_uc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 1492
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".so"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v7

    .line 1496
    .end local v5    # "runingBit":I
    .end local v6    # "ucVersion":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 1494
    :catchall_0
    move-exception v5

    .line 1495
    .local v5, "tr":Ljava/lang/Throwable;
    const-string v6, "set 64 so path exception "

    invoke-static {v2, v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1498
    .end local v5    # "tr":Ljava/lang/Throwable;
    :goto_1
    const/4 v5, 0x0

    .line 1499
    .local v5, "zipPath":Ljava/lang/String;
    const-class v6, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 1501
    .local v6, "classLoader":Ljava/lang/ClassLoader;
    :try_start_1
    const-class v7, Ljava/lang/ClassLoader;

    const-string v8, "findLibrary"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v3

    invoke-virtual {v7, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1502
    .local v7, "findMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1503
    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v3

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v5, v3

    .line 1504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getZipPathFromLibDir from reflect "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1507
    .end local v7    # "findMethod":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 1505
    :catchall_1
    move-exception v3

    .line 1506
    .local v3, "t":Ljava/lang/Throwable;
    const-string v7, "catch exception"

    invoke-static {v2, v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1508
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1510
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    .local v3, "libFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1512
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getZipPathFromLibDir from android api "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1516
    .end local v3    # "libFile":Ljava/io/File;
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1520
    :try_start_2
    invoke-static {p0, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->checkAabPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v2

    .line 1523
    goto :goto_3

    .line 1521
    :catch_0
    move-exception v2

    .line 1522
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1524
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_3
    return-object v5

    .line 1517
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "zip path empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static declared-synchronized init(Z)Z
    .locals 8
    .param p0, "enableHA"    # Z

    const-class v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;

    monitor-enter v0

    .line 126
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "H5UcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5UCProvider;

    .line 128
    .local v3, "ucProvider":Lcom/alipay/mobile/nebula/provider/H5UCProvider;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5UCProvider;->cannotInitUC()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    const-string v4, "H5UcService"

    const-string v5, "cannot init uc, bye bye"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    .line 131
    sput-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->initUcNormal:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    nop

    .line 170
    :try_start_1
    const-string v4, "UcServiceSetup"

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v4, v1, v5}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 132
    monitor-exit v0

    return v2

    .line 134
    :cond_0
    :try_start_2
    sget-boolean v4, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v4, :cond_1

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_InitUc:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 135
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_InitUc:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_1
    const-string v4, "UcServiceSetup"

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v4, v1, v5}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    const-string v4, "H5UcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "s7zInited "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " sUcInited:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->commonSetBeforeInit()V

    .line 141
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->enablePreheadInit()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->checkIfDeleteOldCore()V

    goto :goto_0

    .line 144
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->init7zSo()V

    .line 146
    :goto_0
    sget-boolean v4, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v4, :cond_3

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_InitUc7zFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 147
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_InitUc7zFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCore(Z)V

    .line 150
    sget-boolean v4, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    if-nez v4, :cond_4

    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_InitUcCoreFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 151
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Flag;->eventTrackerStubMap:Ljava/util/Map;

    sget-object v5, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_InitUcCoreFinish:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 154
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->cleanOldFilesIfNeed()V

    .line 156
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isForeground()Z

    move-result v4

    .line 157
    .local v4, "isForeground":Z
    const-string v5, "fgbg_end"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fg_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v5, "H5UcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init end in foreground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .end local v3    # "ucProvider":Lcom/alipay/mobile/nebula/provider/H5UCProvider;
    .end local v4    # "isForeground":Z
    :try_start_3
    const-string v3, "UcServiceSetup"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    nop

    .line 173
    sget-boolean v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOtherInited:Z

    const/4 v2, 0x1

    if-nez v1, :cond_6

    .line 174
    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOtherInited:Z

    .line 176
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 177
    .local v1, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_6

    .line 178
    const-string v3, "h5_enableWebViewPool"

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sOnWebViewPoolChange:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->configureWebViewPool(Ljava/lang/String;)V

    .line 181
    const-string v4, "H5UcService"

    const-string v5, "h5ConfigProvider == null"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 185
    .end local v1    # "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v3    # "value":Ljava/lang/String;
    :cond_6
    monitor-exit v0

    return v2

    .line 159
    :catchall_0
    move-exception v3

    .line 160
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_4
    const-string v4, "H5UcService"

    const-string v5, "init exception "

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    const-string v4, "H5_UC_INIT_FAILED"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 162
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    sget-object v5, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string v5, "isTinyApp"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    const-string v5, "ucVersion"

    sget-object v6, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    .line 164
    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->stringify(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v4

    .line 161
    invoke-static {v4}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 167
    const/16 v4, 0x7533

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->logUcInitException(Ljava/lang/Throwable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    nop

    .line 170
    :try_start_5
    const-string v4, "UcServiceSetup"

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {v4, v1, v5}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 168
    monitor-exit v0

    return v2

    .line 170
    .end local v3    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v3

    :try_start_6
    const-string v4, "UcServiceSetup"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v4, v1, v2}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 125
    .end local p0    # "enableHA":Z
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static init7zSo()V
    .locals 22

    .line 1143
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    if-eqz v0, :cond_0

    .line 1144
    return-void

    .line 1146
    :cond_0
    const-string v1, "init7zSo"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 1147
    const-string v0, "init7zSoStart"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 1148
    const/4 v2, 0x1

    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 1149
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v4, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1150
    const-string v5, "H5UcService"

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    new-instance v0, Lcom/alipay/mobile/nebulauc/util/ProcessLock;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 1152
    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "/.init7zSo.lock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1154
    .local v6, "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    :try_start_0
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->lock()V

    .line 1155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1156
    .local v7, "time":J
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v9, v0

    .line 1157
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->updateUCVersionAndSdcardPath(Landroid/content/Context;)V

    .line 1158
    const-string v0, "h5_ucMainDeleteOldCore"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 1159
    .local v10, "onlyMainProcessDeleteOldCore":Ljava/lang/String;
    const-string v0, "h5container"

    invoke-virtual {v9, v0, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    move-object v11, v0

    .line 1160
    .local v11, "h5Container":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v12, "uc"

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v12, v0

    .line 1161
    .local v12, "unzipTargetParentDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/so"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v13, v0

    .line 1162
    .local v13, "unzipTargetDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v14, "/lib"

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 1163
    .local v14, "mainSoParentDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v15, "libwebviewuc.so"

    invoke-direct {v0, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v0

    .line 1164
    .local v15, "mainSoFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v4, "core.jar"

    invoke-direct {v0, v13, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v0

    .line 1165
    .local v4, "coreDexFile":Ljava/io/File;
    const-string v0, "init7zSo begin"

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->logFolderTree(Ljava/io/File;Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "no"

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1167
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1255
    :cond_1
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1257
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;

    invoke-direct {v2, v12, v13}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$11;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v16, v4

    move-object/from16 v17, v14

    goto/16 :goto_a

    .line 1255
    :cond_2
    move-object/from16 v16, v4

    move-object/from16 v17, v14

    goto/16 :goto_a

    .line 1169
    :cond_3
    :goto_0
    const-string v0, "init7zSoUnzip"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 1170
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1171
    const-string v0, "init on main process, mark uc not init!"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    const-string v0, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 1175
    :cond_4
    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    goto :goto_1

    :cond_5
    move-object/from16 v16, v4

    move-object/from16 v17, v14

    goto :goto_2

    :cond_6
    :goto_1
    sget-wide v16, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-lez v0, :cond_7

    .line 1178
    move-object/from16 v16, v4

    .end local v4    # "coreDexFile":Ljava/io/File;
    .local v16, "coreDexFile":Ljava/io/File;
    sget-wide v3, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    move-object/from16 v17, v14

    const/4 v14, 0x1

    .end local v14    # "mainSoParentDir":Ljava/io/File;
    .local v17, "mainSoParentDir":Ljava/io/File;
    invoke-static {v3, v4, v14}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    goto :goto_2

    .line 1175
    .end local v16    # "coreDexFile":Ljava/io/File;
    .end local v17    # "mainSoParentDir":Ljava/io/File;
    .restart local v4    # "coreDexFile":Ljava/io/File;
    .restart local v14    # "mainSoParentDir":Ljava/io/File;
    :cond_7
    move-object/from16 v16, v4

    move-object/from16 v17, v14

    .line 1182
    .end local v4    # "coreDexFile":Ljava/io/File;
    .end local v14    # "mainSoParentDir":Ljava/io/File;
    .restart local v16    # "coreDexFile":Ljava/io/File;
    .restart local v17    # "mainSoParentDir":Ljava/io/File;
    :goto_2
    const-string v0, "isUCM57, try copy libv8uc.so"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$10;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$10;-><init>()V

    invoke-virtual {v12, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    move-object v3, v0

    .line 1189
    .local v3, "oldVersions":[Ljava/io/File;
    if-eqz v3, :cond_c

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "libv8ucso":Ljava/io/File;
    array-length v4, v3

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v4, :cond_a

    aget-object v18, v3, v14

    move-object/from16 v19, v18

    .line 1193
    .local v19, "oldVersion":Ljava/io/File;
    move-object/from16 v18, v0

    .end local v0    # "libv8ucso":Ljava/io/File;
    .local v18, "libv8ucso":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v3

    .end local v3    # "oldVersions":[Ljava/io/File;
    .local v20, "oldVersions":[Ljava/io/File;
    const-string v3, "check "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isM40(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1195
    new-instance v0, Ljava/io/File;

    const-string v3, "so/lib/libv8uc.so"

    move/from16 v21, v4

    move-object/from16 v4, v19

    .end local v19    # "oldVersion":Ljava/io/File;
    .local v4, "oldVersion":Ljava/io/File;
    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1196
    .end local v18    # "libv8ucso":Ljava/io/File;
    .restart local v0    # "libv8ucso":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1197
    goto :goto_4

    .line 1194
    .end local v0    # "libv8ucso":Ljava/io/File;
    .end local v4    # "oldVersion":Ljava/io/File;
    .restart local v18    # "libv8ucso":Ljava/io/File;
    .restart local v19    # "oldVersion":Ljava/io/File;
    :cond_8
    move/from16 v21, v4

    move-object/from16 v4, v19

    .end local v19    # "oldVersion":Ljava/io/File;
    .restart local v4    # "oldVersion":Ljava/io/File;
    move-object/from16 v0, v18

    .line 1191
    .end local v4    # "oldVersion":Ljava/io/File;
    .end local v18    # "libv8ucso":Ljava/io/File;
    .restart local v0    # "libv8ucso":Ljava/io/File;
    :cond_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v20

    move/from16 v4, v21

    goto :goto_3

    .end local v20    # "oldVersions":[Ljava/io/File;
    .restart local v3    # "oldVersions":[Ljava/io/File;
    :cond_a
    move-object/from16 v18, v0

    move-object/from16 v20, v3

    .line 1201
    .end local v3    # "oldVersions":[Ljava/io/File;
    .restart local v20    # "oldVersions":[Ljava/io/File;
    :goto_4
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1202
    new-instance v3, Ljava/io/File;

    const-string v4, "libv8uc.so"

    invoke-direct {v3, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1203
    .local v3, "tmpSave":Ljava/io/File;
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "got libv8uc.so: "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", move it to : "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .end local v3    # "tmpSave":Ljava/io/File;
    goto :goto_5

    .line 1206
    :cond_b
    const-string v3, "cannot find libv8uc.so"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1189
    .end local v0    # "libv8ucso":Ljava/io/File;
    .end local v20    # "oldVersions":[Ljava/io/File;
    .local v3, "oldVersions":[Ljava/io/File;
    :cond_c
    move-object/from16 v20, v3

    .line 1210
    .end local v3    # "oldVersions":[Ljava/io/File;
    .restart local v20    # "oldVersions":[Ljava/io/File;
    :goto_5
    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->isRetryInitUc()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_d

    goto :goto_6

    :cond_d
    const/4 v2, 0x1

    goto :goto_7

    .line 1212
    :cond_e
    :goto_6
    const/4 v2, 0x1

    :try_start_2
    invoke-static {v12, v2}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->delete(Ljava/io/File;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1215
    goto :goto_7

    .line 1213
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1214
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v3, "delete unzipTargetParentDir error"

    invoke-static {v5, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1218
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_7
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 1219
    const-string v0, ""

    .line 1220
    .local v0, "m7zPath":Ljava/lang/String;
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1221
    const-string v3, "init 7z so from sdcard"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    move-object v0, v3

    goto :goto_8

    .line 1223
    :cond_f
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init 7z so from local update path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    sget-object v3, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    move-object v0, v3

    goto :goto_8

    .line 1227
    :cond_10
    const-string v3, "init 7z so by default"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    invoke-static {v9}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getZipPathFromLibDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 1234
    :goto_8
    new-instance v3, Ljava/io/File;

    invoke-virtual {v9}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alipay_temp_dec_"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 1236
    .local v2, "tmpUCSoDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1237
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1249
    const-string v3, "has_extract_7zso"

    const-string v4, "true"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    .line 1251
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x1

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    .line 1250
    :goto_9
    invoke-static {v9, v0, v3, v4}, Lcom/uc/webview/export/extension/UCCore;->extractWebCoreLibraryIfNeeded(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1253
    invoke-virtual {v2, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1254
    nop

    .line 1273
    .end local v0    # "m7zPath":Ljava/lang/String;
    .end local v2    # "tmpUCSoDir":Ljava/io/File;
    .end local v20    # "oldVersions":[Ljava/io/File;
    :goto_a
    const-string v0, "init7zSo end"

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->logFolderTree(Ljava/io/File;Ljava/lang/String;)V

    .line 1274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v7

    .line 1275
    .local v2, "delta":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init7zSo elapse "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1277
    const-string v0, "ucInit|init7zSo"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1285
    .end local v2    # "delta":J
    .end local v7    # "time":J
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "onlyMainProcessDeleteOldCore":Ljava/lang/String;
    .end local v11    # "h5Container":Ljava/io/File;
    .end local v12    # "unzipTargetParentDir":Ljava/io/File;
    .end local v13    # "unzipTargetDir":Ljava/io/File;
    .end local v15    # "mainSoFile":Ljava/io/File;
    .end local v16    # "coreDexFile":Ljava/io/File;
    .end local v17    # "mainSoParentDir":Ljava/io/File;
    :cond_12
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 1286
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1287
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 1288
    nop

    .line 1289
    return-void

    .line 1236
    .restart local v0    # "m7zPath":Ljava/lang/String;
    .local v2, "tmpUCSoDir":Ljava/io/File;
    .restart local v7    # "time":J
    .restart local v9    # "context":Landroid/content/Context;
    .restart local v10    # "onlyMainProcessDeleteOldCore":Ljava/lang/String;
    .restart local v11    # "h5Container":Ljava/io/File;
    .restart local v12    # "unzipTargetParentDir":Ljava/io/File;
    .restart local v13    # "unzipTargetDir":Ljava/io/File;
    .restart local v15    # "mainSoFile":Ljava/io/File;
    .restart local v16    # "coreDexFile":Ljava/io/File;
    .restart local v17    # "mainSoParentDir":Ljava/io/File;
    .restart local v20    # "oldVersions":[Ljava/io/File;
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_8

    .line 1285
    .end local v0    # "m7zPath":Ljava/lang/String;
    .end local v2    # "tmpUCSoDir":Ljava/io/File;
    .end local v7    # "time":J
    .end local v9    # "context":Landroid/content/Context;
    .end local v10    # "onlyMainProcessDeleteOldCore":Ljava/lang/String;
    .end local v11    # "h5Container":Ljava/io/File;
    .end local v12    # "unzipTargetParentDir":Ljava/io/File;
    .end local v13    # "unzipTargetDir":Ljava/io/File;
    .end local v15    # "mainSoFile":Ljava/io/File;
    .end local v16    # "coreDexFile":Ljava/io/File;
    .end local v17    # "mainSoParentDir":Ljava/io/File;
    .end local v20    # "oldVersions":[Ljava/io/File;
    :catchall_1
    move-exception v0

    goto :goto_b

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v2, "catch exception "

    invoke-static {v5, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1282
    const/4 v2, 0x0

    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->s7zInited:Z

    .line 1283
    nop

    .end local v6    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1285
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "processLock":Lcom/alipay/mobile/nebulauc/util/ProcessLock;
    :goto_b
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulauc/util/ProcessLock;->unlock()V

    .line 1286
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1287
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    throw v0
.end method

.method static initCommonConfig(Ljava/lang/String;)V
    .locals 7
    .param p0, "configName"    # Ljava/lang/String;

    .line 1011
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 1012
    .local v0, "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1015
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commonConfig_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1017
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 1018
    .local v4, "arr":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1019
    goto :goto_0

    .line 1021
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1022
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->setEachCommonConfigByKey(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1021
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1024
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "arr":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "i":I
    :cond_3
    goto :goto_0

    .line 1025
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 1026
    return-void

    .line 1013
    :cond_5
    :goto_2
    return-void
.end method

.method private static initCore(Z)V
    .locals 31
    .param p0, "enableHA"    # Z

    .line 556
    move/from16 v1, p0

    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    if-eqz v0, :cond_0

    .line 557
    return-void

    .line 559
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->markInitThread()V

    .line 560
    const-string v2, "initCore"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 561
    const-string v0, "initCoreStart"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 563
    const-string v0, "initCore2success"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 564
    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initCore "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", enableHA "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "H5UcService"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v6, 0x1

    sput-boolean v6, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUcInited:Z

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 568
    .local v7, "initCoreTime":J
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 570
    .local v9, "context":Landroid/content/Context;
    invoke-static {v9}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->dumpUCMSDKIfNeed(Landroid/content/Context;)V

    .line 572
    const/4 v0, 0x0

    .line 573
    .local v0, "VERIFY_POLICY":I
    const/4 v10, 0x0

    .line 574
    .local v10, "DELETE_CORE_POLICY":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v11

    .line 575
    .local v11, "isInTinyProcess":Z
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v12

    const-string v13, "YES"

    if-eqz v12, :cond_2

    sget-object v12, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    .line 576
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, "h5_disable_uc_init_verify"

    invoke-static {v12, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 577
    :cond_1
    const/4 v0, 0x0

    .line 578
    const/4 v10, 0x0

    goto :goto_0

    .line 580
    :cond_2
    const/16 v0, 0x1f

    .line 583
    if-eqz v11, :cond_3

    const-string v12, "h5_ucSetupVerifyAsync"

    invoke-static {v12}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 584
    const/high16 v12, -0x80000000

    or-int/2addr v0, v12

    .line 587
    :cond_3
    const-string v12, "h5_ucQuickVerify"

    invoke-static {v12}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 588
    const-string v12, "so quick verify"

    invoke-static {v5, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/high16 v12, 0x10000000

    or-int/2addr v0, v12

    .line 591
    :cond_4
    const/16 v10, 0x3f

    .line 594
    :goto_0
    if-eqz v11, :cond_5

    .line 595
    const-string v12, "h5_tinyUseVerifyPolicyNone"

    invoke-static {v12}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 596
    const/4 v0, 0x0

    .line 597
    const-string v12, "in tiny use VERIFY_POLICY_NONE"

    invoke-static {v5, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v0

    goto :goto_1

    .line 601
    :cond_5
    move v12, v0

    .end local v0    # "VERIFY_POLICY":I
    .local v12, "VERIFY_POLICY":I
    :goto_1
    const-string v0, "initCore_setupTask"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 606
    const-string v14, "h5container"

    invoke-virtual {v9, v14, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v14

    .line 607
    .local v14, "rootDir":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uc/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/so"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v15

    .line 608
    .local v3, "soDir":Ljava/io/File;
    const-string v4, "dexFilePath"

    .line 609
    .local v4, "soPathKey":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 610
    .local v15, "soPathValue":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v2

    const-string v2, "got so unzip dir: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exists: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rootDir canonicalPath: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rootDir absolutePath: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OPTION_DEX_FILE_PATH soPath: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v2, "soPath"

    invoke-static {v2, v15}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {v11}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->genPrivateDataDirectorySuffix(Z)Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, "directory":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v3

    .end local v3    # "soDir":Ljava/io/File;
    .local v18, "soDir":Ljava/io/File;
    const-string v3, "process directory: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->enablePreheadInit()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 624
    const-string v3, "call preheadInit"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 625
    invoke-static {v9}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->preheadInit(Landroid/content/Context;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v3

    .local v3, "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    goto :goto_2

    .line 627
    .end local v3    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    :cond_6
    const-string v3, "not call preheadInit"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 628
    const-string v3, "CONTEXT"

    invoke-static {v3, v9}, Lcom/uc/webview/export/extension/UCCore;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v3

    .line 630
    .restart local v3    # "setupTask":Lcom/uc/webview/export/utility/SetupTask;
    :goto_2
    move/from16 v19, v11

    const/4 v6, 0x1

    .end local v11    # "isInTinyProcess":Z
    .local v19, "isInTinyProcess":Z
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string v6, "MULTI_CORE_TYPE"

    invoke-virtual {v3, v6, v11}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 631
    const-string v11, "SYSTEM_WEBVIEW"

    move-object/from16 v20, v14

    .end local v14    # "rootDir":Ljava/io/File;
    .local v20, "rootDir":Ljava/io/File;
    const-string v14, "false"

    invoke-virtual {v6, v11, v14}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 632
    const-string v11, "loadPolicy"

    move-object/from16 v21, v14

    const-string v14, "SPECIFIED_ONLY"

    invoke-virtual {v6, v11, v14}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 633
    const-string v11, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    invoke-virtual {v6, v11, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    if-eqz v1, :cond_7

    const-string v14, "true"

    goto :goto_3

    :cond_7
    move-object/from16 v14, v21

    .line 634
    :goto_3
    const-string v11, "AC"

    invoke-virtual {v6, v11, v14}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 635
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "VERIFY_POLICY"

    invoke-virtual {v6, v14, v11}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 636
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v14, "delete_core"

    invoke-virtual {v6, v14, v11}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 637
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v11, "init_setup_thread"

    invoke-virtual {v6, v11, v14}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 638
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getOptionProviderKey()[Ljava/lang/String;

    move-result-object v11

    const-string v14, "provided_keys"

    invoke-virtual {v6, v14, v11}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    .line 639
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v11, "distinguish_js_error"

    invoke-virtual {v6, v11, v14}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    new-instance v11, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$6;

    invoke-direct {v11}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$6;-><init>()V

    .line 640
    const-string v14, "exception"

    invoke-virtual {v6, v14, v11}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v6

    check-cast v6, Lcom/uc/webview/export/utility/SetupTask;

    new-instance v11, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;

    invoke-direct {v11, v9}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;-><init>(Landroid/content/Context;)V

    .line 657
    const-string v14, "success"

    invoke-virtual {v6, v14, v11}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 708
    invoke-virtual {v3, v4, v15}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 711
    const-string v6, "h5_ucApolloConfig"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 712
    .local v6, "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    const/4 v11, 0x0

    .line 713
    .local v11, "useApollo":Z
    if-eqz v6, :cond_8

    .line 714
    const-string v14, "useApollo"

    invoke-virtual {v6, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 716
    :cond_8
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useApollo "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    if-nez v11, :cond_9

    .line 718
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const-string v1, "ucPlayer"

    invoke-virtual {v3, v1, v14}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 722
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initLogConfig()[Ljava/lang/Object;

    move-result-object v1

    const-string v14, "log_conf"

    invoke-virtual {v3, v14, v1}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 724
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 725
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string v14, "no"

    if-eqz v1, :cond_c

    .line 726
    move-object/from16 v21, v2

    .end local v2    # "directory":Ljava/lang/String;
    .local v21, "directory":Ljava/lang/String;
    const-string v2, "h5_disable_multi_unknown_crash"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 728
    move-object/from16 v22, v2

    const/16 v16, 0x1

    .end local v2    # "value":Ljava/lang/String;
    .local v22, "value":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v23, v4

    .end local v4    # "soPathKey":Ljava/lang/String;
    .local v23, "soPathKey":Ljava/lang/String;
    const-string v4, "disable_multi_unknown_crash"

    invoke-virtual {v3, v4, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    goto :goto_4

    .line 727
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "soPathKey":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    .restart local v4    # "soPathKey":Ljava/lang/String;
    :cond_a
    move-object/from16 v22, v2

    move-object/from16 v23, v4

    .line 732
    .end local v2    # "value":Ljava/lang/String;
    .end local v4    # "soPathKey":Ljava/lang/String;
    .restart local v22    # "value":Ljava/lang/String;
    .restart local v23    # "soPathKey":Ljava/lang/String;
    :goto_4
    const-string v2, "h5_uc_parallel_init"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 733
    .local v2, "ucParallelInit":Ljava/lang/String;
    const-string v4, "yes"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v24, v1

    .end local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v24, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-string v1, "startup_policy"

    if-eqz v4, :cond_b

    .line 734
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alipay/mobile/h5container/api/H5PageData;->sUseUCParallelInit:Z

    .line 735
    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    goto :goto_5

    .line 737
    :cond_b
    move-object/from16 v25, v2

    const/4 v4, 0x0

    .end local v2    # "ucParallelInit":Ljava/lang/String;
    .local v25, "ucParallelInit":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    goto :goto_5

    .line 725
    .end local v21    # "directory":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    .end local v23    # "soPathKey":Ljava/lang/String;
    .end local v24    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v25    # "ucParallelInit":Ljava/lang/String;
    .restart local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .local v2, "directory":Ljava/lang/String;
    .restart local v4    # "soPathKey":Ljava/lang/String;
    :cond_c
    move-object/from16 v24, v1

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    .line 741
    .end local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    .end local v2    # "directory":Ljava/lang/String;
    .end local v4    # "soPathKey":Ljava/lang/String;
    .restart local v21    # "directory":Ljava/lang/String;
    .restart local v23    # "soPathKey":Ljava/lang/String;
    .restart local v24    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :goto_5
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 742
    const-string v1, "h5_ucCoreMultiProcess"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 743
    .local v1, "multiProcessConfig":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v1, v9}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getMultiProcessMode(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setup multi process mode: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    .line 746
    const-string v2, "isolateSpeedUp"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sIsolateSpeedUp:Z

    .line 747
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "webview_multi_process_enable_service_speedup"

    invoke-virtual {v3, v4, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 748
    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sRebindIsolateProcessTimeout:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "webview_multi_process_fallback_timeout"

    invoke-virtual {v3, v4, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 750
    :cond_d
    sget v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "webview_multi_process"

    invoke-virtual {v3, v4, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 755
    .end local v1    # "multiProcessConfig":Lcom/alibaba/fastjson/JSONObject;
    :cond_e
    const-string v1, "h5_ucCommonSetupConfig"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 756
    .local v1, "commonSetupConfigStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 757
    .local v2, "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_10

    .line 758
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v25, v1

    .end local v1    # "commonSetupConfigStr":Ljava/lang/String;
    .local v25, "commonSetupConfigStr":Ljava/lang/String;
    move-object/from16 v1, v22

    check-cast v1, Ljava/lang/String;

    .line 759
    .local v1, "key":Ljava/lang/String;
    move-object/from16 v22, v4

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupExceptionHelper;->setupKeyMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v26, v6

    .end local v6    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .local v26, "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    .line 760
    .end local v1    # "key":Ljava/lang/String;
    move-object/from16 v4, v22

    move-object/from16 v1, v25

    move-object/from16 v6, v26

    goto :goto_6

    .line 758
    .end local v25    # "commonSetupConfigStr":Ljava/lang/String;
    .end local v26    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .local v1, "commonSetupConfigStr":Ljava/lang/String;
    .restart local v6    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    :cond_f
    move-object/from16 v25, v1

    move-object/from16 v26, v6

    .end local v1    # "commonSetupConfigStr":Ljava/lang/String;
    .end local v6    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "commonSetupConfigStr":Ljava/lang/String;
    .restart local v26    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_7

    .line 757
    .end local v25    # "commonSetupConfigStr":Ljava/lang/String;
    .end local v26    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v1    # "commonSetupConfigStr":Ljava/lang/String;
    .restart local v6    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    :cond_10
    move-object/from16 v25, v1

    move-object/from16 v26, v6

    .line 762
    .end local v1    # "commonSetupConfigStr":Ljava/lang/String;
    .end local v6    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    .restart local v25    # "commonSetupConfigStr":Ljava/lang/String;
    .restart local v26    # "jsonObjApollo":Lcom/alibaba/fastjson/JSONObject;
    :goto_7
    invoke-virtual {v3}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 763
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    move-object v4, v2

    .end local v2    # "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    .local v4, "commonSetupConfig":Lcom/alibaba/fastjson/JSONObject;
    sub-long v1, v0, v7

    .line 766
    .local v1, "setUpTaskTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUpTask cost:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_11

    .line 770
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide/from16 v27, v1

    .end local v1    # "setUpTaskTime":J
    .local v27, "setUpTaskTime":J
    const/16 v1, 0x80

    :try_start_1
    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 771
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "perf_test"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 772
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcDebugLogger;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    .line 775
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    goto :goto_9

    .line 769
    .end local v27    # "setUpTaskTime":J
    .restart local v1    # "setUpTaskTime":J
    :cond_11
    move-wide/from16 v27, v1

    .line 777
    .end local v1    # "setUpTaskTime":J
    .restart local v27    # "setUpTaskTime":J
    :cond_12
    :goto_8
    goto :goto_9

    .line 775
    .end local v27    # "setUpTaskTime":J
    .restart local v1    # "setUpTaskTime":J
    :catchall_1
    move-exception v0

    move-wide/from16 v27, v1

    .line 779
    .end local v1    # "setUpTaskTime":J
    .restart local v27    # "setUpTaskTime":J
    :goto_9
    const-string v0, "EnableCustomErrPage"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 780
    const-string v0, "enable_allresponse_callback"

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 783
    const-string v0, "h5_openUCCacheLog"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 784
    .local v0, "openCacheLog":Z
    if-eqz v0, :cond_13

    .line 785
    const-string v2, "OPEN_CACHE_LOG"

    invoke-static {v2, v1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 787
    :cond_13
    const-string v2, "DISABLE_PREFER_CACHE"

    invoke-static {v2, v1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 791
    nop

    .line 792
    const-string v1, "h5_ucDisableACCanvas"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    .line 793
    .local v1, "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "phoneInfo":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "phoneInfo "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    if-ge v6, v13, :cond_15

    .line 798
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 799
    const-string v13, "DisableACCanvas"

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    const-string v13, "DisableAccelerateCanvas"

    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .local v22, "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-static {v13, v1}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 801
    goto :goto_b

    .line 797
    .end local v22    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v1    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_14
    move-object/from16 v22, v1

    const/4 v1, 0x1

    .end local v1    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v22    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v22

    goto :goto_a

    .end local v22    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v1    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_15
    move-object/from16 v22, v1

    .end local v1    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v22    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    goto :goto_b

    .line 793
    .end local v2    # "phoneInfo":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v22    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v1    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    :cond_16
    move-object/from16 v22, v1

    .line 805
    .end local v1    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v22    # "disableACCanvasArray":Lcom/alibaba/fastjson/JSONArray;
    :goto_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    .line 806
    .local v1, "initCoreAllTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initCore elapse "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 808
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v13, "ucInit|initCore"

    invoke-static {v13, v6}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 809
    sget-object v6, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    const-string v13, "ucInit|coreVersion"

    invoke-static {v13, v6}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 813
    :cond_17
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 814
    const-string v6, "H5_clean_sw_cache"

    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 815
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 817
    .local v13, "time":J
    new-instance v6, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    invoke-direct {v6}, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;-><init>()V

    .line 818
    .local v6, "ucServiceWorkerProvider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    move/from16 v16, v0

    .end local v0    # "openCacheLog":Z
    .local v16, "openCacheLog":Z
    const-string v0, ""

    invoke-interface {v6, v0}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;->clearServiceWorker(Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v29, v1

    .end local v1    # "initCoreAllTime":J
    .local v29, "initCoreAllTime":J
    const-string v1, "clearServiceWorker cache cost "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 814
    .end local v6    # "ucServiceWorkerProvider":Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerPushProvider;
    .end local v13    # "time":J
    .end local v16    # "openCacheLog":Z
    .end local v29    # "initCoreAllTime":J
    .restart local v0    # "openCacheLog":Z
    .restart local v1    # "initCoreAllTime":J
    :cond_18
    move/from16 v16, v0

    move-wide/from16 v29, v1

    .line 821
    .end local v0    # "openCacheLog":Z
    .end local v1    # "initCoreAllTime":J
    .restart local v16    # "openCacheLog":Z
    .restart local v29    # "initCoreAllTime":J
    :goto_c
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->preInitTinyNet()V

    goto :goto_d

    .line 813
    .end local v16    # "openCacheLog":Z
    .end local v29    # "initCoreAllTime":J
    .restart local v0    # "openCacheLog":Z
    .restart local v1    # "initCoreAllTime":J
    :cond_19
    move/from16 v16, v0

    move-wide/from16 v29, v1

    .line 824
    .end local v0    # "openCacheLog":Z
    .end local v1    # "initCoreAllTime":J
    .restart local v16    # "openCacheLog":Z
    .restart local v29    # "initCoreAllTime":J
    :goto_d
    const-string v0, "h5_ucCommonConfigBeforeCreateWebView"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->initCommonConfig(Ljava/lang/String;)V

    .line 825
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 v2, v17

    const/4 v1, 0x0

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 826
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method private static initLogConfig()[Ljava/lang/Object;
    .locals 4

    .line 1078
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1079
    .local v0, "logConfig":[Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1080
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1081
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$9;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$9;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 1130
    const/4 v1, 0x3

    const-string v2, "[all]"

    aput-object v2, v0, v1

    .line 1131
    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 1132
    return-object v0
.end method

.method private static markInitThread()V
    .locals 2

    .line 547
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "threadName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    const-string v1, "thread"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->addCommonInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method private static notifyUCInitSuccess()V
    .locals 8

    .line 831
    const-string v0, "KEY_MAIN_UCODEX_INIT_SUCCESS"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    .line 832
    .local v1, "ucodexInitSuccess":Z
    const/4 v2, 0x0

    .line 833
    .local v2, "versionUpdated":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v3

    const-string v4, "KEY_LAST_SUCCESS_ODEX_VERSION"

    if-eqz v3, :cond_3

    const-string v3, "h5_notifyUcInitSuccess"

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "no"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 834
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->enablePreheadInit()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 835
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getLastVersionDecompressDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 836
    .local v3, "lastSuccessVersion":Ljava/lang/String;
    if-eqz v3, :cond_1

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 837
    const/4 v2, 0x1

    goto :goto_0

    .line 840
    .end local v3    # "lastSuccessVersion":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 841
    .restart local v3    # "lastSuccessVersion":Ljava/lang/String;
    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 842
    const/4 v2, 0x1

    .line 845
    :cond_1
    :goto_0
    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    if-nez v2, :cond_2

    if-nez v1, :cond_3

    .line 847
    :cond_2
    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$7;

    invoke-direct {v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$7;-><init>()V

    const-wide/16 v6, 0x7d0

    invoke-static {v5, v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 863
    .end local v3    # "lastSuccessVersion":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->enablePreheadInit()Z

    move-result v3

    if-nez v3, :cond_4

    .line 864
    sget-object v3, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 867
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->setBooleanConfig(Ljava/lang/String;Z)V

    .line 869
    :cond_5
    return-void
.end method

.method private static preInitTinyNet()V
    .locals 1

    .line 1136
    const-class v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    .line 1137
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/h5container/service/H5EventHandlerService;
    if-eqz v0, :cond_0

    .line 1138
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;->preLoadInTinyProcess()V

    .line 1140
    :cond_0
    return-void
.end method

.method private static preheadInit(Landroid/content/Context;)Lcom/uc/webview/export/utility/SetupTask;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 500
    const-string v0, "H5UcService"

    const-string v1, "preheadInit called."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v1, "preheadInitStart"

    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->setTrace(Ljava/lang/String;)V

    .line 503
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getDecompressRootDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, "decompressRootDir":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getCoreZipFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 505
    .local v2, "zipFilePath":Ljava/lang/String;
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getLastVersionDecompressDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "businessPreVersionDecompressDir":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preheadInit businessDecompressRootDir = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " zipFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " businessPreVersionDecompressDir = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "CONTEXT"

    invoke-static {v4, v0}, Lcom/uc/webview/export/business/BusinessWrapper;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    .line 511
    const-string v4, "bo_dec_r_p"

    invoke-virtual {v0, v4, v1}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    .line 513
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "bo_f_u_dec_r_p"

    invoke-virtual {v0, v6, v5}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    .line 514
    const-string v6, "bo_new_ucm_zf"

    invoke-virtual {v0, v6, v2}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    .line 515
    const-string v6, "bo_new_ucm_z_type"

    const-string v7, "7z"

    invoke-virtual {v0, v6, v7}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    .line 516
    const-string v6, "bo_old_dex_dp"

    invoke-virtual {v0, v6, v3}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    .line 518
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "bo_dex_old_dex_dir"

    invoke-virtual {v0, v7, v6}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    .line 519
    const-string v6, "bo_skip_io_dc"

    invoke-virtual {v0, v6, v5}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$OldCoreVersionCallable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$OldCoreVersionCallable;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;)V

    .line 520
    const-string v7, "bo_prom_sp_v_c_i"

    invoke-virtual {v0, v7, v5}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressCallable;-><init>(Landroid/content/Context;)V

    .line 522
    const-string v7, "bo_dec_cl"

    invoke-virtual {v0, v7, v5}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    sget-object v5, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    .line 523
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "bo_del_aft_extract"

    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$4;

    invoke-direct {v4}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$4;-><init>()V

    .line 524
    const-string v5, "bo_s_i_uc_core"

    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressAndODexCallback;

    invoke-direct {v4, v6}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$DecompressAndODexCallback;-><init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$1;)V

    .line 532
    const-string v5, "bo_dec_odex_cb"

    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/utility/SetupTask;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$3;-><init>(Landroid/content/Context;)V

    .line 534
    const-string v5, "be_init_success"

    invoke-virtual {v0, v5, v4}, Lcom/uc/webview/export/utility/SetupTask;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/BaseSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/utility/SetupTask;

    .line 510
    return-object v0
.end method

.method private static reportMultiProcessAutoFallback(Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;Z)V
    .locals 2
    .param p0, "preferences"    # Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    .param p1, "isLaunchFailed"    # Z

    .line 979
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;

    invoke-direct {v0, p1, p0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$8;-><init>(ZLcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;)V

    const-string v1, "UcSetupTracing"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 995
    return-void
.end method

.method private static saveLastVersionDecompressDir(Ljava/lang/String;)V
    .locals 3
    .param p0, "ucCoreDecompressDir"    # Ljava/lang/String;

    .line 270
    const-string v0, "H5UcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLastVersionDecompressDir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sDecompressCoreFilesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sSaveLastVersionDecompressDirLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 277
    :try_start_1
    const-string v2, "h5_last_version_dec_dir"

    invoke-static {v2, p0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->saveStringConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 280
    return-void

    .line 278
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "ucCoreDecompressDir":Ljava/lang/String;
    :try_start_4
    throw v2

    .line 279
    .restart local p0    # "ucCoreDecompressDir":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static setEachCommonConfigByKey(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "obj"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1029
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1032
    :cond_0
    const-string v0, "onlyMain"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1033
    .local v0, "onlyMain":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 1034
    return-void

    .line 1037
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1038
    return-void

    .line 1040
    :cond_2
    const-string v1, "updateBussinessInfo"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "var2"

    const-string v3, "H5UcService"

    const-string v4, "var1"

    const-string v5, "var0"

    const-string v6, " "

    if-eqz v1, :cond_4

    .line 1041
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1042
    .local v1, "var0":Ljava/lang/Integer;
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1043
    .local v4, "var1":Ljava/lang/Integer;
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1044
    .local v2, "var2":Ljava/lang/String;
    const-string v5, "var3"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1045
    .local v5, "var3":Ljava/lang/Object;
    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    .line 1046
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "common config updateBussinessInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v6, v2, v5}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 1049
    :cond_3
    return-void

    .line 1051
    .end local v1    # "var0":Ljava/lang/Integer;
    .end local v2    # "var2":Ljava/lang/String;
    .end local v4    # "var1":Ljava/lang/Integer;
    .end local v5    # "var3":Ljava/lang/Object;
    :cond_4
    const-string v1, "notifyCoreEvent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1052
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 1053
    .restart local v1    # "var0":Ljava/lang/Integer;
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1054
    .local v4, "var1":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 1055
    .local v2, "var2":Ljava/lang/Boolean;
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    if-eqz v2, :cond_6

    .line 1056
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1057
    .local v5, "hasCallback":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "common config notifyCoreEvent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    if-eqz v5, :cond_5

    .line 1059
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;Landroid/webkit/ValueCallback;)Ljava/lang/Object;

    goto :goto_0

    .line 1061
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3, v4}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1064
    .end local v5    # "hasCallback":Z
    :cond_6
    :goto_0
    return-void

    .line 1067
    .end local v1    # "var0":Ljava/lang/Integer;
    .end local v2    # "var2":Ljava/lang/Boolean;
    .end local v4    # "var1":Ljava/lang/Object;
    :cond_7
    const-string v1, "setGlobalBoolValue"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1068
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1069
    .local v1, "var0":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 1070
    .local v2, "var1":Ljava/lang/Boolean;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v2, :cond_8

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "common config setGlobalBoolValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 1075
    .end local v1    # "var0":Ljava/lang/String;
    .end local v2    # "var1":Ljava/lang/Boolean;
    :cond_8
    return-void

    .line 1030
    .end local v0    # "onlyMain":Ljava/lang/Boolean;
    :cond_9
    :goto_1
    return-void
.end method

.method private static setInitScenario(Ljava/lang/String;)V
    .locals 5
    .param p0, "initType"    # Ljava/lang/String;

    .line 415
    const-string v0, "bit_by_old_dex_dir"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_1

    .line 417
    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    if-eq v0, v4, :cond_0

    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    if-ne v0, v1, :cond_3

    :cond_0
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 420
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    goto :goto_0

    .line 422
    :cond_1
    const-string v0, "bit_by_new_zip_file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 423
    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    if-eq v0, v4, :cond_2

    sget v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateScene:I

    if-ne v0, v1, :cond_3

    :cond_2
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 427
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageData;->sCreateTimestamp:J

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setInitScenario(JI)V

    .line 430
    :cond_3
    :goto_0
    return-void
.end method

.method static updatePrivateDataDirectorySuffix()V
    .locals 2

    .line 1565
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppIdDirectorySet:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCoreEvent CORE_EVENT_UPDATE_PRIVATE_DATA_DIRECTORY_SUFFIX "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UcDir"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sAppIdDirectorySet:Z

    .line 1572
    :cond_0
    return-void
.end method

.method private static updateUCVersionAndSdcardPath(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 1320
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUpdatedUCVersionAndSdcardPath:Z

    if-eqz v0, :cond_0

    .line 1321
    return-void

    .line 1323
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUpdatedUCVersionAndSdcardPath:Z

    .line 1324
    nop

    .line 1326
    const-string v0, "h5_ucsdkLocalUpdatePath"

    invoke-static {p0, v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    .line 1327
    .local v0, "preferences":Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
    const-string v1, "path"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    .line 1328
    const-string v1, "version"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    .line 1329
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1330
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/slm/libWebViewCore_ri_7z_uc.so"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .local v1, "sdcardUnzipTargetDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1332
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sInitUcFromSdcardPath:Ljava/lang/String;

    goto :goto_0

    .line 1334
    :cond_1
    const-string v2, "libWebViewCore_ri_7z_uc.so"

    .line 1335
    .local v2, "unzipRemoteInspectPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    .local v3, "unzipRemoteInspectSo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1337
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    .line 1338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_ri"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    .line 1342
    .end local v1    # "sdcardUnzipTargetDir":Ljava/io/File;
    .end local v2    # "unzipRemoteInspectPath":Ljava/lang/String;
    .end local v3    # "unzipRemoteInspectSo":Ljava/io/File;
    :cond_2
    :goto_0
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdatePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1343
    sget-object v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sUnzipLocalUpdateVersion:Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    .line 1345
    :cond_3
    return-void
.end method
