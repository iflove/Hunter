.class public Lcom/alipay/mobile/h5container/api/H5PageCount;
.super Ljava/lang/Object;
.source "H5PageCount.java"


# static fields
.field private static sRamSize:J

.field private static urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    .line 18
    const-wide/16 v0, -0x64

    sput-wide v0, Lcom/alipay/mobile/h5container/api/H5PageCount;->sRamSize:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 21
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 26
    :cond_0
    return-void
.end method

.method public static getAll()Ljava/lang/String;
    .locals 4

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v0, "builder":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    monitor-enter v1

    .line 39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 40
    if-eqz v2, :cond_0

    .line 41
    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 45
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageCount;->sRamSize:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 56
    return-wide v0

    .line 58
    :cond_0
    const-wide/16 v4, -0x64

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    .line 59
    const-class v0, Lcom/alipay/mobile/h5container/api/H5PageCount;

    monitor-enter v0

    .line 61
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v1, v4, :cond_1

    .line 62
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    .local v1, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    :try_start_1
    const-string v4, "activity"

    .line 65
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 66
    invoke-virtual {v4, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 68
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v4, Lcom/alipay/mobile/h5container/api/H5PageCount;->sRamSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .end local v1    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    goto :goto_1

    .line 75
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 73
    :cond_1
    :try_start_2
    sput-wide v2, Lcom/alipay/mobile/h5container/api/H5PageCount;->sRamSize:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    goto :goto_1

    .line 75
    :catchall_1
    move-exception v1

    const/4 v1, 0x0

    .line 76
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_3
    sput-wide v2, Lcom/alipay/mobile/h5container/api/H5PageCount;->sRamSize:J

    .line 78
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 80
    :cond_2
    :goto_2
    sget-wide v0, Lcom/alipay/mobile/h5container/api/H5PageCount;->sRamSize:J

    return-wide v0
.end method

.method public static removeUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/h5container/api/H5PageCount;->urls:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_0
    return-void
.end method

.method public static totalRamMemorySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    invoke-static {p0}, Lcom/alipay/mobile/h5container/api/H5PageCount;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
