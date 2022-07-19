.class public Lcom/alipay/mobile/quinox/classloader/DexOptServiceInToolsProcess;
.super Landroid/app/IntentService;
.source "DexOptServiceInToolsProcess.java"


# static fields
.field private static a:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const-string v0, "DexOptServiceInToolsProcess"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .line 34
    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 35
    return-void

    .line 37
    :cond_0
    const-string v0, "src_path"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "srcPath":Ljava/lang/String;
    const-string v0, "opt_path"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "optPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "srcPath: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " optPath: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mytest"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "DexOptServiceInToolsProcess"

    const/4 v6, 0x0

    if-nez v0, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    move-wide v11, v9

    .line 43
    .local v11, "now":J
    sget-wide v13, Lcom/alipay/mobile/quinox/classloader/DexOptServiceInToolsProcess;->a:J

    sub-long/2addr v7, v13

    move-wide v13, v9

    .line 44
    .local v13, "delta":J
    move-wide v13, v7

    const-wide/16 v15, 0xbb8

    cmp-long v0, v7, v15

    if-gez v0, :cond_1

    cmp-long v0, v13, v9

    if-lez v0, :cond_1

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "opt interval is in 5s, wait:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "dexopt wait:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {v13, v14}, Landroid/os/SystemClock;->sleep(J)V

    .line 50
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 51
    .local v7, "begin":J
    invoke-static {v2, v3, v6}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sput-wide v9, Lcom/alipay/mobile/quinox/classloader/DexOptServiceInToolsProcess;->a:J

    .line 53
    const-string v0, "load dex: %s cost: %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v2, v15, v6

    const/16 v16, 0x1

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v15, v16

    invoke-static {v0, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "dexopt finish"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    nop

    .end local v7    # "begin":J
    .end local v11    # "now":J
    .end local v13    # "delta":J
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 59
    :cond_2
    :goto_0
    const-string v0, "fullCompile"

    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 61
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/quinox/perfhelper/NougatPolicy;->fullCompile(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 63
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v4, "full compile error. "

    invoke-static {v5, v4, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_3
    return-void
.end method
