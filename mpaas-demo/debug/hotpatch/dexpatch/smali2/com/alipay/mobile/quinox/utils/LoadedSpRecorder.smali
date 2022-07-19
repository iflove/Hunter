.class public Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;
.super Ljava/lang/Object;
.source "LoadedSpRecorder.java"


# static fields
.field private static final MAX_LOADED_CLASS_RECORD_SIZE:I = 0x3e8

.field private static final sLoadedSpNameAndMode:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecordLoadedSp:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sLoadedSpNameAndMode:Ljava/util/LinkedHashSet;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sRecordLoadedSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endRecordLoadedSp()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sRecordLoadedSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sLoadedSpNameAndMode:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 42
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .local v1, "result":Ljava/util/List;
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 44
    monitor-exit v0

    .line 45
    return-object v1

    .line 44
    .end local v1    # "result":Ljava/util/List;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static recordIfNeed(Ljava/lang/String;I)V
    .locals 3
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "mode"    # I

    .line 19
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sRecordLoadedSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sLoadedSpNameAndMode:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sRecordLoadedSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 26
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 28
    :cond_1
    return-void
.end method

.method public static startRecordLoadedSp()V
    .locals 3

    .line 31
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sRecordLoadedSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/alipay/mobile/quinox/utils/LoadedSpRecorder;->sLoadedSpNameAndMode:Ljava/util/LinkedHashSet;

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_0
    return-void
.end method
