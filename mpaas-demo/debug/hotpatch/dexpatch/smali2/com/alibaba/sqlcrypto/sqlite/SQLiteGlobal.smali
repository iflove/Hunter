.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;
.super Ljava/lang/Object;
.source "SQLiteGlobal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteGlobal"

.field private static sDefaultPageSize:J

.field private static sFtsTaskCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;

.field private static sSqLiteLogCallback:Lcom/alibaba/sqlcrypto/SQLiteLogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sFtsTaskCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method public static ftsFtsTaskCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "tblName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/String;
    .param p3, "cost"    # I

    .line 198
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string v1, "SQLiteGlobal#ftsTaskCallBack:%s,%s\n%s\n%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sqlite"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sFtsTaskCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sFtsTaskCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;

    .line 203
    invoke-interface {v1, p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;->onFtsTaskCallBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    goto :goto_0

    .line 205
    :cond_1
    return-void
.end method

.method public static getDefaultJournalMode()Ljava/lang/String;
    .locals 1

    .line 111
    const-string v0, "PERSIST"

    return-object v0
.end method

.method public static getDefaultPageSize()J
    .locals 6

    .line 89
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-wide v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 91
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 92
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v1

    sput-wide v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/data"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    sput-wide v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    .line 99
    :cond_1
    :goto_0
    sget-wide v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sDefaultPageSize:J

    monitor-exit v0

    return-wide v1

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getDefaultSyncMode()Ljava/lang/String;
    .locals 1

    .line 131
    const-string v0, "FULL"

    return-object v0
.end method

.method public static getJournalSizeLimit()I
    .locals 1

    .line 121
    const/high16 v0, 0x100000

    return v0
.end method

.method public static getSqliteVersion()Ljava/lang/String;
    .locals 1

    .line 167
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeGetSqliteVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWALAutoCheckpoint()I
    .locals 1

    .line 152
    const/16 v0, 0x3e8

    return v0
.end method

.method public static getWALConnectionPoolSize()I
    .locals 1

    .line 163
    const/4 v0, 0x4

    return v0
.end method

.method public static getWALSyncMode()Ljava/lang/String;
    .locals 1

    .line 141
    const-string v0, "FULL"

    return-object v0
.end method

.method private static native nativeGetSqliteVersion()Ljava/lang/String;
.end method

.method private static native nativeReleaseMemory()I
.end method

.method private static native nativeSetFTSTaskCallback()V
.end method

.method private static native nativeSetFtsPinyinTokenVersion()V
.end method

.method private static native nativeSetSqliteLogSwitch(Z)V
.end method

.method public static printSqliteLog(ILjava/lang/String;)V
    .locals 3
    .param p0, "iErrCode"    # I
    .param p1, "zMsg"    # Ljava/lang/String;

    .line 172
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sSqLiteLogCallback:Lcom/alibaba/sqlcrypto/SQLiteLogCallback;

    if-nez v0, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Sqlite] code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/sqlcrypto/SQLiteLogCallback;->log(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static registerFtsTaskCallBack(Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;)V
    .locals 1
    .param p0, "callBack"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;

    .line 208
    if-nez p0, :cond_0

    .line 209
    return-void

    .line 211
    :cond_0
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sFtsTaskCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public static releaseMemory()I
    .locals 1

    .line 82
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeReleaseMemory()I

    move-result v0

    return v0
.end method

.method public static setFtsPinyinTokenVersion()Z
    .locals 1

    .line 190
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isDatabaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeSetFtsPinyinTokenVersion()V

    .line 192
    const/4 v0, 0x1

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setFtsTaskCallback()Z
    .locals 1

    .line 220
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isDatabaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeSetFTSTaskCallback()V

    .line 222
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setSqLiteLogCallback(Lcom/alibaba/sqlcrypto/SQLiteLogCallback;Z)V
    .locals 1
    .param p0, "sqLiteLogCallback"    # Lcom/alibaba/sqlcrypto/SQLiteLogCallback;
    .param p1, "isPrint"    # Z

    .line 180
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isDatabaseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    sput-object p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sSqLiteLogCallback:Lcom/alibaba/sqlcrypto/SQLiteLogCallback;

    .line 182
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->nativeSetSqliteLogSwitch(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public static unregisterFtsTaskCallBack(Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;)V
    .locals 1
    .param p0, "callBack"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal$FtsTaskCallBack;

    .line 216
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->sFtsTaskCallBacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 217
    return-void
.end method
