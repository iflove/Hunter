.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;
.super Ljava/lang/Object;
.source "SQLiteSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TRANSACTION_MODE_DEFERRED:I = 0x0

.field public static final TRANSACTION_MODE_EXCLUSIVE:I = 0x2

.field public static final TRANSACTION_MODE_IMMEDIATE:I = 0x1


# instance fields
.field private mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

.field private mConnectionFlags:I

.field private final mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

.field private mConnectionUseCount:I

.field private mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

.field private mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 169
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;)V
    .locals 2
    .param p1, "connectionPool"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    if-eqz p1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 239
    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPool must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 917
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-nez v0, :cond_1

    .line 918
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 921
    iput p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionFlags:I

    goto :goto_0

    .line 918
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 923
    :cond_1
    :goto_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    .line 924
    return-void
.end method

.method private beginTransactionUnchecked(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V
    .locals 4
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 318
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 319
    invoke-direct {p0, v1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 324
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v0, :cond_3

    .line 326
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string v2, "BEGIN;"

    invoke-virtual {v0, v2, v1, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string v2, "BEGIN EXCLUSIVE;"

    invoke-virtual {v0, v2, v1, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 334
    goto :goto_0

    .line 328
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string v2, "BEGIN IMMEDIATE;"

    invoke-virtual {v0, v2, v1, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :cond_3
    :goto_0
    if-eqz p2, :cond_5

    .line 344
    :try_start_1
    invoke-interface {p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    goto :goto_1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v2, :cond_4

    .line 347
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string v3, "ROLLBACK;"

    invoke-virtual {v2, v3, v1, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    :cond_4
    nop

    .end local p1    # "transactionMode":I
    .end local p2    # "transactionListener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .end local p3    # "connectionFlags":I
    .end local p4    # "cancellationSignal":Ljava/lang/Object;
    throw v0

    .line 354
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local p1    # "transactionMode":I
    .restart local p2    # "transactionListener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .restart local p3    # "connectionFlags":I
    .restart local p4    # "cancellationSignal":Ljava/lang/Object;
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->obtainTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    move-result-object v0

    .line 355
    .local v1, "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    move-object v1, v0

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 356
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .end local v1    # "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    if-nez v1, :cond_6

    .line 359
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return-void

    .line 362
    :cond_6
    return-void

    .line 358
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-nez v1, :cond_7

    .line 359
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    :cond_7
    throw v0
.end method

.method private endTransactionUnchecked(Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "cancellationSignal"    # Ljava/lang/Object;
    .param p2, "yielding"    # Z

    .line 421
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    move-object v2, v1

    .line 422
    .local v2, "top":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    move-object v2, v0

    iget-boolean v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    const/4 v3, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-boolean v0, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 424
    .local v0, "successful":Z
    :goto_0
    const/4 v4, 0x0

    .line 425
    .local v4, "listenerException":Ljava/lang/RuntimeException;
    iget-object v5, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    move-object v6, v1

    .line 426
    .local v6, "listener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    move-object v6, v5

    if-eqz v5, :cond_3

    .line 428
    if-eqz v0, :cond_2

    .line 429
    :try_start_0
    invoke-interface {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onCommit()V

    goto :goto_1

    .line 431
    :cond_2
    invoke-interface {v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    goto :goto_1

    .line 434
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 435
    const/4 v0, 0x0

    .line 439
    :cond_3
    :goto_1
    iget-object v5, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 440
    invoke-direct {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->recycleTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;)V

    .line 442
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v5, :cond_4

    .line 443
    if-nez v0, :cond_6

    .line 444
    iput-boolean v3, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_3

    .line 448
    :cond_4
    if-eqz v0, :cond_5

    .line 449
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string v5, "COMMIT;"

    invoke-virtual {v3, v5, v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 451
    :cond_5
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    const-string v5, "ROLLBACK;"

    invoke-virtual {v3, v5, v1, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    .line 455
    nop

    .line 458
    :cond_6
    :goto_3
    if-nez v4, :cond_7

    .line 461
    return-void

    .line 459
    :cond_7
    throw v4

    .line 454
    :catchall_0
    move-exception v1

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v1
.end method

.method private executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 895
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v0

    .line 896
    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 911
    const/4 v0, 0x0

    return v0

    .line 908
    :cond_0
    invoke-virtual {p0, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransaction(Ljava/lang/Object;)V

    .line 909
    return v2

    .line 903
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->setTransactionSuccessful()V

    .line 904
    invoke-virtual {p0, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransaction(Ljava/lang/Object;)V

    .line 905
    return v2

    .line 898
    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->beginTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V

    .line 900
    return v2
.end method

.method private obtainTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    .locals 3
    .param p1, "mode"    # I
    .param p2, "listener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 961
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x0

    move-object v2, v1

    .line 962
    .local v2, "transaction":Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 964
    iput-object v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 965
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 966
    iput-boolean v0, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    goto :goto_0

    .line 968
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$1;)V

    move-object v2, v0

    .line 970
    :goto_0
    iput p1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 971
    iput-object p2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 972
    return-object v2
.end method

.method private recycleTransaction(Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;)V
    .locals 1
    .param p1, "transaction"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 976
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 977
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 978
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    .line 979
    return-void
.end method

.method private releaseConnection()V
    .locals 3

    .line 927
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v0, :cond_2

    .line 928
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-lez v1, :cond_1

    .line 929
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionUseCount:I

    if-nez v1, :cond_0

    .line 931
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->releaseConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    .line 934
    return-void

    .line 933
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    throw v0

    .line 936
    :cond_0
    return-void

    .line 928
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 927
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private throwIfNestedTransaction()V
    .locals 2

    .line 954
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->hasNestedTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    return-void

    .line 955
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because a nested transaction is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfNoTransaction()V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    .line 943
    return-void

    .line 940
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because there is no current transaction."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwIfTransactionMarkedSuccessful()V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 947
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this operation because the transaction has already been marked successful.  The only thing you can do now is call endTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_1
    :goto_0
    return-void
.end method

.method private yieldTransactionUnchecked(JLjava/lang/Object;)Z
    .locals 7
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 544
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->shouldYieldConnection(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMode:I

    .line 549
    .local v0, "transactionMode":I
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 550
    .local v1, "listener":Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnectionFlags:I

    .line 551
    .local v2, "connectionFlags":I
    const/4 v3, 0x1

    invoke-direct {p0, p3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransactionUnchecked(Ljava/lang/Object;Z)V

    .line 553
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_1

    .line 555
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    goto :goto_0

    .line 556
    :catch_0
    move-exception v4

    .line 561
    :cond_1
    :goto_0
    invoke-direct {p0, v0, v1, v2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->beginTransactionUnchecked(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V

    .line 563
    return v3
.end method


# virtual methods
.method public final beginTransaction(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V
    .locals 0
    .param p1, "transactionMode"    # I
    .param p2, "transactionListener"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 304
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 305
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->beginTransactionUnchecked(ILcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;ILjava/lang/Object;)V

    .line 307
    return-void
.end method

.method public final enableTrigger(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "enable"    # Z

    .line 1001
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 1003
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->enableTrigger(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    .line 1006
    return-void

    .line 1005
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final endTransaction(Ljava/lang/Object;)V
    .locals 1
    .param p1, "cancellationSignal"    # Ljava/lang/Object;

    .line 408
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 409
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->endTransactionUnchecked(Ljava/lang/Object;Z)V

    .line 412
    return-void

    .line 409
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final execute(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 626
    if-eqz p1, :cond_1

    .line 630
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    return-void

    .line 634
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 627
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 730
    if-eqz p1, :cond_1

    .line 734
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    return-object v0

    .line 738
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 731
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)I
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 765
    if-eqz p1, :cond_1

    .line 769
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const/4 v0, 0x0

    return v0

    .line 773
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 775
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 766
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZILjava/lang/Object;)I
    .locals 14
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "connectionFlags"    # I
    .param p8, "cancellationSignal"    # Ljava/lang/Object;

    .line 845
    move-object v1, p0

    move-object v10, p1

    move/from16 v11, p7

    move-object/from16 v12, p8

    if-eqz v10, :cond_2

    .line 848
    if-eqz p3, :cond_1

    .line 852
    move-object/from16 v13, p2

    invoke-direct {p0, p1, v13, v11, v12}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    .line 854
    const/4 v0, 0x0

    return v0

    .line 857
    :cond_0
    invoke-direct {p0, p1, v11, v12}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 859
    :try_start_0
    iget-object v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZLjava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 849
    :cond_1
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_2
    move-object/from16 v13, p2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 800
    if-eqz p1, :cond_1

    .line 804
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    const-wide/16 v0, 0x0

    return-wide v0

    .line 808
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 810
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 813
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 801
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)J
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 660
    if-eqz p1, :cond_1

    .line 664
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    const-wide/16 v0, 0x0

    return-wide v0

    .line 668
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 661
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForString(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "connectionFlags"    # I
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 694
    if-eqz p1, :cond_1

    .line 698
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeSpecial(Ljava/lang/String;[Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const/4 v0, 0x0

    return-object v0

    .line 702
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 695
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeWithPrimaryConnectionLocked(ILcom/alibaba/sqlcrypto/sqlite/DatabaseTask;)I
    .locals 2
    .param p1, "connectionFlags"    # I
    .param p2, "databaseTask"    # Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;

    .line 991
    invoke-interface {p2}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;->getSql()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 993
    :try_start_0
    invoke-interface {p2}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseTask;->onExecute()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0
.end method

.method public final hasConnection()Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNestedTransaction()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTransaction()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final prepare(Ljava/lang/String;ILjava/lang/Object;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "connectionFlags"    # I
    .param p3, "cancellationSignal"    # Ljava/lang/Object;
    .param p4, "outStatementInfo"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;

    .line 593
    if-eqz p1, :cond_0

    .line 602
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->acquireConnection(Ljava/lang/String;ILjava/lang/Object;)V

    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-virtual {v0, p1, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->prepare(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    .line 607
    return-void

    .line 606
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->releaseConnection()V

    throw v0

    .line 594
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setTransactionSuccessful()V
    .locals 2

    .line 380
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 381
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 383
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    .line 384
    return-void
.end method

.method public final yieldTransaction(JZLjava/lang/Object;)Z
    .locals 2
    .param p1, "sleepAfterYieldDelayMillis"    # J
    .param p3, "throwIfUnsafe"    # Z
    .param p4, "cancellationSignal"    # Ljava/lang/Object;

    .line 517
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 518
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNoTransaction()V

    .line 519
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfTransactionMarkedSuccessful()V

    .line 520
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->throwIfNestedTransaction()V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_4

    iget-boolean v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mMarkedSuccessful:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mParent:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    if-eqz v1, :cond_1

    goto :goto_1

    .line 527
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mConnection:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    if-eqz v1, :cond_3

    .line 529
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->mTransactionStack:Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;

    iget-boolean v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession$Transaction;->mChildFailed:Z

    if-eqz v1, :cond_2

    .line 530
    return v0

    .line 533
    :cond_2
    invoke-direct {p0, p1, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->yieldTransactionUnchecked(JLjava/lang/Object;)Z

    move-result v0

    return v0

    .line 527
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 524
    :cond_4
    :goto_1
    return v0
.end method
