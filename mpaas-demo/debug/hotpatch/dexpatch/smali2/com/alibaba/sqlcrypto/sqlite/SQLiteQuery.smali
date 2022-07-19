.class public final Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQuery"


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    return-void
.end method


# virtual methods
.method final fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;IIZ)I
    .locals 9
    .param p1, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;
    .param p2, "startPos"    # I
    .param p3, "requiredPos"    # I
    .param p4, "countAllRows"    # Z

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->acquireReference()V

    .line 66
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getBindArgs()[Ljava/lang/Object;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getConnectionFlags()I

    move-result v7

    const/4 v8, 0x0

    .line 69
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/alibaba/sqlcrypto/CursorWindow;IIZILjava/lang/Object;)I

    move-result v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    .local v0, "numRows":I
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    return v0

    .line 80
    .end local v0    # "numRows":I
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v1, "SQLiteQuery"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    nop

    .end local p1    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    throw v0

    .line 73
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local p1    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catch_1
    move-exception v0

    .line 74
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->onCorruption()V

    .line 75
    nop

    .end local p1    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    .restart local p1    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .end local p1    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .end local p2    # "startPos":I
    .end local p3    # "requiredPos":I
    .end local p4    # "countAllRows":Z
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 83
    .restart local p1    # "window":Lcom/alibaba/sqlcrypto/CursorWindow;
    .restart local p2    # "startPos":I
    .restart local p3    # "requiredPos":I
    .restart local p4    # "countAllRows":Z
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SQLiteQuery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
