.class public Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;
.super Ljava/lang/Object;
.source "LoadedClassRecorder.java"


# static fields
.field private static final MAX_LOADED_CLASS_RECORD_SIZE:I = 0x3e8

.field private static final sLoadedClass:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecordLoadClass:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sLoadedClass:Ljava/util/LinkedHashSet;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sRecordLoadClass:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emptyInit()V
    .locals 2

    .line 19
    const-string v0, "LoadedClassRecorder"

    const-string v1, "emptyInit()"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->startRecordLoadedClass()V

    .line 21
    const-string v0, "fake"

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->recordIfNeed(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->endRecordLoadedClass()Ljava/util/List;

    .line 23
    return-void
.end method

.method public static endRecordLoadedClass()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sRecordLoadClass:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sLoadedClass:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 49
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 50
    .local v1, "result":Ljava/util/List;
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 51
    monitor-exit v0

    .line 52
    return-object v1

    .line 51
    .end local v1    # "result":Ljava/util/List;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static recordIfNeed(Ljava/lang/String;)V
    .locals 3
    .param p0, "clazz"    # Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sRecordLoadClass:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sLoadedClass:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 29
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sRecordLoadClass:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 33
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    return-void
.end method

.method public static startRecordLoadedClass()V
    .locals 3

    .line 38
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sRecordLoadClass:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedClassRecorder;->sLoadedClass:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 43
    :cond_0
    return-void
.end method
