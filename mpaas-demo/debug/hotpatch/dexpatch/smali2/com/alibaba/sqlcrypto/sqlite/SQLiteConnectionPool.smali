.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final CONNECTION_FLAG_INTERACTIVE:I = 0x4

.field public static final CONNECTION_FLAG_PRIMARY_CONNECTION_AFFINITY:I = 0x2

.field public static final CONNECTION_FLAG_READ_ONLY:I = 0x1

.field private static final CONNECTION_POOL_BUSY_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "SQLiteConnectionPool"


# instance fields
.field private final mAcquiredConnections:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableNonPrimaryConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

.field private final mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mMaxConnectionPoolSize:I

.field private mNextConnectionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 74
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 1
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 152
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 153
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 154
    return-void
.end method

.method private cancelConnectionWaiterLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 3
    .param p1, "waiter"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 717
    iget-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 723
    :cond_0
    const/4 v0, 0x0

    .line 724
    .local v0, "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 725
    .local v1, "current":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_0
    if-eq v1, p1, :cond_2

    .line 726
    if-eqz v1, :cond_1

    .line 727
    move-object v0, v1

    .line 728
    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_0

    .line 726
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 730
    :cond_2
    if-eqz v0, :cond_3

    .line 731
    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_1

    .line 733
    :cond_3
    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 737
    :goto_1
    new-instance v2, Lcom/alibaba/sqlcrypto/OperationCanceledException;

    invoke-direct {v2}, Lcom/alibaba/sqlcrypto/OperationCanceledException;-><init>()V

    iput-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 738
    iget-object v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 741
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 742
    return-void

    .line 719
    .end local v0    # "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v1    # "current":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :cond_4
    :goto_2
    return-void
.end method

.method private closeAvailableConnectionsAndLogExceptionsLocked()V
    .locals 1

    .line 502
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 504
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 508
    :cond_0
    return-void
.end method

.method private closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 513
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 514
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 513
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 517
    return-void
.end method

.method private closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V
    .locals 3
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 532
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to close connection, its fate is now in the hands of the merciful GC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    return-void
.end method

.method private closeExcessConnectionsAndLogExceptionsLocked()V
    .locals 3

    .line 521
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 522
    .local v0, "availableCount":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "availableCount":I
    .local v1, "availableCount":I
    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_0

    .line 523
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 525
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 526
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    move v0, v1

    goto :goto_0

    .line 527
    :cond_0
    return-void
.end method

.method private discardAcquiredConnectionsLocked()V
    .locals 1

    .line 541
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 542
    return-void
.end method

.method private dispose(Z)V
    .locals 5
    .param p1, "finalized"    # Z

    .line 219
    if-nez p1, :cond_1

    .line 224
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 229
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 231
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    .line 232
    .local v1, "pendingCount":I
    move v1, v2

    if-eqz v2, :cond_0

    .line 233
    const-string v2, "SQLiteConnectionPool"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The connection pool for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has been closed but there are still "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " connections in use.  They will be closed as they are released back to the pool."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 240
    .end local v1    # "pendingCount":I
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 242
    :cond_1
    return-void
.end method

