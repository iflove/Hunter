.class public Lcom/alipay/mobile/common/logging/uploader/BaseUploader;
.super Ljava/lang/Object;
.source "BaseUploader.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field protected b:Ljava/io/File;

.field protected c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-string v0, "MdapLogUploadManager"

    sput-object v0, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .param p1, "uploadFileDir"    # Ljava/io/File;
    .param p2, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->b:Ljava/io/File;

    .line 50
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    .line 51
    return-void
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileName"    # Ljava/lang/String;

    .line 365
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 366
    return-object v1

    .line 368
    :cond_0
    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 369
    .local v2, "loginfo":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 370
    return-object v1

    .line 373
    :cond_1
    const/4 v0, 0x2

    aget-object v0, v2, v0

    .line 374
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/String;

    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 88
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .local v1, "component":Landroid/content/ComponentName;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "component":Landroid/content/ComponentName;
    return-void

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setComponentEnabled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p0, "logCategory"    # Ljava/lang/String;
    .param p1, "zipLength"    # Ljava/lang/String;
    .param p2, "cost"    # J

    .line 406
    const-string v0, "LogMonitor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 410
    .local v3, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v3, v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 411
    const-string v0, "LogUploadCost"

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 414
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 416
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 417
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "logCategory"    # Ljava/lang/String;
    .param p1, "httpCode"    # Ljava/lang/String;
    .param p2, "mdapCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "zipLength"    # Ljava/lang/String;

    .line 422
    const-string v0, "LogMonitor"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    return-void

    .line 425
    :cond_0
    new-instance v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 426
    .local v3, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v3, v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 427
    const-string v0, "LogUpload"

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v3, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam2(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam3(Ljava/lang/String;)V

    .line 431
    const-string v0, "errorMsg"

    invoke-virtual {v3, v0, p3}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string/jumbo v0, "zipLength"

    invoke-virtual {v3, v0, p4}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 434
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogEncryptClient()Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 380
    .local v2, "client":Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 381
    return-object p0

    .line 383
    :cond_0
    const-string v0, "\\$\\$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    .line 384
    .local v3, "logs":[Ljava/lang/String;
    move-object v3, v0

    array-length v0, v0

    .line 385
    .local v0, "len":I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 386
    .local v4, "sb":Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    move v6, v5

    move-object v5, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 387
    aget-object v7, v3, v6

    .line 388
    .local v1, "item":Ljava/lang/String;
    move-object v1, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 389
    const-string v7, "1_"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "$$"

    if-eqz v7, :cond_2

    .line 391
    const/4 v7, 0x2

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lcom/alipay/mobile/common/logging/api/encrypt/LogEncryptClient;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v5, "deItem":Ljava/lang/String;
    move-object v5, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 395
    .end local v5    # "deItem":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 396
    :cond_1
    :goto_1
    goto :goto_2

    .line 398
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    .end local v1    # "item":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 402
    .end local v6    # "i":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected final a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 29
    .param p1, "logFile"    # Ljava/io/File;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "uploadUrl"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 97
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, p4

    sget-object v3, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadFileByHttp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "flood"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "floodDischarge"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "send flood file after process restart,fileName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",change event from:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to:floodDischarge_KP"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "floodDischarge_KP"

    move-object v3, v0

    .end local p4    # "event":Ljava/lang/String;
    .local v0, "event":Ljava/lang/String;
    goto :goto_0

    .line 106
    .end local v0    # "event":Ljava/lang/String;
    .restart local p4    # "event":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    .end local p4    # "event":Ljava/lang/String;
    .local v3, "event":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_f

    const/4 v4, 0x0

    move-object v5, v4

    .line 112
    .local v5, "logContent":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/util/FileUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 115
    .end local v5    # "logContent":Ljava/lang/String;
    .local v0, "logContent":Ljava/lang/String;
    nop

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 123
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 125
    move-object v6, v5

    .end local v0    # "logContent":Ljava/lang/String;
    .local v6, "logContent":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogHost()Ljava/lang/String;

    move-result-object v0

    move-object v5, v4

    .line 130
    .local v5, "logHost":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    const-string v7, "com.alipay.mobile.logmonitor.ClientMonitorExtReceiver"

    invoke-static {v0, v7}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".monitor.action.UPLOAD_MDAP_LOG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v4

    .line 139
    .local v7, "intent":Landroid/content/Intent;
    move-object v7, v0

    iget-object v8, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "file"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v8, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    const-string/jumbo v9, "uploadFile"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 150
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_1
    move-object v0, v4

    :goto_2
    invoke-static {v6}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->gzipDataByString(Ljava/lang/String;)[B

    move-result-object v7

    .line 152
    .local v7, "zippedData":[B
    iget-object v8, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    array-length v9, v7

    invoke-static {v8, v2, v9}, Lcom/alipay/mobile/common/logging/http/MdapTrafficController;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 154
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 155
    .local v0, "headerData":Ljava/util/Map;
    move-object v9, v8

    .end local v0    # "headerData":Ljava/util/Map;
    .local v9, "headerData":Ljava/util/Map;
    const-string v0, "Content-type"

    const-string/jumbo v10, "text/xml"

    invoke-interface {v8, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "Content-Encoding"

    const-string v8, "gzip"

    invoke-interface {v9, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    const-string v8, "ProcessName"

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "bizCode"

    invoke-interface {v9, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v0, "event"

    invoke-interface {v9, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "productVersion"

    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    .line 170
    .local v0, "uploadLogUrl":Ljava/lang/String;
    const/4 v8, 0x0

    .line 171
    .local v8, "isUseMetds":Z
    if-eqz v2, :cond_2

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getLogStrategyInfo(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    move-result-object v10

    move-object v11, v4

    .line 173
    .local v11, "logStrategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v11, v10

    if-eqz v10, :cond_2

    .line 174
    invoke-virtual {v11}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isUsemetds()Z

    move-result v8

    .line 178
    .end local v11    # "logStrategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 179
    move-object/from16 v0, p3

    .line 180
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    sget-object v11, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "uploadUrl = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v13, p3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " logCategory = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    goto :goto_3

    .line 183
    :cond_3
    move-object/from16 v13, p3

    const-string v10, "/loggw/logUpload.do"

    if-nez v8, :cond_4

    .line 184
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_3

    .line 186
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v12

    invoke-interface {v12}, Lcom/alipay/mobile/common/logging/api/LogContext;->getMetDsLogHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 190
    .end local v0    # "uploadLogUrl":Ljava/lang/String;
    .local v10, "uploadLogUrl":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v11, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "uploadLogUrl = "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v0, v11, v12}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    invoke-static {v2, v10, v0}, Lcom/alipay/mobile/common/logging/http/LoggingHttpClientFactory;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;

    move-result-object v0

    .local v0, "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    move-object v11, v4

    .local v11, "httpResponse":Lorg/apache/http/HttpResponse;
    move-object v12, v0

    .line 194
    .end local v0    # "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    .local v12, "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .local v14, "uploadStart":J
    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    .line 197
    .local v18, "uploadCost":J
    :try_start_2
    invoke-virtual {v12, v7, v9}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->synchronousRequestByPOST([BLjava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v11, v0

    .line 200
    nop

    .line 202
    if-eqz v11, :cond_b

    .line 208
    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getResponseCode()I

    move-result v4

    .line 209
    .local v4, "responseCode":I
    move-object/from16 v20, v3

    .end local v3    # "event":Ljava/lang/String;
    .local v20, "event":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getResponseContent()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "responseContent":Ljava/lang/String;
    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getRequestLength()J

    move-result-wide v21

    .line 214
    .local v21, "requestLength":J
    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getResponseLength()J

    move-result-wide v23

    .line 217
    .local v23, "responseLength":J
    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->closeStreamForNextExecute()V

    .line 219
    move-object/from16 v25, v5

    .end local v5    # "logHost":Ljava/lang/String;
    .local v25, "logHost":Ljava/lang/String;
    const-string/jumbo v5, "unknown"

    const/16 v0, 0xc8

    if-ne v4, v0, :cond_a

    .line 226
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    const/16 v27, 0x0

    .line 227
    .local v27, "contentJson":Lorg/json/JSONObject;
    move-object/from16 p4, v6

    .end local v6    # "logContent":Ljava/lang/String;
    .local p4, "logContent":Ljava/lang/String;
    :try_start_4
    const-string v6, "code"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v6, 0x0

    .line 228
    .local v6, "code":I
    move v6, v0

    move/from16 v28, v8

    .end local v8    # "isUseMetds":Z
    .local v28, "isUseMetds":Z
    const/16 v8, 0x1f7

    if-ne v0, v8, :cond_5

    .line 229
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->updateServer503Timestamp()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 236
    .end local v6    # "code":I
    .end local v27    # "contentJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    move-object/from16 v16, v9

    goto/16 :goto_7

    .line 231
    .restart local v6    # "code":I
    :cond_5
    :goto_4
    const/16 v0, 0xc8

    if-ne v6, v0, :cond_9

    .line 240
    .end local v6    # "code":I
    nop

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v26, v26, v14

    .line 244
    move-wide/from16 v18, v26

    cmp-long v0, v26, v16

    if-lez v0, :cond_6

    .line 245
    array-length v0, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v9

    move-wide/from16 v8, v18

    .end local v9    # "headerData":Ljava/util/Map;
    .end local v18    # "uploadCost":J
    .local v8, "uploadCost":J
    .local v16, "headerData":Ljava/util/Map;
    invoke-static {v2, v0, v8, v9}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_5

    .line 244
    .end local v8    # "uploadCost":J
    .end local v16    # "headerData":Ljava/util/Map;
    .restart local v9    # "headerData":Ljava/util/Map;
    .restart local v18    # "uploadCost":J
    :cond_6
    move-object/from16 v16, v9

    move-wide/from16 v8, v18

    .line 249
    .end local v9    # "headerData":Ljava/util/Map;
    .end local v18    # "uploadCost":J
    .restart local v8    # "uploadCost":J
    .restart local v16    # "headerData":Ljava/util/Map;
    :goto_5
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 252
    nop

    .line 254
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 255
    const/4 v5, 0x0

    .line 257
    .local v5, "logSwitch":Ljava/lang/String;
    :try_start_7
    const-string v0, "logSwitch="

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 258
    .local v6, "index":I
    move v6, v0

    if-lez v0, :cond_7

    .line 259
    add-int/lit8 v0, v6, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object v5, v0

    .line 263
    .end local v6    # "index":I
    :cond_7
    goto :goto_6

    .line 261
    :catchall_1
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    sget-object v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    invoke-interface {v6, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6
    sget-object v0, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "logswitch: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v5    # "logSwitch":Ljava/lang/String;
    :cond_8
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 250
    :catchall_2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 251
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "delete file error: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 232
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v8    # "uploadCost":J
    .end local v16    # "headerData":Ljava/util/Map;
    .local v6, "code":I
    .restart local v9    # "headerData":Ljava/util/Map;
    .restart local v18    # "uploadCost":J
    .restart local v27    # "contentJson":Lorg/json/JSONObject;
    :cond_9
    move-object/from16 v16, v9

    .end local v9    # "headerData":Ljava/util/Map;
    .restart local v16    # "headerData":Ljava/util/Map;
    :try_start_8
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "mdap response code error"

    array-length v9, v7

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v0, v1, v8, v9}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "responseContent code is "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "responseContent":Ljava/lang/String;
    .end local v4    # "responseCode":I
    .end local v7    # "zippedData":[B
    .end local v10    # "uploadLogUrl":Ljava/lang/String;
    .end local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v12    # "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    .end local v14    # "uploadStart":J
    .end local v16    # "headerData":Ljava/util/Map;
    .end local v18    # "uploadCost":J
    .end local v20    # "event":Ljava/lang/String;
    .end local v21    # "requestLength":J
    .end local v23    # "responseLength":J
    .end local v25    # "logHost":Ljava/lang/String;
    .end local v28    # "isUseMetds":Z
    .end local p1    # "logFile":Ljava/io/File;
    .end local p2    # "logCategory":Ljava/lang/String;
    .end local p3    # "uploadUrl":Ljava/lang/String;
    .end local p4    # "logContent":Ljava/lang/String;
    throw v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 236
    .end local v6    # "code":I
    .end local v27    # "contentJson":Lorg/json/JSONObject;
    .restart local v3    # "responseContent":Ljava/lang/String;
    .restart local v4    # "responseCode":I
    .restart local v7    # "zippedData":[B
    .restart local v10    # "uploadLogUrl":Ljava/lang/String;
    .restart local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v12    # "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    .restart local v14    # "uploadStart":J
    .restart local v16    # "headerData":Ljava/util/Map;
    .restart local v18    # "uploadCost":J
    .restart local v20    # "event":Ljava/lang/String;
    .restart local v21    # "requestLength":J
    .restart local v23    # "responseLength":J
    .restart local v25    # "logHost":Ljava/lang/String;
    .restart local v28    # "isUseMetds":Z
    .restart local p1    # "logFile":Ljava/io/File;
    .restart local p2    # "logCategory":Ljava/lang/String;
    .restart local p3    # "uploadUrl":Ljava/lang/String;
    .restart local p4    # "logContent":Ljava/lang/String;
    :catch_1
    move-exception v0

    goto :goto_7

    .end local v16    # "headerData":Ljava/util/Map;
    .end local v28    # "isUseMetds":Z
    .local v8, "isUseMetds":Z
    .restart local v9    # "headerData":Ljava/util/Map;
    :catch_2
    move-exception v0

    move/from16 v28, v8

    move-object/from16 v16, v9

    .end local v8    # "isUseMetds":Z
    .end local v9    # "headerData":Ljava/util/Map;
    .restart local v16    # "headerData":Ljava/util/Map;
    .restart local v28    # "isUseMetds":Z
    goto :goto_7

    .end local v16    # "headerData":Ljava/util/Map;
    .end local v28    # "isUseMetds":Z
    .end local p4    # "logContent":Ljava/lang/String;
    .local v6, "logContent":Ljava/lang/String;
    .restart local v8    # "isUseMetds":Z
    .restart local v9    # "headerData":Ljava/util/Map;
    :catch_3
    move-exception v0

    move-object/from16 p4, v6

    move/from16 v28, v8

    move-object/from16 v16, v9

    const/16 v27, 0x0

    .end local v6    # "logContent":Ljava/lang/String;
    .end local v8    # "isUseMetds":Z
    .end local v9    # "headerData":Ljava/util/Map;
    .restart local v16    # "headerData":Ljava/util/Map;
    .restart local v28    # "isUseMetds":Z
    .restart local p4    # "logContent":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, v27

    .line 237
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    array-length v6, v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "get responseContent code error,JSONException"

    invoke-static {v2, v1, v5, v8, v6}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v16    # "headerData":Ljava/util/Map;
    .end local v28    # "isUseMetds":Z
    .end local p4    # "logContent":Ljava/lang/String;
    .restart local v6    # "logContent":Ljava/lang/String;
    .restart local v8    # "isUseMetds":Z
    .restart local v9    # "headerData":Ljava/util/Map;
    :cond_a
    move-object/from16 p4, v6

    .end local v6    # "logContent":Ljava/lang/String;
    .restart local p4    # "logContent":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    array-length v1, v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "http response code error"

    invoke-static {v2, v0, v5, v6, v1}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "response code is "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    .end local v4    # "responseCode":I
    .end local v20    # "event":Ljava/lang/String;
    .end local v21    # "requestLength":J
    .end local v23    # "responseLength":J
    .end local v25    # "logHost":Ljava/lang/String;
    .end local p4    # "logContent":Ljava/lang/String;
    .local v3, "event":Ljava/lang/String;
    .local v5, "logHost":Ljava/lang/String;
    .restart local v6    # "logContent":Ljava/lang/String;
    :cond_b
    invoke-virtual {v12}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->closeStreamForNextExecute()V

    .line 204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "http response is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :catchall_3
    move-exception v0

    move-object/from16 v20, v3

    move-object/from16 v25, v5

    move-object/from16 p4, v6

    move/from16 v28, v8

    move-object/from16 v16, v9

    move-object v1, v0

    .end local v3    # "event":Ljava/lang/String;
    .end local v5    # "logHost":Ljava/lang/String;
    .end local v6    # "logContent":Ljava/lang/String;
    .end local v8    # "isUseMetds":Z
    .end local v9    # "headerData":Ljava/util/Map;
    .restart local v16    # "headerData":Ljava/util/Map;
    .restart local v20    # "event":Ljava/lang/String;
    .restart local v25    # "logHost":Ljava/lang/String;
    .restart local v28    # "isUseMetds":Z
    .restart local p4    # "logContent":Ljava/lang/String;
    move-object v0, v1

    .line 199
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "POST request error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 131
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v7    # "zippedData":[B
    .end local v10    # "uploadLogUrl":Ljava/lang/String;
    .end local v11    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v12    # "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    .end local v14    # "uploadStart":J
    .end local v16    # "headerData":Ljava/util/Map;
    .end local v18    # "uploadCost":J
    .end local v20    # "event":Ljava/lang/String;
    .end local v25    # "logHost":Ljava/lang/String;
    .end local v28    # "isUseMetds":Z
    .end local p4    # "logContent":Ljava/lang/String;
    .restart local v3    # "event":Ljava/lang/String;
    .restart local v5    # "logHost":Ljava/lang/String;
    .restart local v6    # "logContent":Ljava/lang/String;
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "log host is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    .end local v5    # "logHost":Ljava/lang/String;
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decode file content is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    .end local v6    # "logContent":Ljava/lang/String;
    .local v0, "logContent":Ljava/lang/String;
    :cond_e
    move-object/from16 v20, v3

    .end local v3    # "event":Ljava/lang/String;
    .restart local v20    # "event":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 119
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "file content is empty"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v0    # "logContent":Ljava/lang/String;
    .end local v20    # "event":Ljava/lang/String;
    .restart local v3    # "event":Ljava/lang/String;
    .local v5, "logContent":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v20, v3

    move-object v1, v0

    .end local v3    # "event":Ljava/lang/String;
    .restart local v20    # "event":Ljava/lang/String;
    move-object v0, v1

    .line 114
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "read file error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 107
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "logContent":Ljava/lang/String;
    .end local v20    # "event":Ljava/lang/String;
    .restart local v3    # "event":Ljava/lang/String;
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "file object is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 25
    .param p1, "logContent"    # Ljava/lang/String;
    .param p2, "logCategory"    # Ljava/lang/String;
    .param p3, "uploadUrl"    # Ljava/lang/String;
    .param p4, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 271
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 276
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    move-object v3, v0

    .end local p1    # "logContent":Ljava/lang/String;
    .local v3, "logContent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 282
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getLogHost()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 283
    .local v5, "logHost":Ljava/lang/String;
    move-object v5, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 287
    invoke-static {v3}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->gzipDataByString(Ljava/lang/String;)[B

    move-result-object v6

    .line 289
    .local v6, "zippedData":[B
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    array-length v7, v6

    invoke-static {v0, v2, v7}, Lcom/alipay/mobile/common/logging/http/MdapTrafficController;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 291
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v4

    .line 292
    .local v7, "headerData":Ljava/util/Map;
    move-object v7, v0

    const-string v8, "Content-type"

    const-string/jumbo v9, "text/xml"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessAlias()Ljava/lang/String;

    move-result-object v0

    const-string v8, "ProcessName"

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v0, "bizCode"

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "event"

    move-object/from16 v8, p4

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "productVersion"

    invoke-interface {v7, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    .line 302
    .local v0, "uploadLogUrl":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 303
    move-object/from16 v0, p3

    .line 304
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    sget-object v10, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "uploadUrl = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, p3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " logCategory = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    goto :goto_0

    .line 307
    :cond_0
    move-object/from16 v12, p3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/loggw/logUpload.do"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 310
    .end local v0    # "uploadLogUrl":Ljava/lang/String;
    .local v9, "uploadLogUrl":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->c:Landroid/content/Context;

    invoke-static {v2, v9, v0}, Lcom/alipay/mobile/common/logging/http/LoggingHttpClientFactory;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;

    move-result-object v10

    .line 312
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    .local v10, "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .local v13, "uploadStart":J
    const-wide/16 v15, 0x0

    move-wide/from16 v17, v15

    .line 315
    .local v17, "uploadCost":J
    :try_start_0
    invoke-virtual {v10, v6, v7}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->synchronousRequestByPOST([BLjava/util/Map;)Lorg/apache/http/HttpResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    .line 318
    nop

    .line 320
    if-eqz v4, :cond_4

    .line 326
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getResponseCode()I

    move-result v11

    .line 327
    .local v11, "responseCode":I
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getResponseContent()Ljava/lang/String;

    move-result-object v15

    .line 330
    .local v15, "responseContent":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getRequestLength()J

    move-result-wide v20

    .line 331
    .local v20, "requestLength":J
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->getResponseLength()J

    move-result-wide v22

    .line 334
    .local v22, "responseLength":J
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->closeStreamForNextExecute()V

    .line 336
    const-string/jumbo v1, "unknown"

    const/16 v0, 0xc8

    if-ne v11, v0, :cond_3

    .line 343
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 344
    move-object/from16 v16, v3

    .end local v3    # "logContent":Ljava/lang/String;
    .local v16, "logContent":Ljava/lang/String;
    :try_start_2
    const-string v3, "code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v3, 0x0

    .line 345
    .local v3, "code":I
    move v3, v0

    move-object/from16 v24, v4

    const/16 v4, 0xc8

    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .local v24, "httpResponse":Lorg/apache/http/HttpResponse;
    if-ne v0, v4, :cond_2

    .line 354
    .end local v3    # "code":I
    nop

    .line 356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v13

    .line 358
    move-wide v3, v0

    const-wide/16 v17, 0x0

    .end local v17    # "uploadCost":J
    .local v3, "uploadCost":J
    cmp-long v19, v0, v17

    if-lez v19, :cond_1

    .line 359
    array-length v0, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v4}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 361
    :cond_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 346
    .local v3, "code":I
    .restart local v17    # "uploadCost":J
    :cond_2
    :try_start_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 p1, v5

    .end local v5    # "logHost":Ljava/lang/String;
    .local p1, "logHost":Ljava/lang/String;
    :try_start_4
    const-string/jumbo v5, "mdap response code error"
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v19, v7

    .end local v7    # "headerData":Ljava/util/Map;
    .local v19, "headerData":Ljava/util/Map;
    :try_start_5
    array-length v7, v6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v0, v4, v5, v7}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "responseContent code is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v6    # "zippedData":[B
    .end local v9    # "uploadLogUrl":Ljava/lang/String;
    .end local v10    # "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    .end local v11    # "responseCode":I
    .end local v13    # "uploadStart":J
    .end local v15    # "responseContent":Ljava/lang/String;
    .end local v16    # "logContent":Ljava/lang/String;
    .end local v17    # "uploadCost":J
    .end local v19    # "headerData":Ljava/util/Map;
    .end local v20    # "requestLength":J
    .end local v22    # "responseLength":J
    .end local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local p1    # "logHost":Ljava/lang/String;
    .end local p2    # "logCategory":Ljava/lang/String;
    .end local p3    # "uploadUrl":Ljava/lang/String;
    .end local p4    # "event":Ljava/lang/String;
    throw v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 350
    .end local v3    # "code":I
    .restart local v6    # "zippedData":[B
    .restart local v9    # "uploadLogUrl":Ljava/lang/String;
    .restart local v10    # "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    .restart local v11    # "responseCode":I
    .restart local v13    # "uploadStart":J
    .restart local v15    # "responseContent":Ljava/lang/String;
    .restart local v16    # "logContent":Ljava/lang/String;
    .restart local v17    # "uploadCost":J
    .restart local v19    # "headerData":Ljava/util/Map;
    .restart local v20    # "requestLength":J
    .restart local v22    # "responseLength":J
    .restart local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local p1    # "logHost":Ljava/lang/String;
    .restart local p2    # "logCategory":Ljava/lang/String;
    .restart local p3    # "uploadUrl":Ljava/lang/String;
    .restart local p4    # "event":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .end local v19    # "headerData":Ljava/util/Map;
    .restart local v7    # "headerData":Ljava/util/Map;
    :catch_1
    move-exception v0

    move-object/from16 v19, v7

    .end local v7    # "headerData":Ljava/util/Map;
    .restart local v19    # "headerData":Ljava/util/Map;
    goto :goto_1

    .end local v19    # "headerData":Ljava/util/Map;
    .end local p1    # "logHost":Ljava/lang/String;
    .restart local v5    # "logHost":Ljava/lang/String;
    .restart local v7    # "headerData":Ljava/util/Map;
    :catch_2
    move-exception v0

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    .end local v5    # "logHost":Ljava/lang/String;
    .end local v7    # "headerData":Ljava/util/Map;
    .restart local v19    # "headerData":Ljava/util/Map;
    .restart local p1    # "logHost":Ljava/lang/String;
    goto :goto_1

    .end local v19    # "headerData":Ljava/util/Map;
    .end local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local p1    # "logHost":Ljava/lang/String;
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v5    # "logHost":Ljava/lang/String;
    .restart local v7    # "headerData":Ljava/util/Map;
    :catch_3
    move-exception v0

    move-object/from16 v24, v4

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "logHost":Ljava/lang/String;
    .end local v7    # "headerData":Ljava/util/Map;
    .restart local v19    # "headerData":Ljava/util/Map;
    .restart local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local p1    # "logHost":Ljava/lang/String;
    goto :goto_1

    .end local v16    # "logContent":Ljava/lang/String;
    .end local v19    # "headerData":Ljava/util/Map;
    .end local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local p1    # "logHost":Ljava/lang/String;
    .local v3, "logContent":Ljava/lang/String;
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v5    # "logHost":Ljava/lang/String;
    .restart local v7    # "headerData":Ljava/util/Map;
    :catch_4
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v24, v4

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    .line 351
    .end local v3    # "logContent":Ljava/lang/String;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "logHost":Ljava/lang/String;
    .end local v7    # "headerData":Ljava/util/Map;
    .restart local v16    # "logContent":Ljava/lang/String;
    .restart local v19    # "headerData":Ljava/util/Map;
    .restart local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local p1    # "logHost":Ljava/lang/String;
    :goto_1
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    array-length v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "get responseContent code error,JSONException"

    invoke-static {v2, v0, v1, v4, v3}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    .end local v16    # "logContent":Ljava/lang/String;
    .end local v19    # "headerData":Ljava/util/Map;
    .end local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local p1    # "logHost":Ljava/lang/String;
    .restart local v3    # "logContent":Ljava/lang/String;
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v5    # "logHost":Ljava/lang/String;
    .restart local v7    # "headerData":Ljava/util/Map;
    :cond_3
    move-object/from16 v16, v3

    move-object/from16 v24, v4

    .end local v3    # "logContent":Ljava/lang/String;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v16    # "logContent":Ljava/lang/String;
    .restart local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    array-length v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http response code error"

    invoke-static {v2, v0, v1, v4, v3}, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "response code is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    .end local v11    # "responseCode":I
    .end local v15    # "responseContent":Ljava/lang/String;
    .end local v16    # "logContent":Ljava/lang/String;
    .end local v20    # "requestLength":J
    .end local v22    # "responseLength":J
    .end local v24    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v3    # "logContent":Ljava/lang/String;
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_4
    invoke-virtual {v10}, Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;->closeStreamForNextExecute()V

    .line 322
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "http response is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 p1, v5

    move-object/from16 v19, v7

    move-object v1, v0

    .end local v3    # "logContent":Ljava/lang/String;
    .end local v5    # "logHost":Ljava/lang/String;
    .end local v7    # "headerData":Ljava/util/Map;
    .restart local v16    # "logContent":Ljava/lang/String;
    .restart local v19    # "headerData":Ljava/util/Map;
    .restart local p1    # "logHost":Ljava/lang/String;
    move-object v0, v1

    .line 317
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "POST request error: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 284
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v6    # "zippedData":[B
    .end local v9    # "uploadLogUrl":Ljava/lang/String;
    .end local v10    # "httpClient":Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
    .end local v13    # "uploadStart":J
    .end local v16    # "logContent":Ljava/lang/String;
    .end local v17    # "uploadCost":J
    .end local v19    # "headerData":Ljava/util/Map;
    .end local p1    # "logHost":Ljava/lang/String;
    .restart local v3    # "logContent":Ljava/lang/String;
    .restart local v5    # "logHost":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "log host is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    .end local v5    # "logHost":Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "decode file content is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    .end local v3    # "logContent":Ljava/lang/String;
    .local p1, "logContent":Ljava/lang/String;
    :cond_7
    move-object/from16 v12, p3

    move-object/from16 v8, p4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "logContent is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final a()V
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/FileUtil;->getFolderSize(Ljava/io/File;)J

    move-result-wide v0

    sget v2, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, "files":[Ljava/io/File;
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 63
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v1

    .line 62
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    const-string v3, "cleanExpiresFile"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_4

    array-length v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    goto :goto_3

    .line 67
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 69
    array-length v1, v0

    div-int/2addr v1, v2

    .line 70
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 71
    aget-object v4, v0, v2

    .line 72
    .local v3, "file":Ljava/io/File;
    move-object v3, v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cleanExpiresFile: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is too large or too old, total: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 77
    invoke-interface {v4, v5, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    goto :goto_2

    .line 79
    :catchall_1
    move-exception v4

    .line 80
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/common/logging/uploader/BaseUploader;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cleanExpiresFile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    .end local v2    # "i":I
    :cond_3
    return-void

    .line 65
    .end local v1    # "len":I
    :cond_4
    :goto_3
    return-void
.end method
