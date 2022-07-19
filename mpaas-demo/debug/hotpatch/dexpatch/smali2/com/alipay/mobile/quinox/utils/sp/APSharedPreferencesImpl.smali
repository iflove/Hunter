.class final Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;
.super Ljava/lang/Object;
.source "APSharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;,
        Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SP_THREAD_SIZE:I = 0x5

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "APSharedPreferencesImpl"

.field private static final mContent:Ljava/lang/Object;

.field private static mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mDiskWritesInFlight:I

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mStatSize:J

.field private mStatTimestamp:J

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mContent:Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v8, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$1;

    invoke-direct {v8}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$1;-><init>()V

    const/4 v2, 0x5

    const/4 v3, 0x5

    const-wide/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 113
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    return-void

    .line 114
    :catchall_0
    move-exception v0

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 84
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mLoaded:Z

    .line 88
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 120
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 121
    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 122
    iput p2, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMode:I

    .line 123
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mLoaded:Z

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 125
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->startLoadFromDisk()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 54
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->loadFromDisk()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->queueWorkAdd(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;

    .line 54
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->writeToFile(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .line 54
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->queueWorkRemove(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;
    .param p1, "x1"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->enqueueDiskWrite(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 54
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$508(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 54
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$510(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 54
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$602(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$700(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method private awaitLoadedLocked()V
    .locals 1

    .line 255
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_0

    .line 257
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_1
    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    goto :goto_1

    .line 262
    :cond_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 698
    if-nez p0, :cond_0

    .line 699
    return-void

    .line 702
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    return-void

    .line 704
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 706
    return-void
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 604
    const/4 v0, 0x0

    .line 606
    .local v0, "str":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 623
    goto :goto_0

    .line 607
    :catch_0
    move-exception v1

    .line 608
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 609
    .local v3, "parent":Ljava/io/File;
    move-object v3, v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    const-string v4, "APSharedPreferencesImpl"

    if-nez v1, :cond_0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t create directory for SharedPreferences file "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-object v2

    .line 614
    :cond_0
    nop

    .line 615
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f9

    .line 614
    const/4 v5, -0x1

    invoke-static {v1, v2, v5, v5}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->setPermissions(Ljava/lang/String;III)V

    .line 619
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 622
    goto :goto_0

    .line 620
    :catch_1
    move-exception v1

    .line 621
    .local v1, "e2":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Couldn\'t create SharedPreferences file "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v1    # "e2":Ljava/io/FileNotFoundException;
    .end local v3    # "parent":Ljava/io/File;
    :goto_0
    return-object v0
.end method

.method private enqueueDiskWrite(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "mcr"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .line 571
    new-instance v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$3;-><init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 585
    .local v0, "writeToDiskRunnable":Ljava/lang/Runnable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 589
    :goto_0
    if-eqz v3, :cond_2

    move v3, v2

    .line 591
    .local v3, "wasEmpty":Z
    monitor-enter p0

    .line 592
    :try_start_0
    iget v4, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v4, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v3, v1

    .line 593
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    if-eqz v3, :cond_2

    .line 595
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 596
    return-void

    .line 593
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 600
    .end local v3    # "wasEmpty":Z
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->singleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 601
    return-void
.end method

.method private hasFileChangedUnexpectedly()Z
    .locals 9

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mDiskWritesInFlight:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 213
    monitor-exit p0

    return v1

    .line 215
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 225
    const/4 v0, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 226
    .local v2, "st_mtime":J
    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 229
    .local v4, "st_size":J
    nop

    .line 231
    monitor-enter p0

    .line 232
    :try_start_2
    iget-wide v6, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mStatTimestamp:J

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    iget-wide v6, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mStatSize:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 227
    .end local v2    # "st_mtime":J
    .end local v4    # "st_size":J
    :catchall_1
    move-exception v1

    const/4 v1, 0x0

    .line 228
    .local v1, "e":Ljava/lang/Throwable;
    return v0

    .line 215
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private loadFromDisk()V
    .locals 5

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mLoaded:Z

    if-eqz v0, :cond_0

    .line 148
    monitor-exit p0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 154
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    const-string v0, "APSharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to read preferences file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " without permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    const/4 v0, 0x0

    .line 163
    .local v0, "map":Ljava/util/Map;
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 164
    const/4 v1, 0x0

    .line 166
    .local v1, "str":Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x4000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 168
    move-object v1, v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->readMapXml(Ljava/io/InputStream;)Ljava/util/Map;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v2

    .line 172
    :goto_0
    :try_start_3
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    goto :goto_2

    .line 175
    .end local v1    # "str":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 172
    .restart local v1    # "str":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v2

    goto :goto_1

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "APSharedPreferencesImpl"

    const-string v4, "getSharedPreferences"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 172
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->closeQuietly(Ljava/io/Closeable;)V

    .end local v0    # "map":Ljava/util/Map;
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 179
    .end local v1    # "str":Ljava/io/BufferedInputStream;
    .restart local v0    # "map":Ljava/util/Map;
    :cond_3
    :goto_2
    monitor-enter p0

    .line 180
    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mLoaded:Z

    .line 181
    if-eqz v0, :cond_4

    .line 182
    iput-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mStatTimestamp:J

    .line 184
    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mStatSize:J

    goto :goto_3

    .line 186
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 188
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 189
    monitor-exit p0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 154
    .end local v0    # "map":Ljava/util/Map;
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .param p0, "prefsFile"    # Ljava/io/File;

    .line 193
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static queueWorkAdd(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 709
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/sp/QueuedWork;->add(Ljava/lang/Runnable;)V

    .line 710
    return-void
.end method

.method private static queueWorkRemove(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 713
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/sp/QueuedWork;->remove(Ljava/lang/Runnable;)V

    .line 714
    return-void
.end method

.method private static readMapXml(Ljava/io/InputStream;)Ljava/util/Map;
    .locals 1
    .param p0, "str"    # Ljava/io/InputStream;

    .line 690
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/sp/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private static setFilePermissionsFromMode(Ljava/lang/String;II)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "unknown"    # I

    .line 744
    or-int/lit16 v0, p2, 0x1b0

    .line 747
    .local v0, "perms":I
    const/4 v1, -0x1

    :try_start_0
    invoke-static {p0, v0, v1, v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->setPermissions(Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    .end local v0    # "perms":I
    return-void

    .line 748
    :catchall_0
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "APSharedPreferencesImpl"

    const-string v2, "setFilePermissionsFromMode failed, fallback."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 750
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->getInstance()Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->fallback()V

    .line 752
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static setPermissions(Ljava/lang/String;III)V
    .locals 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "uid"    # I
    .param p3, "gid"    # I

    .line 722
    :try_start_0
    const-string v0, "android.os.FileUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 723
    .local v1, "fileUtils":Ljava/lang/Class;
    const-string v2, "setPermissions"

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v4, v8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v5, v4, v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v9

    .line 723
    invoke-static {v0, v2, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    nop

    .end local v1    # "fileUtils":Ljava/lang/Class;
    return-void

    .line 725
    :catchall_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "APSharedPreferencesImpl"

    const-string v2, "call FileUtils.setPermissions failed, fallback."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 727
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->getInstance()Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->fallback()V

    .line 729
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static singleThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 717
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private startLoadFromDisk()V
    .locals 2

    .line 129
    monitor-enter p0

    .line 130
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mLoaded:Z

    .line 131
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    sget-object v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$2;-><init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 143
    return-void

    .line 131
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static sync(Ljava/io/FileOutputStream;)V
    .locals 7
    .param p0, "path"    # Ljava/io/FileOutputStream;

    .line 733
    :try_start_0
    const-string v0, "android.os.FileUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 734
    .local v1, "fileUtils":Ljava/lang/Class;
    const-string v2, "sync"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    invoke-static {v0, v2, v4, v3}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    nop

    .end local v1    # "fileUtils":Ljava/lang/Class;
    return-void

    .line 736
    :catchall_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "APSharedPreferencesImpl"

    const-string v2, "call FileUtils.sync failed, fallback."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 738
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->getInstance()Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/utils/sp/SharedPreferenceWrapper;->fallback()V

    .line 740
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private static writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "map"    # Ljava/util/Map;
    .param p1, "str"    # Ljava/io/OutputStream;

    .line 694
    invoke-static {p0, p1}, Lcom/alipay/mobile/quinox/utils/sp/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 695
    return-void
.end method

.method private writeToFile(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;)V
    .locals 6
    .param p1, "mcr"    # Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;

    .line 630
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 631
    iget-boolean v0, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    if-nez v0, :cond_0

    .line 636
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    .line 637
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 641
    const-string v0, "APSharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t rename file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to backup file "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    .line 644
    return-void

    .line 647
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 655
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    const/4 v3, 0x0

    .line 656
    .local v3, "str":Ljava/io/FileOutputStream;
    move-object v3, v0

    if-nez v0, :cond_3

    .line 657
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    .line 658
    return-void

    .line 660
    :cond_3
    iget-object v0, p1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 661
    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->sync(Ljava/io/FileOutputStream;)V

    .line 662
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 663
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMode:I

    invoke-static {v0, v4, v2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 667
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mStatTimestamp:J

    .line 668
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mStatSize:J

    .line 669
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .end local p1    # "mcr":Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 670
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    .restart local p1    # "mcr":Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;
    :catchall_1
    move-exception v0

    .line 674
    :goto_0
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 675
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 676
    return-void

    .line 677
    .end local v3    # "str":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "APSharedPreferencesImpl"

    const-string v3, "writeToFile: Got exception:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 681
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 682
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 683
    const-string v0, "APSharedPreferencesImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t clean up partially-written file "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_4
    invoke-virtual {p1, v2}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    .line 687
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 337
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    new-instance v0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl$EditorImpl;-><init>(Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;)V

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 265
    monitor-enter p0

    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 268
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 313
    monitor-enter p0

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 316
    .local v1, "v":Ljava/lang/Boolean;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    monitor-exit p0

    return v0

    .line 317
    .end local v1    # "v":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x0

    .line 308
    .local v1, "v":Ljava/lang/Float;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    monitor-exit p0

    return v0

    .line 309
    .end local v1    # "v":Ljava/lang/Float;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 292
    .local v1, "v":Ljava/lang/Integer;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    monitor-exit p0

    return v0

    .line 293
    .end local v1    # "v":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const/4 v1, 0x0

    .line 300
    .local v1, "v":Ljava/lang/Long;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p2

    :goto_0
    monitor-exit p0

    return-wide v2

    .line 301
    .end local v1    # "v":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 276
    .local v1, "v":Ljava/lang/String;
    move-object v1, v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    monitor-exit p0

    return-object v0

    .line 277
    .end local v1    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValues"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    monitor-enter p0

    .line 282
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->awaitLoadedLocked()V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    .line 284
    .local v1, "v":Ljava/util/Set;
    move-object v1, v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    monitor-exit p0

    return-object v0

    .line 285
    .end local v1    # "v":Ljava/util/Set;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final startReloadIfChangedUnexpectedly()V
    .locals 1

    .line 197
    monitor-enter p0

    .line 199
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->startLoadFromDisk()V

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 243
    monitor-enter p0

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/utils/sp/APSharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
