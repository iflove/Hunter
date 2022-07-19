.class public Lcom/alipay/dexpatch/util/DPCompat;
.super Ljava/lang/Object;
.source "DPCompat.java"


# static fields
.field private static a:Z = false

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/dexpatch/util/DPCompat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 8

    .line 1
    const-string v0, "DexP.Compat"

    :try_start_0
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isVmJit()Z

    move-result v1

    .line 2
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isSamsung50()Z

    move-result v2

    .line 3
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isDalvikArt()Z

    move-result v3

    .line 5
    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isYunOS()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/alipay/dexpatch/util/DPSystemUtil;->isAOC()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 26
    sput-boolean v5, Lcom/alipay/dexpatch/util/DPCompat;->a:Z

    return-void

    :cond_1
    nop

    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "<init>: Check no support: isVmJit="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isSamsung50="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isDalvikArt="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isLemur="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/dexpatch/util/DPLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sput-boolean v6, Lcom/alipay/dexpatch/util/DPCompat;->a:Z

    const-string v5, "<init>: mSupported=false"

    .line 29
    invoke-static {v0, v5}, Lcom/alipay/dexpatch/util/DPLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const-string v6, "DP_UNSUPPORTED"

    const-string v7, "BIZ_DEXPATCH"

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "0"

    .line 32
    invoke-static {v7, v6, v1, v5}, Lcom/alipay/dexpatch/util/DPMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    if-eqz v2, :cond_3

    const-string v1, "1"

    .line 35
    invoke-static {v7, v6, v1, v5}, Lcom/alipay/dexpatch/util/DPMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    if-eqz v3, :cond_4

    const-string v1, "2"

    .line 38
    invoke-static {v7, v6, v1, v5}, Lcom/alipay/dexpatch/util/DPMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    if-eqz v4, :cond_5

    const-string v1, "3"

    .line 41
    invoke-static {v7, v6, v1, v5}, Lcom/alipay/dexpatch/util/DPMonitor;->mtBizReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 47
    const-string v2, "checkSupportive failed"

    invoke-static {v0, v1, v2}, Lcom/alipay/dexpatch/util/DPLogger;->printStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static declared-synchronized isSupported()Z
    .locals 4

    const-class v0, Lcom/alipay/dexpatch/util/DPCompat;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/alipay/dexpatch/util/DPCompat;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/alipay/dexpatch/util/DPCompat;->a()V

    .line 4
    :cond_0
    sget-boolean v1, Lcom/alipay/dexpatch/util/DPCompat;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
