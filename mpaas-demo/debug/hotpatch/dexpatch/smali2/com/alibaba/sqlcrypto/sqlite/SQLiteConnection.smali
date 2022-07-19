.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$Operation;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;,
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SQLiteConnection"

.field private static final TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

.field private static final mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

.field private final mConnectionId:I

.field private mConnectionPtr:J

.field private final mIsPrimaryConnection:Z

.field private final mIsReadOnlyConnection:Z

.field private mOnlyAllowReadOnlyOperations:Z

.field private final mPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

.field private final mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

.field private mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

.field private final mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 105
    new-array v0, v0, [B

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    .line 107
    const-string v0, "[\\s]*\\n+[\\s]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    .line 136
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .locals 3
    .param p1, "pool"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    .line 198
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    .line 199
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 200
    iput p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    .line 201
    iput-boolean p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 202
    iget v1, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 203
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {v1, p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;I)V

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 206
    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .param p1, "x1"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 100
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->finalizePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 100
    invoke-static {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()[B
    .locals 1

    .line 100
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method private acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .locals 11
    .param p1, "sql"    # Ljava/lang/String;

    .line 984
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 985
    .local v0, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v1, 0x0

    .line 986
    .local v1, "skipCache":Z
    if-eqz v0, :cond_1

    .line 987
    iget-boolean v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v2, :cond_0

    .line 988
    return-object v0

    .line 993
    :cond_0
    const/4 v1, 0x1

    .line 996
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v2

    .line 998
    .local v2, "statementPtr":J
    :try_start_0
    iget-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    move-result v8

    .line 999
    .local v8, "numParameters":I
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v9

    .line 1000
    .local v9, "type":I
    iget-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    move-result v10

    .line 1001
    .local v10, "readOnly":Z
    move-object v4, p0

    move-object v5, p1

    move-wide v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v4

    move-object v0, v4

    .line 1002
    const/4 v4, 0x1

    if-nez v1, :cond_2

    invoke-static {v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1003
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v5, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iput-boolean v4, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    .end local v8    # "numParameters":I
    .end local v9    # "type":I
    .end local v10    # "readOnly":Z
    :cond_2
    nop

    .line 1014
    iput-boolean v4, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1015
    return-object v0

    .line 1006
    :catch_0
    move-exception v4

    .line 1009
    .local v4, "ex":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_3

    iget-boolean v5, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v5, :cond_4

    .line 1010
    :cond_3
    iget-wide v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1012
    :cond_4
    throw v4
.end method

.method private applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 0
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1159
    return-void
.end method

.method private bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .locals 12
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .line 1092
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1093
    .local v0, "count":I
    :goto_0
    move v0, v1

    iget v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-ne v1, v2, :cond_9

    .line 1098
    if-nez v0, :cond_1

    .line 1099
    return-void

    .line 1102
    :cond_1
    iget-wide v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1103
    .local v1, "statementPtr":J
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    move v10, v3

    .end local v3    # "i":I
    .local v10, "i":I
    :goto_1
    if-ge v10, v0, :cond_8

    .line 1104
    aget-object v3, p2, v10

    .line 1105
    .local v4, "arg":Ljava/lang/Object;
    move-object v11, v3

    .end local v4    # "arg":Ljava/lang/Object;
    .local v11, "arg":Ljava/lang/Object;
    invoke-static {v3}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_7

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 1122
    instance-of v3, v11, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    .line 1125
    iget-wide v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v10, 0x1

    move-object v5, v11

    check-cast v5, Ljava/lang/Boolean;

    .line 1126
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/16 v5, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    :goto_2
    move-wide v8, v5

    .line 1125
    move-wide v5, v1

    invoke-static/range {v3 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_3

    .line 1128
    :cond_3
    iget-wide v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v10, 0x1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-wide v5, v1

    invoke-static/range {v3 .. v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    goto :goto_3

    .line 1118
    :cond_4
    iget-wide v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v10, 0x1

    move-object v5, v11

    check-cast v5, [B

    move-object v8, v5

    check-cast v8, [B

    move-wide v5, v1

    invoke-static/range {v3 .. v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    .line 1119
    goto :goto_3

    .line 1114
    :cond_5
    iget-wide v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v10, 0x1

    move-object v5, v11

    check-cast v5, Ljava/lang/Number;

    .line 1115
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    .line 1114
    move-wide v5, v1

    invoke-static/range {v3 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    .line 1116
    goto :goto_3

    .line 1110
    :cond_6
    iget-wide v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v7, v10, 0x1

    move-object v5, v11

    check-cast v5, Ljava/lang/Number;

    .line 1111
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 1110
    move-wide v5, v1

    invoke-static/range {v3 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 1112
    goto :goto_3

    .line 1107
    :cond_7
    iget-wide v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v5, v10, 0x1

    invoke-static {v3, v4, v1, v2, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    .line 1108
    nop

    .line 1103
    .end local v11    # "arg":Ljava/lang/Object;
    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v4, v11

    goto :goto_1

    .line 1133
    .end local v10    # "i":I
    :cond_8
    return-void

    .line 1094
    .end local v1    # "statementPtr":J
    :cond_9
    new-instance v1, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bind arguments but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " were provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static native buildKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 381
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    const-string v0, "OFF"

    return-object v0

    .line 383
    :cond_0
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const-string v0, "NORMAL"

    return-object v0

    .line 385
    :cond_1
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    const-string v0, "FULL"

    return-object v0

    .line 388
    :cond_2
    return-object p0
.end method

.method private dispose(Z)V
    .locals 6
    .param p1, "finalized"    # Z

    .line 308
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 309
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "close"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 311
    .local v0, "cookie":I
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 312
    iget-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeClose(J)V

    .line 313
    iput-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 316
    return-void

    .line 315
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1

    .line 318
    .end local v0    # "cookie":I
    :cond_0
    return-void
.end method

.method private finalizePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1043
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1044
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->recyclePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1045
    return-void
.end method

.method private getMainDbStatsUnsafe(IJJ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;
    .locals 13
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    .line 1281
    move-object v0, p0

    iget-object v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 1282
    .local v1, "label":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-nez v2, :cond_0

    .line 1283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1285
    :cond_0
    new-instance v12, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1286
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v9

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1287
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v10

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1288
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v11

    move-object v2, v12

    move-object v3, v1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move v8, p1

    invoke-direct/range {v2 .. v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    return-object v12
.end method

.method static getNativeHandle(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .line 210
    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 211
    return-wide v0

    .line 212
    :cond_0
    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, 0x0

    .line 213
    .local v3, "handler":Ljava/lang/Long;
    move-object v3, v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSqliteHandler(J)J
    .locals 2
    .param p0, "connectionPtr"    # J

    .line 147
    invoke-static {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeSqliteHandler(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static isCacheable(I)Z
    .locals 2
    .param p0, "statementType"    # I

    .line 1143
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1147
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1145
    :cond_1
    :goto_0
    return v0
.end method

.method private static native nativeBindBlob(JJI[B)V
.end method

.method private static native nativeBindDouble(JJID)V
.end method

.method private static native nativeBindLong(JJIJ)V
.end method

.method private static native nativeBindNull(JJI)V
.end method

.method private static native nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native nativeCancel(J)V
.end method

.method static native nativeCheckLoad()Z
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeDisableTrigger(J)V
.end method

.method private static native nativeEnableTrigger(J)V
.end method

.method private static native nativeExecute(JJ)V
.end method

.method private static native nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method private static native nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native nativeExecuteForLong(JJ)J
.end method

.method private static native nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native nativeFinalizeStatement(JJ)V
.end method

.method private static native nativeGetColumnCount(JJ)I
.end method

.method private static native nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native nativeGetDbLookaside(J)I
.end method

.method private static native nativeGetParameterCount(JJ)I
.end method

.method private static native nativeIsReadOnly(JJ)Z
.end method

.method private static native nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J
.end method

.method private static native nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native nativeRegisterCustomFunction(JLcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;)V
.end method

.method private static native nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native nativeResetCancel(JZ)V
.end method

.method private static native nativeResetStatementAndClearBindings(JJ)V
.end method

.method private static native nativeSqliteHandler(J)J
.end method

.method private obtainPreparedStatement(Ljava/lang/String;JIIZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # J
    .param p4, "numParameters"    # I
    .param p5, "type"    # I
    .param p6, "readOnly"    # Z

    .line 1298
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1299
    .local v2, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1301
    iput-object v1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1302
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    goto :goto_0

    .line 1304
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$1;)V

    move-object v2, v0

    .line 1306
    :goto_0
    iput-object p1, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1307
    iput-wide p2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1308
    iput p4, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1309
    iput p5, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1310
    iput-boolean p6, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1311
    return-object v2
.end method

.method static open(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    .locals 6
    .param p0, "pool"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .line 232
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 235
    .local v0, "connection":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;
    :try_start_0
    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->open()V

    .line 237
    if-eqz p3, :cond_0

    .line 238
    iget-wide v1, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->getSqliteHandler(J)J

    move-result-wide v1

    .line 239
    .local v1, "sqliteHandler":J
    sget-object v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mNativeHandles:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v4, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v1    # "sqliteHandler":J
    :cond_0
    return-object v0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dispose(Z)V

    .line 244
    throw v1
.end method

.method private open()V
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    .line 260
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setEncryptKey()V

    .line 263
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 264
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 265
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 266
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 267
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 270
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 271
    .local v0, "functionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 272
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;

    .line 273
    .local v2, "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    iget-wide v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;)V

    .line 271
    .end local v2    # "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private recyclePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 1
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1315
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1316
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1317
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1318
    return-void
.end method

.method private releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 4
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1020
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1021
    iget-boolean v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_0

    .line 1023
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    return-void

    .line 1024
    :catch_0
    move-exception v0

    .line 1035
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    return-void

    .line 1038
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->finalizePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1040
    return-void
.end method

.method private setAutoCheckpointInterval()V
    .locals 6

    .line 331
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 332
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v0

    int-to-long v0, v0

    .line 333
    .local v0, "newValue":J
    const-string v2, "PRAGMA wal_autocheckpoint"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    .line 334
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PRAGMA wal_autocheckpoint="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    .line 338
    .end local v0    # "newValue":J
    :cond_0
    return-void
.end method

.method private setEncryptKey()V
    .locals 6

    .line 279
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->password:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    .line 282
    .local v2, "password":Ljava/lang/String;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-encrypt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    .line 284
    .local v3, "encryptFile":Ljava/io/File;
    move-object v3, v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v4, "\';"

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "PRAGMA key=\'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "PRAGMA rekey=\'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t touch "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", can\'t rekey the database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v2    # "password":Ljava/lang/String;
    .end local v3    # "encryptFile":Ljava/io/File;
    :cond_1
    return-void
.end method

.method private setForeignKeyModeFromConfiguration()V
    .locals 6

    .line 351
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 353
    .local v0, "newValue":J
    :goto_0
    const-string v2, "PRAGMA foreign_keys"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    .line 354
    cmp-long v2, v4, v0

    if-eqz v2, :cond_1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PRAGMA foreign_keys="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    .end local v0    # "newValue":J
    :cond_1
    return-void
.end method

.method private setJournalMode(Ljava/lang/String;)V
    .locals 4
    .param p1, "newValue"    # Ljava/lang/String;

    .line 393
    const-string v0, "PRAGMA journal_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    .line 394
    .local v2, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PRAGMA journal_mode="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 398
    return-void

    .line 405
    :cond_0
    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 418
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not change the database journal mode of \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' from \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SQLiteConnection"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_1
    return-void
.end method

.method private setJournalSizeLimit()V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 342
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v0

    int-to-long v0, v0

    .line 343
    .local v0, "newValue":J
    const-string v2, "PRAGMA journal_size_limit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    .line 344
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PRAGMA journal_size_limit="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    .line 348
    .end local v0    # "newValue":J
    :cond_0
    return-void
.end method

.method private setLocaleFromConfiguration()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 429
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "newLocale":Ljava/lang/String;
    iget-wide v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    .line 438
    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v1, :cond_1

    .line 439
    return-void

    .line 444
    :cond_1
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    return-void

    .line 466
    :catch_0
    move-exception v1

    .line 467
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to change locale for db \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setPageSize()V
    .locals 6

    .line 321
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_0

    .line 322
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getDefaultPageSize()J

    move-result-wide v0

    .line 323
    .local v0, "newValue":J
    const-string v2, "PRAGMA page_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    .line 324
    cmp-long v2, v4, v0

    if-eqz v2, :cond_0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PRAGMA page_size="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    .end local v0    # "newValue":J
    :cond_0
    return-void
.end method

.method private setSyncMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "newValue"    # Ljava/lang/String;

    .line 373
    const-string v0, "PRAGMA synchronous"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PRAGMA synchronous="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 378
    :cond_0
    return-void
.end method

.method private setWalModeFromConfiguration()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "WAL"

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getWALSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    return-void

    .line 366
    :cond_0
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getDefaultJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getDefaultSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    .line 370
    :cond_1
    return-void
.end method

.method private throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    .locals 2
    .param p1, "statement"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    .line 1136
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_1
    :goto_0
    return-void
.end method

.method private static trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sql"    # Ljava/lang/String;

    .line 1321
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->TRIM_SQL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final close()V
    .locals 1

    .line 252
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dispose(Z)V

    .line 253
    return-void
.end method

.method final collectDbStats(Ljava/util/ArrayList;)V
    .locals 28
    .param p1, "dbStatsList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1226
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v11, "PRAGMA "

    iget-wide v0, v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    move-result v12

    .line 1227
    .local v12, "lookaside":I
    const-wide/16 v1, 0x0

    .line 1228
    .local v1, "pageCount":J
    const-wide/16 v3, 0x0

    .line 1230
    .local v3, "pageSize":J
    const/4 v13, 0x0

    :try_start_0
    const-string v0, "PRAGMA page_count;"

    invoke-virtual {v9, v0, v13, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v5

    move-wide v1, v5

    .line 1231
    const-string v0, "PRAGMA page_size;"

    invoke-virtual {v9, v0, v13, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    .line 1234
    move-wide v14, v1

    move-wide/from16 v16, v3

    goto :goto_0

    .line 1232
    :catch_0
    move-exception v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    .line 1235
    .end local v1    # "pageCount":J
    .end local v3    # "pageSize":J
    .local v14, "pageCount":J
    .local v16, "pageSize":J
    :goto_0
    move-object/from16 v1, p0

    move v2, v12

    move-wide v3, v14

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    new-instance v0, Lcom/alibaba/sqlcrypto/CursorWindow;

    const-string v1, "collectDbStats"

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1242
    .local v8, "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :try_start_1
    const-string v2, "PRAGMA database_list;"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v4, v8

    move-object/from16 v18, v8

    .end local v8    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .local v18, "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    move-object v8, v0

    :try_start_2
    invoke-virtual/range {v1 .. v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZLjava/lang/Object;)I

    .line 1243
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_1
    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ge v1, v0, :cond_1

    .line 1244
    const/4 v0, 0x1

    move-object/from16 v2, v18

    .end local v18    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .local v2, "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :try_start_3
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1245
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v0

    .line 1246
    .local v4, "path":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 1247
    const-wide/16 v16, 0x0

    .line 1249
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".page_count;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v5

    move-wide v14, v5

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".page_size;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v5
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1253
    .end local v16    # "pageSize":J
    .local v5, "pageSize":J
    move-wide/from16 v16, v5

    goto :goto_2

    .line 1251
    .end local v5    # "pageSize":J
    .restart local v16    # "pageSize":J
    :catch_1
    move-exception v0

    .line 1254
    :goto_2
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "  (attached) "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1255
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 1258
    :cond_0
    new-instance v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v5

    move-object/from16 v19, v0

    move-wide/from16 v20, v14

    move-wide/from16 v22, v16

    invoke-direct/range {v18 .. v27}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1243
    nop

    .end local v0    # "label":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v18, v2

    goto/16 :goto_1

    .line 1260
    .end local v1    # "i":I
    :catch_2
    move-exception v0

    goto :goto_5

    .line 1263
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 1243
    .end local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v1    # "i":I
    .restart local v18    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :cond_1
    move-object/from16 v2, v18

    .line 1263
    .end local v1    # "i":I
    .end local v18    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :goto_3
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    .line 1264
    return-void

    .line 1260
    .end local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v18    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :catch_3
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    goto :goto_5

    .line 1263
    .end local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v18    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :catchall_1
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    goto :goto_4

    .end local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v8    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :catchall_2
    move-exception v0

    move-object v2, v8

    .end local v8    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :goto_4
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    throw v0

    .line 1260
    .end local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v8    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :catch_4
    move-exception v0

    move-object v2, v8

    .end local v8    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local v2    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    :goto_5
    goto :goto_3
.end method

.method final collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "dbStatsList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1274
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    return-void
.end method

.method final describeCurrentOperationUnsafe()Ljava/lang/String;
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final dump(Landroid/util/Printer;Z)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1168
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1169
    return-void
.end method

.method final dumpUnsafe(Landroid/util/Printer;Z)V
    .locals 3
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1187
    if-eqz p2, :cond_0

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  connectionPtr: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  isPrimaryConnection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  onlyAllowReadOnlyOperations: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;Z)V

    .line 1195
    if-eqz p2, :cond_1

    .line 1196
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1198
    :cond_1
    return-void
.end method

.method public final enableTrigger(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 975
    if-eqz p1, :cond_0

    .line 976
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeEnableTrigger(J)V

    return-void

    .line 978
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeDisableTrigger(J)V

    .line 980
    return-void
.end method

.method public final execute(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 618
    if-eqz p1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "execute"

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 624
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 626
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 627
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 628
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 632
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecute(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    :try_start_2
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 639
    nop

    .line 644
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 645
    return-void

    .line 638
    .restart local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 644
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 640
    :catch_0
    move-exception v1

    .line 641
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 642
    nop

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 644
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1

    .line 619
    .end local v0    # "cookie":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 759
    if-eqz p1, :cond_1

    .line 763
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForBlobFileDescriptor"

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 766
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 768
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 769
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 770
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 774
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    move-result v2

    const/4 v3, 0x0

    .line 776
    .local v3, "fd":I
    move v3, v2

    if-ltz v2, :cond_0

    invoke-static {v3}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 782
    :goto_0
    :try_start_2
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 788
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object v2

    .line 782
    .end local v3    # "fd":I
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 788
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 786
    nop

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 788
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :goto_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1

    .line 760
    .end local v0    # "cookie":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 808
    const-string v0, "changedRows="

    if-eqz p1, :cond_2

    .line 812
    const/4 v1, 0x0

    .line 813
    .local v1, "changedRows":I
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForChangedRowCount"

    invoke-virtual {v2, v3, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 816
    .local v2, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 818
    .local v3, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 819
    invoke-direct {p0, v3, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 820
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 824
    iget-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    .line 832
    :try_start_2
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 838
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 839
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_0
    return v1

    .line 832
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-direct {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 838
    .end local v3    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :catchall_1
    move-exception v3

    goto :goto_0

    .line 834
    :catch_0
    move-exception v3

    .line 835
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 836
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 838
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :goto_0
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 839
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_1
    throw v3

    .line 809
    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZLjava/lang/Object;)I
    .locals 25
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v14, p4

    const-string v15, ", countedRows="

    const-string v13, ", filledRows="

    const-string v12, ", actualPos="

    const-string v11, "\', startPos="

    const-string/jumbo v9, "window=\'"

    .line 918
    if-eqz v2, :cond_3

    .line 921
    if-eqz v4, :cond_2

    .line 925
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 927
    const/16 v16, -0x1

    .line 928
    .local v16, "actualPos":I
    const/16 v17, -0x1

    .line 929
    .local v17, "countedRows":I
    const/16 v18, -0x1

    .line 930
    .local v18, "filledRows":I
    :try_start_0
    iget-object v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v5, "executeForCursorWindow"

    invoke-virtual {v0, v5, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    move v10, v0

    .line 933
    .local v10, "cookie":I
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    move-object v7, v0

    .line 935
    .local v7, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_2
    invoke-direct {v1, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 936
    invoke-direct {v1, v7, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 937
    invoke-direct {v1, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 941
    iget-wide v5, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v19, v9

    move/from16 v20, v10

    .end local v10    # "cookie":I
    .local v20, "cookie":I
    :try_start_3
    iget-wide v9, v4, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object/from16 v21, v15

    move-object v15, v7

    .end local v7    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .local v15, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    move-wide v7, v2

    move-object/from16 v3, v19

    move/from16 v2, v20

    .end local v20    # "cookie":I
    .local v2, "cookie":I
    move-object v14, v11

    move/from16 v11, p4

    move-object/from16 v22, v12

    move/from16 v12, p5

    move-object/from16 v23, v13

    move/from16 v13, p6

    :try_start_4
    invoke-static/range {v5 .. v13}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const-wide/16 v7, 0x0

    .line 944
    .local v7, "result":J
    move-wide v7, v5

    const/16 v0, 0x20

    shr-long/2addr v5, v0

    long-to-int v6, v5

    .line 945
    .end local v16    # "actualPos":I
    .local v6, "actualPos":I
    long-to-int v5, v7

    .line 946
    .end local v17    # "countedRows":I
    .local v5, "countedRows":I
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v9, v0

    .line 947
    .end local v18    # "filledRows":I
    .local v9, "filledRows":I
    :try_start_6
    invoke-virtual {v4, v6}, Lcom/alibaba/sqlcrypto/CursorWindow;->setStartPosition(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 954
    :try_start_7
    invoke-direct {v1, v15}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 960
    :try_start_8
    iget-object v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move/from16 v11, p4

    :try_start_9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v22

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v23

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v14, v21

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_0

    .line 960
    :cond_0
    move/from16 v11, p4

    .line 969
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v5

    .end local v2    # "cookie":I
    .end local v5    # "countedRows":I
    .end local v6    # "actualPos":I
    .end local v7    # "result":J
    .end local v9    # "filledRows":I
    .end local v15    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_0
    move-exception v0

    move/from16 v11, p4

    goto/16 :goto_4

    .line 960
    .restart local v2    # "cookie":I
    .restart local v5    # "countedRows":I
    .restart local v6    # "actualPos":I
    .restart local v9    # "filledRows":I
    :catchall_1
    move-exception v0

    move/from16 v11, p4

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    goto/16 :goto_3

    .line 956
    :catch_0
    move-exception v0

    move/from16 v11, p4

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 v18, v9

    goto/16 :goto_2

    .line 954
    .restart local v15    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_2
    move-exception v0

    move/from16 v11, p4

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move/from16 v17, v5

    move/from16 v16, v6

    move/from16 v18, v9

    goto :goto_1

    .end local v9    # "filledRows":I
    .restart local v18    # "filledRows":I
    :catchall_3
    move-exception v0

    move/from16 v11, p4

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move/from16 v17, v5

    move/from16 v16, v6

    goto :goto_1

    .end local v5    # "countedRows":I
    .end local v6    # "actualPos":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    :catchall_4
    move-exception v0

    move/from16 v11, p4

    move-object v7, v14

    move-object/from16 v14, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    goto :goto_1

    .end local v2    # "cookie":I
    .end local v15    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .local v7, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v20    # "cookie":I
    :catchall_5
    move-exception v0

    move-object/from16 v3, v19

    move/from16 v2, v20

    move-object/from16 v24, v15

    move-object v15, v7

    move-object v7, v11

    move v11, v14

    move-object/from16 v14, v24

    .end local v7    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .end local v20    # "cookie":I
    .restart local v2    # "cookie":I
    .restart local v15    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    goto :goto_1

    .end local v2    # "cookie":I
    .end local v15    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v7    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v10    # "cookie":I
    :catchall_6
    move-exception v0

    move-object v3, v9

    move v2, v10

    move-object/from16 v24, v15

    move-object v15, v7

    move-object v7, v11

    move v11, v14

    move-object/from16 v14, v24

    .end local v7    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .end local v10    # "cookie":I
    .restart local v2    # "cookie":I
    .restart local v15    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :goto_1
    :try_start_a
    invoke-direct {v1, v15}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v2    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Ljava/lang/Object;
    throw v0
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 956
    .end local v15    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v2    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Ljava/lang/Object;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 960
    .end local v2    # "cookie":I
    .restart local v10    # "cookie":I
    :catchall_7
    move-exception v0

    move-object v3, v9

    move v2, v10

    move-object v7, v11

    move v11, v14

    move-object v14, v15

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v9, v18

    .end local v10    # "cookie":I
    .restart local v2    # "cookie":I
    goto :goto_3

    .line 956
    .end local v2    # "cookie":I
    .restart local v10    # "cookie":I
    :catch_2
    move-exception v0

    move-object v3, v9

    move v2, v10

    move-object v7, v11

    move v11, v14

    move-object v14, v15

    .line 957
    .end local v10    # "cookie":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    :goto_2
    :try_start_b
    iget-object v5, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v5, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 958
    nop

    .end local v2    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Ljava/lang/Object;
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 960
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v2    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Ljava/lang/Object;
    :catchall_8
    move-exception v0

    move/from16 v6, v16

    move/from16 v5, v17

    move/from16 v9, v18

    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .restart local v5    # "countedRows":I
    .restart local v6    # "actualPos":I
    .restart local v9    # "filledRows":I
    :goto_3
    :try_start_c
    iget-object v8, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v8, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 961
    iget-object v8, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    :cond_1
    nop

    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Ljava/lang/Object;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 969
    .end local v2    # "cookie":I
    .end local v5    # "countedRows":I
    .end local v6    # "actualPos":I
    .end local v9    # "filledRows":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Ljava/lang/Object;
    :catchall_9
    move-exception v0

    goto :goto_4

    :catchall_a
    move-exception v0

    move v11, v14

    :goto_4
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0

    .line 922
    :cond_2
    move v11, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :cond_3
    move v11, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 860
    if-eqz p1, :cond_0

    .line 864
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLastInsertedRowId"

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 867
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 870
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 871
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 875
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 882
    :try_start_2
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 888
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v2

    .line 882
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 888
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 884
    :catch_0
    move-exception v1

    .line 885
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 886
    nop

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 888
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1

    .line 861
    .end local v0    # "cookie":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForLong(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 664
    if-eqz p1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLong"

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 670
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 672
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 673
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 674
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 678
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 684
    :try_start_2
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 690
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-wide v2

    .line 684
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 690
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 686
    :catch_0
    move-exception v1

    .line 687
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 688
    nop

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 690
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1

    .line 665
    .end local v0    # "cookie":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final executeForString(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 710
    if-eqz p1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForString"

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 716
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 718
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->throwIfStatementForbidden(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 719
    invoke-direct {p0, v1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->bindArguments(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 720
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 724
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :try_start_2
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 736
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    return-object v2

    .line 730
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 736
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 732
    :catch_0
    move-exception v1

    .line 733
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 734
    nop

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Ljava/lang/Object;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 736
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Ljava/lang/Object;
    :goto_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1

    .line 711
    .end local v0    # "cookie":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final finalize()V
    .locals 6

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPool:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 223
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getConnectionId()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method final isPreparedStatementInCache(Ljava/lang/String;)Z
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;

    .line 525
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isPrimaryConnection()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public final prepare(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V
    .locals 9
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;

    .line 569
    if-eqz p1, :cond_2

    .line 573
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    const-string/jumbo v2, "prepare"

    invoke-virtual {v0, v2, p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 575
    .local v0, "cookie":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 577
    .local v1, "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_1

    .line 578
    :try_start_1
    iget v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v2, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 579
    iget-boolean v2, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v2, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 581
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    move-result v2

    const/4 v3, 0x0

    .line 583
    .local v3, "columnCount":I
    move v3, v2

    if-nez v2, :cond_0

    .line 584
    sget-object v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v2, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    goto :goto_1

    .line 586
    :cond_0
    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 587
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 588
    iget-object v4, p2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v7, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v5, v6, v7, v8, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    .end local v2    # "i":I
    .end local v3    # "columnCount":I
    :catchall_0
    move-exception v2

    :try_start_2
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    throw v2

    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->releasePreparedStatement(Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 595
    nop

    .line 600
    .end local v1    # "statement":Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 601
    return-void

    .line 600
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 596
    :catch_0
    move-exception v1

    .line 597
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 598
    nop

    .end local v0    # "cookie":I
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 600
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    :goto_2
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mRecentOperations:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    throw v1

    .line 570
    .end local v0    # "cookie":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final reconfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V
    .locals 6
    .param p1, "configuration"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 477
    iget-object v1, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 478
    .local v1, "functionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 479
    iget-object v3, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;

    .line 480
    .local v3, "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 481
    iget-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->nativeRegisterCustomFunction(JLcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;)V

    .line 478
    .end local v3    # "function":Lcom/alibaba/sqlcrypto/sqlite/SQLiteCustomFunction;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    .end local v2    # "i":I
    :cond_1
    iget-boolean v2, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v3, v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 488
    .local v2, "foreignKeyModeChanged":Z
    :goto_1
    iget v3, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    xor-int/2addr v3, v5

    const/high16 v5, 0x20000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 490
    .local v0, "walModeChanged":Z
    :cond_3
    iget-object v3, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    .line 493
    .local v3, "localeChanged":Z
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v4, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;)V

    .line 496
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mPreparedStatementCache:Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v5, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 499
    if-eqz v2, :cond_4

    .line 500
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 504
    :cond_4
    if-eqz v0, :cond_5

    .line 505
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setWalModeFromConfiguration()V

    .line 509
    :cond_5
    if-eqz v3, :cond_6

    .line 510
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 512
    :cond_6
    return-void
.end method

.method final setOnlyAllowReadOnlyOperations(Z)V
    .locals 0
    .param p1, "readOnly"    # Z

    .line 518
    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 519
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SQLiteConnection: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConfiguration:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
