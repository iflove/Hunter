.class public Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;
.super Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;
.source "DefaultLruDiskCache.java"


# static fields
.field private static a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;-><init>()V

    .line 20
    return-void
.end method

.method private a()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getExternalCacheDir()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    .local v1, "path":Ljava/lang/String;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getCacheDirPath()Ljava/lang/String;

    move-result-object v1

    .line 41
    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getCacheDirPath()Ljava/lang/String;

    move-result-object v0

    .line 44
    .end local v1    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 50
    .local v1, "statFs":Landroid/os/StatFs;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    mul-long v2, v2, v4

    .line 51
    .local v2, "size":J
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->setDirectory(Ljava/lang/String;)V

    .line 52
    const-wide/32 v4, 0x80000

    sub-long v6, v2, v4

    .line 53
    .local v6, "canUseSize":J
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    move-wide v4, v6

    :cond_0
    invoke-virtual {p0, v4, v5}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->setMaxsize(J)V

    .line 54
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;
    .locals 2

    const-class v0, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    invoke-direct {v1}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;

    .line 26
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a:Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;
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
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/lru/DefaultLruDiskCache;->a()V

    .line 33
    return-void
.end method
