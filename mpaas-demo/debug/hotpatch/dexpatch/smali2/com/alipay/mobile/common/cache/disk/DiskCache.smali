.class public abstract Lcom/alipay/mobile/common/cache/disk/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mDirectory:Ljava/lang/String;

.field protected mEntities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/cache/disk/Entity;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroup:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/alipay/mobile/common/cache/disk/Entity;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mMaxsize:J

.field protected mMeta:Lcom/alipay/mobile/common/cache/disk/Meta;

.field protected mSize:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 78
    return-void
.end method

.method private a()V
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 634
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 638
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 639
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache$4;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    const-string/jumbo v2, "scheduleMeta"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method private a(Lcom/alipay/mobile/common/cache/disk/Entity;)V
    .locals 3
    .param p1, "entity"    # Lcom/alipay/mobile/common/cache/disk/Entity;

    .line 198
    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getGroup()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 199
    .local v2, "group":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_1

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 201
    .local v1, "entitys":Ljava/util/Set;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v1, v0

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v1    # "entitys":Ljava/util/Set;
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 291
    if-eqz p1, :cond_0

    .line 292
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->removeEntity(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->removeCacheFile(Ljava/lang/String;)V

    .line 295
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;[B)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "data"    # [B

    .line 601
    const-string v0, "DiskCache"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 602
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 604
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 605
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    new-instance v3, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v4, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    const-string v5, "cache file create error."

    invoke-direct {v3, v4, v5}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "data":[B
    throw v3

    .line 612
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "data":[B
    :cond_1
    :goto_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 613
    move-object v2, v3

    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 614
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 627
    return-void

    .line 625
    :catch_0
    move-exception v3

    .line 626
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .end local v3    # "e":Ljava/io/IOException;
    return-void

    .line 622
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 618
    :catch_1
    move-exception v3

    .line 619
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v5, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    .line 620
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "data":[B
    throw v4

    .line 615
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "data":[B
    :catch_2
    move-exception v3

    .line 616
    .local v3, "e":Ljava/io/FileNotFoundException;
    new-instance v4, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v5, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->WRITE_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    .line 617
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .end local p0    # "path":Ljava/lang/String;
    .end local p1    # "data":[B
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 622
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local p0    # "path":Ljava/lang/String;
    .restart local p1    # "data":[B
    :goto_1
    if-eqz v2, :cond_2

    .line 624
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 627
    goto :goto_2

    .line 625
    :catch_3
    move-exception v4

    .line 626
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_2
    throw v3
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B

    .line 38
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/cache/disk/DiskCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/cache/disk/DiskCache;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/common/cache/disk/DiskCache;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/common/cache/disk/Entity;)V
    .locals 3
    .param p1, "entity"    # Lcom/alipay/mobile/common/cache/disk/Entity;

    .line 306
    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getGroup()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 307
    .local v2, "group":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_0

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 309
    .local v1, "entitys":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 310
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 313
    .end local v1    # "entitys":Ljava/util/Set;
    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 575
    const-string v0, "DiskCache"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 576
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 577
    .local v2, "inputStream":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 582
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 583
    move-object v2, v3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 584
    .local v3, "data":[B
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    nop

    .line 592
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 595
    goto :goto_0

    .line 593
    :catch_0
    move-exception v4

    .line 594
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    .end local v4    # "e":Ljava/io/IOException;
    :goto_0
    return-object v3

    .line 590
    .end local v3    # "data":[B
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 586
    :catch_1
    move-exception v3

    .line 587
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v5, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->READ_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    .line 588
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "inputStream":Ljava/io/FileInputStream;
    .end local p0    # "path":Ljava/lang/String;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "inputStream":Ljava/io/FileInputStream;
    .restart local p0    # "path":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 592
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 595
    goto :goto_2

    .line 593
    :catch_2
    move-exception v4

    .line 594
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .end local v4    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    throw v3

    .line 578
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/cache/disk/CacheException;

    sget-object v3, Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;->READ_IO_ERROR:Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;

    const-string v4, "cache file not found."

    invoke-direct {v0, v3, v4}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Lcom/alipay/mobile/common/cache/disk/CacheException$ErrorCode;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addEntity(Lcom/alipay/mobile/common/cache/disk/Entity;)V
    .locals 5
    .param p1, "entity"    # Lcom/alipay/mobile/common/cache/disk/Entity;

    .line 498
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Lcom/alipay/mobile/common/cache/disk/Entity;)V

    .line 501
    iget-wide v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    invoke-virtual {p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    .line 502
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method clear()V
    .locals 2

    .line 552
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache$3;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method

.method public close()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a()V

    .line 101
    return-void
.end method

.method containEntity(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    if-eqz p1, :cond_1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "owner can\'t be -"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->containEntity(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 393
    return-object v1

    .line 394
    :cond_2
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getEntity(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/disk/Entity;

    move-result-object v0

    move-object v2, v1

    .line 396
    .local v2, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Entity;->expire()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V

    .line 398
    return-object v1

    .line 401
    :cond_3
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/common/cache/disk/Entity;->authenticate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 402
    return-object v1

    .line 404
    :cond_4
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/Entity;->use()V

    .line 405
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    invoke-static {v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b(Ljava/lang/String;)[B

    move-result-object v1

    .line 409
    return-object v1

    .line 384
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DiskCache must call open() before"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCacheCount()I
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getDirectory()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mDirectory:Ljava/lang/String;

    return-object v0
.end method

.method getEntity(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/disk/Entity;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/cache/disk/Entity;

    monitor-exit v0

    return-object v1

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFileDirectory(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .line 477
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->containEntity(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 478
    return-object v1

    .line 479
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getEntity(Ljava/lang/String;)Lcom/alipay/mobile/common/cache/disk/Entity;

    move-result-object v0

    move-object v2, v1

    .line 481
    .local v2, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    move-object v2, v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Entity;->expire()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->remove(Ljava/lang/String;)V

    .line 483
    return-object v1

    .line 485
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/Entity;->use()V

    .line 486
    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->getDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    return-object v1
.end method

.method public getMaxsize()J
    .locals 2

    .line 416
    iget-wide v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMaxsize:J

    return-wide v0
.end method

.method public getSerializable(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 8
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    const-string v0, "DiskCache"

    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 345
    .local v3, "objBytes":[B
    move-object v3, v1

    if-nez v1, :cond_0

    .line 346
    return-object v2

    .line 348
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 349
    .local v1, "bis":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 351
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 352
    move-object v2, v4

    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 363
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    goto :goto_0

    .line 365
    :catch_0
    move-exception v5

    .line 367
    .local v5, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v5    # "e":Ljava/io/IOException;
    :goto_0
    return-object v4

    .line 360
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 357
    :catch_1
    move-exception v4

    .line 358
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    :try_start_2
    new-instance v5, Lcom/alipay/mobile/common/cache/disk/CacheException;

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bis":Ljava/io/InputStream;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local v3    # "objBytes":[B
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "url":Ljava/lang/String;
    throw v5

    .line 355
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "bis":Ljava/io/InputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "objBytes":[B
    .restart local p1    # "owner":Ljava/lang/String;
    .restart local p2    # "url":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 356
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Lcom/alipay/mobile/common/cache/disk/CacheException;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bis":Ljava/io/InputStream;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local v3    # "objBytes":[B
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "url":Ljava/lang/String;
    throw v5

    .line 353
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bis":Ljava/io/InputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "objBytes":[B
    .restart local p1    # "owner":Ljava/lang/String;
    .restart local p2    # "url":Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 354
    .local v4, "e":Ljava/io/StreamCorruptedException;
    new-instance v5, Lcom/alipay/mobile/common/cache/disk/CacheException;

    invoke-virtual {v4}, Ljava/io/StreamCorruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alipay/mobile/common/cache/disk/CacheException;-><init>(Ljava/lang/String;)V

    .end local v1    # "bis":Ljava/io/InputStream;
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .end local v3    # "objBytes":[B
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "url":Ljava/lang/String;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    .end local v4    # "e":Ljava/io/StreamCorruptedException;
    .restart local v1    # "bis":Ljava/io/InputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "objBytes":[B
    .restart local p1    # "owner":Ljava/lang/String;
    .restart local p2    # "url":Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 362
    if-eqz v2, :cond_1

    .line 363
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 368
    :cond_1
    goto :goto_2

    .line 365
    :catch_4
    move-exception v5

    .line 367
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    .end local v5    # "e":Ljava/io/IOException;
    :goto_2
    throw v4
.end method

.method public getSize()J
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-wide v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    monitor-exit v0

    return-wide v1

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected abstract init()V
.end method

.method protected obtainKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 571
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DiskCache"

    const-string v2, "DiskCache has inited"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->init()V

    .line 90
    new-instance v0, Lcom/alipay/mobile/common/cache/disk/Meta;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/cache/disk/Meta;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMeta:Lcom/alipay/mobile/common/cache/disk/Meta;

    .line 91
    invoke-virtual {v0}, Lcom/alipay/mobile/common/cache/disk/Meta;->init()V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    .locals 18
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "createTime"    # J
    .param p7, "period"    # J
    .param p9, "contentType"    # Ljava/lang/String;

    .line 155
    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v13, p4

    iget-object v1, v0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 158
    const-string v1, "-"

    if-eqz v14, :cond_1

    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "owner can\'t be -"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_1
    :goto_0
    if-eqz v15, :cond_3

    invoke-virtual {v15, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "group can\'t be -"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_3
    :goto_1
    move-object/from16 v11, p3

    invoke-virtual {v0, v11}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 168
    .local v12, "key":Ljava/lang/String;
    new-instance v16, Lcom/alipay/mobile/common/cache/disk/Entity;

    const/4 v5, 0x0

    array-length v1, v13

    int-to-long v6, v1

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v8, v12

    move-wide/from16 v9, p5

    move-object/from16 v17, v12

    .end local v12    # "key":Ljava/lang/String;
    .local v17, "key":Ljava/lang/String;
    move-wide/from16 v11, p7

    move-object v14, v13

    move-object/from16 v13, p9

    invoke-direct/range {v1 .. v13}, Lcom/alipay/mobile/common/cache/disk/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJLjava/lang/String;)V

    .line 171
    .local v1, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->addEntity(Lcom/alipay/mobile/common/cache/disk/Entity;)V

    .line 172
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;

    move-object/from16 v4, v17

    .end local v17    # "key":Ljava/lang/String;
    .local v4, "key":Ljava/lang/String;
    invoke-direct {v3, v0, v4, v14}, Lcom/alipay/mobile/common/cache/disk/DiskCache$1;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;[B)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 187
    return-void

    .line 156
    .end local v1    # "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    move-object v14, v13

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "DiskCache must call open() before"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public putSerializable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V
    .locals 15
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "serializable"    # Ljava/io/Serializable;
    .param p5, "createTime"    # J
    .param p7, "period"    # J
    .param p9, "contentType"    # Ljava/lang/String;

    .line 118
    const-string v1, "DiskCache"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v0

    .line 119
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 122
    .local v3, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    move-object v3, v0

    move-object/from16 v4, p4

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 125
    .local v9, "objBytes":[B
    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    move-object/from16 v14, p9

    invoke-virtual/range {v5 .. v14}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    .end local v9    # "objBytes":[B
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    return-void

    .line 126
    :catch_1
    move-exception v0

    goto :goto_1

    .line 129
    :catchall_0
    move-exception v0

    move-object/from16 v4, p4

    :goto_0
    move-object v5, v0

    goto :goto_2

    .line 126
    :catch_2
    move-exception v0

    move-object/from16 v4, p4

    .line 127
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "oos":Ljava/io/ObjectOutputStream;
    .end local p1    # "owner":Ljava/lang/String;
    .end local p2    # "group":Ljava/lang/String;
    .end local p3    # "url":Ljava/lang/String;
    .end local p4    # "serializable":Ljava/io/Serializable;
    .end local p5    # "createTime":J
    .end local p7    # "period":J
    .end local p9    # "contentType":Ljava/lang/String;
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "oos":Ljava/io/ObjectOutputStream;
    .restart local p1    # "owner":Ljava/lang/String;
    .restart local p2    # "group":Ljava/lang/String;
    .restart local p3    # "url":Ljava/lang/String;
    .restart local p4    # "serializable":Ljava/io/Serializable;
    .restart local p5    # "createTime":J
    .restart local p7    # "period":J
    .restart local p9    # "contentType":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 130
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 131
    if-eqz v3, :cond_0

    .line 132
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    :cond_0
    goto :goto_3

    .line 134
    :catch_3
    move-exception v0

    .line 136
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    throw v5
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Ljava/lang/String;)V

    .line 221
    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DiskCache must call open() before"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 5
    .param p1, "group"    # Ljava/lang/String;

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    if-eqz p1, :cond_2

    .line 265
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mGroup:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    .line 269
    .local v1, "entities":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 270
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v0, "urls":Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/cache/disk/Entity;

    .line 273
    .local v3, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    invoke-virtual {v3}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v3    # "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    goto :goto_0

    .line 275
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 276
    .local v3, "url":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Ljava/lang/String;)V

    .line 279
    .end local v3    # "url":Ljava/lang/String;
    goto :goto_1

    .line 266
    .end local v0    # "urls":Ljava/util/Set;
    .end local v1    # "entities":Ljava/util/Set;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "group can\'t be -"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_2
    return-void

    .line 261
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DiskCache must call open() before"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeByOwner(Ljava/lang/String;)V
    .locals 5
    .param p1, "owner"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    if-nez p1, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 241
    .local v0, "urls":Ljava/util/Set;
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 242
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/common/cache/disk/Entity;

    .line 243
    .local v3, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    invoke-virtual {v3}, Lcom/alipay/mobile/common/cache/disk/Entity;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    invoke-virtual {v3}, Lcom/alipay/mobile/common/cache/disk/Entity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 246
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    :cond_1
    goto :goto_0

    .line 248
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 249
    .local v2, "url":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->a(Ljava/lang/String;)V

    .line 250
    .end local v2    # "url":Ljava/lang/String;
    goto :goto_1

    .line 251
    :cond_3
    return-void

    .line 238
    .end local v0    # "urls":Ljava/util/Set;
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "owner can\'t be -"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DiskCache must call open() before"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeCacheFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .line 316
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->obtainKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/common/cache/disk/DiskCache$2;-><init>(Lcom/alipay/mobile/common/cache/disk/DiskCache;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->executeSerially(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method

.method removeEntity(Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    monitor-enter v0

    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/cache/disk/Entity;

    const/4 v2, 0x0

    .line 514
    .local v2, "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mEntities:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/cache/disk/DiskCache;->b(Lcom/alipay/mobile/common/cache/disk/Entity;)V

    .line 517
    iget-wide v3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    invoke-virtual {v2}, Lcom/alipay/mobile/common/cache/disk/Entity;->getSize()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mSize:J

    .line 519
    .end local v2    # "entity":Lcom/alipay/mobile/common/cache/disk/Entity;
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected final setDirectory(Ljava/lang/String;)V
    .locals 3
    .param p1, "directory"    # Ljava/lang/String;

    .line 443
    iput-object p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mDirectory:Ljava/lang/String;

    .line 444
    const-string v0, "Not set valid cache directory."

    if-eqz p1, :cond_3

    .line 446
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mDirectory:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 447
    .local v2, "file":Ljava/io/File;
    move-object v2, v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An Error occured while  cache directory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    return-void

    .line 450
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    .end local v2    # "file":Ljava/io/File;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final setMaxsize(J)V
    .locals 3
    .param p1, "maxsize"    # J

    .line 459
    iput-wide p1, p0, Lcom/alipay/mobile/common/cache/disk/DiskCache;->mMaxsize:J

    .line 460
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 463
    return-void

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not set valid cache size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