.method private finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V
    .locals 3
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .line 916
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 917
    .local v0, "readOnly":Z
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setOnlyAllowReadOnlyOperations(Z)V

    .line 919
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->NORMAL:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-virtual {v1, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    nop

    .end local v0    # "readOnly":Z
    return-void

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to prepare acquired connection for session, closing it: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", connectionFlags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 924
    throw v0
.end method

.method private static getPriority(I)I
    .locals 1
    .param p0, "connectionFlags"    # I

    .line 953
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSessionBlockingImportantConnectionWaitersLocked(ZI)Z
    .locals 3
    .param p1, "holdingPrimaryConnection"    # Z
    .param p2, "connectionFlags"    # I

    .line 930
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    const/4 v1, 0x0

    .line 931
    .local v1, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    move-object v1, v0

    if-eqz v0, :cond_3

    .line 932
    invoke-static {p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v0

    .line 935
    .local v0, "priority":I
    :cond_0
    iget v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-gt v0, v2, :cond_3

    .line 942
    if-nez p1, :cond_2

    iget-boolean v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 946
    :cond_1
    iget-object v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 947
    move-object v1, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 943
    :cond_2
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 949
    .end local v0    # "priority":I
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private logConnectionPoolBusyLocked(JI)V
    .locals 9
    .param p1, "waitMillis"    # J
    .param p3, "connectionFlags"    # I

    .line 746
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 747
    .local v0, "thread":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 748
    .local v3, "msg":Ljava/lang/StringBuilder;
    move-object v3, v1

    const-string v4, "The connection pool for database \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 749
    const-string v1, "\' has been unable to grant a connection to thread "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    const-string/jumbo v1, "with flags 0x"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string v1, " for "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v1, p1

    const v4, 0x3a83126f    # 0.001f

    mul-float v1, v1, v4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " seconds.\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v1, "requests":Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 756
    .local v4, "activeConnections":I
    const/4 v5, 0x0

    .line 757
    .local v5, "idleConnections":I
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 758
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    move v5, v4

    move-object v4, v2

    .end local v4    # "activeConnections":I
    .local v5, "activeConnections":I
    .local v7, "idleConnections":I
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 759
    .local v2, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-virtual {v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->describeCurrentOperationUnsafe()Ljava/lang/String;

    move-result-object v8

    .line 760
    .local v4, "description":Ljava/lang/String;
    move-object v4, v8

    if-eqz v8, :cond_0

    .line 761
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 764
    :cond_0
    nop

    .end local v2    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v4    # "description":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    .line 766
    goto :goto_0

    .line 758
    :cond_1
    move v4, v5

    move v5, v7

    .line 768
    .end local v7    # "idleConnections":I
    .local v4, "activeConnections":I
    .local v5, "idleConnections":I
    :cond_2
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 769
    .local v2, "availableConnections":I
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v6, :cond_3

    .line 770
    add-int/lit8 v2, v2, 0x1

    .line 773
    :cond_3
    const-string v6, "Connections: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " active, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " idle, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " available.\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 778
    const-string v6, "\nRequests in progress:\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 780
    .local v7, "request":Ljava/lang/String;
    const-string v8, "  "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .end local v7    # "request":Ljava/lang/String;
    goto :goto_1

    .line 784
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SQLiteConnectionPool"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return-void
.end method

.method private markAcquiredConnectionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 576
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    .line 578
    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 580
    .local v0, "keysToUpdate":Ljava/util/ArrayList;
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 581
    .local v2, "entry":Ljava/util/Map$Entry;
    move-object v2, v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 582
    .local v3, "oldStatus":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    if-eq p1, v3, :cond_0

    sget-object v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-eq v3, v4, :cond_0

    .line 584
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "oldStatus":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_0
    goto :goto_0

    .line 587
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 588
    .local v1, "updateCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 589
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 592
    .end local v0    # "keysToUpdate":Ljava/util/ArrayList;
    .end local v1    # "updateCount":I
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "startTime"    # J
    .param p4, "priority"    # I
    .param p5, "wantPrimaryConnection"    # Z
    .param p6, "sql"    # Ljava/lang/String;
    .param p7, "connectionFlags"    # I

    .line 977
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    const/4 v1, 0x0

    move-object v2, v1

    .line 978
    .local v2, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 980
    iput-object v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_0

    .line 982
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$1;)V

    move-object v2, v0

    .line 984
    :goto_0
    iput-object p1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 985
    iput-wide p2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    .line 986
    iput p4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    .line 987
    iput-boolean p5, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    .line 988
    iput-object p6, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 989
    iput p7, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    .line 990
    return-object v2
.end method

.method public static open(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    .locals 2
    .param p0, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 174
    if-eqz p0, :cond_0

    .line 179
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    const/4 v1, 0x0

    .line 180
    .local v1, "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    move-object v1, v0

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->open()V

    .line 181
    return-object v1

    .line 175
    .end local v1    # "pool":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private open()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 192
    iput-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    .line 194
    return-void
.end method

.method private openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 2
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "primaryConnection"    # Z

    .line 466
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mNextConnectionId:I

    .line 467
    .local v0, "connectionId":I
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->open(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    return-object v1
.end method

.method private reconfigureAllConnectionsLocked()V
    .locals 7

    .line 546
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string v1, "SQLiteConnectionPool"

    if-eqz v0, :cond_0

    .line 548
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to reconfigure available primary connection, closing it: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 553
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 557
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 558
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 559
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 561
    .local v3, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 568
    goto :goto_2

    .line 562
    :catch_1
    move-exception v4

    .line 563
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to reconfigure available non-primary connection, closing it: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 566
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v6, v2, -0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 567
    add-int/lit8 v0, v0, -0x1

    move v2, v6

    .line 558
    .end local v3    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 571
    .end local v2    # "i":I
    :cond_1
    sget-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->markAcquiredConnectionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)V

    .line 572
    return-void
.end method

.method private recycleConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z
    .locals 3
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p2, "status"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 398
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->RECONFIGURE:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to reconfigure released connection, closing it: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnectionPool"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 404
    sget-object p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    .line 407
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;->DISCARD:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    if-ne p2, v0, :cond_1

    .line 408
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    .line 409
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private recycleConnectionWaiterLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V
    .locals 1
    .param p1, "waiter"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 994
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 995
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    .line 996
    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    .line 997
    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 998
    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 999
    iget v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 1000
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 1001
    return-void
.end method

.method private setMaxConnectionPoolSizeLocked()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 958
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getWALConnectionPoolSize()I

    move-result v0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    return-void

    .line 964
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    .line 966
    return-void
.end method

.method private throwIfClosedLocked()V
    .locals 2

    .line 969
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 973
    return-void

    .line 970
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the connection pool has been closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I

    .line 879
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 880
    .local v2, "availableCount":I
    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    if-eqz p1, :cond_1

    .line 883
    const/4 v0, 0x0

    move-object v4, v3

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 884
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 885
    .local v4, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    move-object v4, v5

    invoke-virtual {v5, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPreparedStatementInCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 886
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 887
    invoke-direct {p0, v4, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    .line 888
    return-object v4

    .line 883
    :cond_0
    nop

    .end local v4    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 892
    .end local v0    # "i":I
    :cond_1
    if-lez v2, :cond_2

    .line 894
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 895
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0, v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    .line 896
    return-object v0

    .line 900
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    .line 901
    .local v0, "openConnections":I
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v4, :cond_3

    .line 902
    add-int/lit8 v0, v0, 0x1

    .line 904
    :cond_3
    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    if-lt v0, v4, :cond_4

    .line 905
    return-object v3

    .line 907
    :cond_4
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {p0, v3, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    .line 909
    .local v1, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    .line 910
    return-object v1
.end method

.method private tryAcquirePrimaryConnectionLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 4
    .param p1, "connectionFlags"    # I

    .line 852
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const/4 v1, 0x0

    move-object v2, v1

    .line 853
    .local v2, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 854
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 855
    invoke-direct {p0, v2, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    .line 856
    return-object v2

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 861
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 862
    return-object v1

    .line 864
    :cond_1
    goto :goto_0

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    .line 870
    .end local v2    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0, v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->finishAcquireConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    .line 871
    return-object v0
.end method

.method private waitForConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 20
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 598
    move-object/from16 v9, p0

    move/from16 v10, p2

    and-int/lit8 v0, v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v13, v0

    .line 603
    .local v13, "wantPrimaryConnection":Z
    iget-object v14, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 604
    const/4 v15, 0x0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 613
    const/4 v0, 0x0

    .line 614
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    if-nez v13, :cond_1

    .line 615
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 647
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :catchall_0
    move-exception v0

    move-object v1, v15

    goto/16 :goto_9

    .line 618
    .restart local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 619
    invoke-direct {v9, v10}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    move-object v0, v1

    .line 621
    :cond_2
    if-eqz v0, :cond_3

    .line 622
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 626
    :cond_3
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->getPriority(I)I

    move-result v1

    move v8, v1

    .line 627
    .local v8, "priority":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 628
    .local v3, "startTime":J
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v1, p0

    move v5, v8

    move v6, v13

    move-object/from16 v7, p1

    move v15, v8

    .end local v8    # "priority":I
    .local v15, "priority":I
    move/from16 v8, p2

    :try_start_3
    invoke-direct/range {v1 .. v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->obtainConnectionWaiterLocked(Ljava/lang/Thread;JIZLjava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 630
    .local v1, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v2, 0x0

    .line 631
    .local v2, "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :try_start_4
    iget-object v5, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 632
    .local v5, "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_2
    if-eqz v5, :cond_5

    .line 633
    iget v6, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mPriority:I

    if-le v15, v6, :cond_4

    .line 634
    iput-object v5, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 635
    goto :goto_3

    .line 637
    :cond_4
    move-object v2, v5

    .line 638
    iget-object v6, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    move-object v5, v6

    goto :goto_2

    .line 640
    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    .line 641
    iput-object v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_4

    .line 643
    :cond_6
    iput-object v1, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 647
    .end local v0    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v2    # "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v3    # "startTime":J
    .end local v5    # "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v15    # "priority":I
    :goto_4
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 666
    const-wide/16 v2, 0x7530

    .line 667
    .local v2, "busyTimeoutMillis":J
    iget-wide v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    .local v4, "nextBusyTimeoutTime":J
    const-wide/16 v14, 0x0

    .line 670
    :goto_5
    iget-object v0, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 671
    iget-object v8, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 672
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 673
    monitor-exit v8

    goto :goto_6

    :catchall_1
    move-exception v0

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 677
    :cond_7
    :goto_6
    const-wide/32 v16, 0xf4240

    mul-long v11, v2, v16

    invoke-static {v9, v11, v12}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 680
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 683
    iget-object v11, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 684
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 686
    iget-object v12, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 687
    .local v12, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    iget-object v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 688
    .local v0, "ex":Ljava/lang/RuntimeException;
    if-nez v12, :cond_a

    if-eqz v0, :cond_8

    goto :goto_8

    .line 696
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 697
    .local v14, "now":J
    move-wide/from16 v14, v17

    cmp-long v19, v17, v4

    if-gez v19, :cond_9

    .line 698
    sub-long v2, v14, v4

    goto :goto_7

    .line 700
    :cond_9
    iget-wide v6, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mStartTime:J

    sub-long v6, v14, v6

    invoke-direct {v9, v6, v7, v10}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->logConnectionPoolBusyLocked(JI)V

    .line 701
    const-wide/16 v2, 0x7530

    .line 702
    const-wide/16 v6, 0x7530

    add-long v4, v14, v6

    .line 704
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v12    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local v14    # "now":J
    :goto_7
    monitor-exit v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    goto :goto_5

    .line 689
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v12    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_a
    :goto_8
    invoke-direct {v9, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->recycleConnectionWaiterLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 690
    if-eqz v12, :cond_b

    .line 691
    monitor-exit v11

    return-object v12

    .line 693
    :cond_b
    nop

    .end local v1    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v2    # "busyTimeoutMillis":J
    .end local v4    # "nextBusyTimeoutTime":J
    .end local v13    # "wantPrimaryConnection":Z
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "connectionFlags":I
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v0

    .line 704
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v12    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .restart local v1    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .restart local v2    # "busyTimeoutMillis":J
    .restart local v4    # "nextBusyTimeoutTime":J
    .restart local v13    # "wantPrimaryConnection":Z
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "connectionFlags":I
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 647
    .end local v1    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    .end local v2    # "busyTimeoutMillis":J
    .end local v4    # "nextBusyTimeoutTime":J
    :catchall_3
    move-exception v0

    const/4 v1, 0x0

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v1, v15

    .restart local v1    # "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    :goto_9
    :try_start_7
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_9
.end method

.method private wakeConnectionWaitersLocked()V
    .locals 8

    .line 792
    const/4 v0, 0x0

    .line 793
    .local v0, "predecessor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 794
    .local v1, "waiter":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    const/4 v2, 0x0

    .line 795
    .local v2, "primaryConnectionNotAvailable":Z
    const/4 v3, 0x0

    .line 796
    .local v3, "nonPrimaryConnectionNotAvailable":Z
    :goto_0
    if-eqz v1, :cond_7

    .line 797
    const/4 v4, 0x0

    .line 798
    .local v4, "unpark":Z
    iget-boolean v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v5, :cond_0

    .line 799
    const/4 v4, 0x1

    goto :goto_1

    .line 802
    :cond_0
    const/4 v5, 0x0

    .line 803
    .local v5, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_start_0
    iget-boolean v6, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mWantPrimaryConnection:Z

    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 804
    iget-object v6, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mSql:Ljava/lang/String;

    iget v7, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v6, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquireNonPrimaryConnectionLocked(Ljava/lang/String;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v6

    .line 806
    move-object v5, v6

    if-nez v6, :cond_1

    .line 807
    const/4 v3, 0x1

    .line 810
    :cond_1
    if-nez v5, :cond_2

    if-nez v2, :cond_2

    .line 811
    iget v6, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mConnectionFlags:I

    invoke-direct {p0, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->tryAcquirePrimaryConnectionLocked(I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v6

    .line 813
    move-object v5, v6

    if-nez v6, :cond_2

    .line 814
    const/4 v2, 0x1

    .line 817
    :cond_2
    if-eqz v5, :cond_3

    .line 818
    iput-object v5, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mAssignedConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    const/4 v4, 0x1

    goto :goto_1

    .line 820
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 823
    return-void

    .line 829
    .end local v5    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_4
    goto :goto_1

    .line 825
    :catch_0
    move-exception v5

    .line 827
    .local v5, "ex":Ljava/lang/RuntimeException;
    iput-object v5, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mException:Ljava/lang/RuntimeException;

    .line 828
    const/4 v4, 0x1

    .line 832
    .end local v5    # "ex":Ljava/lang/RuntimeException;
    :goto_1
    iget-object v5, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 833
    .local v5, "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    if-eqz v4, :cond_6

    .line 834
    if-eqz v0, :cond_5

    .line 835
    iput-object v5, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    goto :goto_2

    .line 837
    :cond_5
    iput-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionWaiterQueue:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 839
    :goto_2
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;

    .line 841
    iget-object v6, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;->mThread:Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_3

    .line 843
    :cond_6
    move-object v0, v1

    .line 845
    :goto_3
    move-object v1, v5

    .line 846
    .end local v4    # "unpark":Z
    .end local v5    # "successor":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$ConnectionWaiter;
    goto :goto_0

    .line 847
    :cond_7
    return-void
.end method


# virtual methods
.method public final acquireConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 352
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->dispose(Z)V

    .line 209
    return-void
.end method

.method public final collectDbStats(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "dbStatsList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 454
    invoke-virtual {v2, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->collectDbStats(Ljava/util/ArrayList;)V

    .line 455
    goto :goto_0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 458
    invoke-virtual {v2, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->collectDbStatsUnsafe(Ljava/util/ArrayList;)V

    .line 459
    goto :goto_1

    .line 460
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1062
    return-void
.end method

.method protected final finalize()V
    .locals 1

    .line 159
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final onConnectionLeaked()V
    .locals 2

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A SQLiteConnection object for database \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' was leaked!  Please fix your application to end transactions in progress properly and to close the database when it is no longer needed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteConnectionPool"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConnectionLeaked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 498
    return-void
.end method

.method public final reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 6
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 258
    if-eqz p1, :cond_9

    .line 262
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->throwIfClosedLocked()V

    .line 265
    iget v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v4, v3

    .line 267
    .local v4, "walModeChanged":Z
    move v4, v1

    if-eqz v1, :cond_3

    .line 270
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableNonPrimaryConnectionsAndLogExceptionsLocked()V

    .line 280
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "configuration":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    throw v1

    .line 271
    .restart local p1    # "configuration":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Write Ahead Logging (WAL) mode cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "configuration":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    throw v1

    .line 283
    .restart local p1    # "configuration":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    :cond_3
    :goto_1
    iget-boolean v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v5, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eq v1, v5, :cond_4

    const/4 v3, 0x1

    .line 285
    :cond_4
    if-eqz v3, :cond_6

    .line 289
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 290
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Foreign Key Constraints cannot be enabled or disabled while there are transactions in progress.  Finish all transactions and release all active database connections first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "configuration":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    throw v1

    .line 297
    .restart local p1    # "configuration":Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget v3, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    if-eq v1, v3, :cond_8

    .line 301
    if-eqz v4, :cond_7

    .line 302
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 309
    :cond_7
    invoke-direct {p0, p1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->openConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;Z)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v1

    .line 312
    .local v1, "newPrimaryConnection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeAvailableConnectionsAndLogExceptionsLocked()V

    .line 313
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->discardAcquiredConnectionsLocked()V

    .line 315
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 316
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    .line 317
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 318
    .end local v1    # "newPrimaryConnection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    goto :goto_3

    .line 320
    :cond_8
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    .line 321
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->setMaxConnectionPoolSizeLocked()V

    .line 323
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeExcessConnectionsAndLogExceptionsLocked()V

    .line 324
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->reconfigureAllConnectionsLocked()V

    .line 327
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 328
    .end local v4    # "walModeChanged":Z
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 259
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuration must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final releaseConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V
    .locals 4
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 368
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;

    const/4 v2, 0x0

    .line 370
    .local v2, "status":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    move-object v2, v1

    if-eqz v1, :cond_6

    .line 376
    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_0

    .line 377
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    goto :goto_1

    .line 378
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 379
    invoke-direct {p0, p1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v1, :cond_1

    .line 381
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailablePrimaryConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    goto :goto_0

    .line 380
    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    throw v1

    .line 383
    .restart local p1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    goto :goto_1

    .line 384
    :cond_3
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mMaxConnectionPoolSize:I

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_4

    .line 385
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->closeConnectionAndLogExceptionsLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V

    goto :goto_1

    .line 387
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->recycleConnectionLocked(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 388
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAvailableNonPrimaryConnections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->wakeConnectionWaitersLocked()V

    .line 392
    .end local v2    # "status":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :goto_1
    monitor-exit v0

    return-void

    .line 371
    .restart local v2    # "status":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    throw v1

    .line 392
    .end local v2    # "status":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool$AcquiredConnectionStatus;
    .restart local p1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final shouldYieldConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)Z
    .locals 3
    .param p1, "connection"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p2, "connectionFlags"    # I

    .line 426
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mAcquiredConnections:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mIsOpen:Z

    if-nez v1, :cond_0

    .line 434
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 437
    :cond_0
    nop

    .line 438
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isPrimaryConnection()Z

    move-result v1

    .line 437
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->isSessionBlockingImportantConnectionWaitersLocked(ZI)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 428
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot perform this operation because the specified connection was not acquired from this pool or has already been released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .end local p2    # "connectionFlags":I
    throw v1

    .line 439
    .restart local p1    # "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .restart local p2    # "connectionFlags":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SQLiteConnectionPool: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
