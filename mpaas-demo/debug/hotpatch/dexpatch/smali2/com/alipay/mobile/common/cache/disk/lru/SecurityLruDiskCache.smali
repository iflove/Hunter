.class public Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
.super Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;
.source "SecurityLruDiskCache.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;-><init>()V

    .line 20
    return-void
.end method

.method private a()V
    .locals 11

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 38
    .local v2, "statFs":Landroid/os/StatFs;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v5, v1

    mul-long v3, v3, v5

    .line 39
    .local v3, "size":J
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->setDirectory(Ljava/lang/String;)V

    .line 41
    const-wide/32 v5, 0x80000

    sub-long v7, v3, v5

    .line 42
    .local v7, "canUseSize":J
    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-lez v1, :cond_0

    move-wide v5, v7

    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->setMaxsize(J)V

    .line 43
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    invoke-direct {v1}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;

    .line 26
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected init()V
    .locals 0

    .line 31
    invoke-super {p0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->init()V

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/lru/SecurityLruDiskCache;->a()V

    .line 33
    return-void
.end method
