.class public abstract Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.source "SQLiteProgram.java"


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

.field public static sSQLiteExecuteNotifyStackThresholdMS:J

.field public static sSQLiteExecuteNotifyThresholdMS:J


# instance fields
.field private final mBindArgs:[Ljava/lang/Object;

.field private final mColumnNames:[Ljava/lang/String;

.field private final mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private final mNumParameters:I

.field private final mReadOnly:Z

.field private final mSql:Ljava/lang/String;

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyThresholdMS:J

    .line 44
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyStackThresholdMS:J

    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;
    .param p4, "cancellationSignalForPrepare"    # Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    .line 65
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 66
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    .line 68
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 69
    .local v3, "n":I
    move v3, v1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_2

    const/4 v4, 0x6

    if-eq v1, v4, :cond_2

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    .line 80
    const/4 v1, 0x1

    if-ne v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 81
    .local v1, "assumeReadOnly":Z
    :goto_0
    new-instance v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;

    invoke-direct {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;-><init>()V

    .line 82
    .local v4, "info":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v5

    .line 83
    invoke-virtual {p1, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v6

    .line 82
    invoke-virtual {v5, v0, v6, p4, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILjava/lang/Object;Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;)V

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "ischeckChanges":Z
    :try_start_0
    const-string v5, "SELECT CHANGES()"

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v5

    .line 91
    goto :goto_1

    .line 89
    :catchall_0
    move-exception v5

    .line 92
    :goto_1
    if-eqz v0, :cond_1

    .line 93
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mReadOnly:Z

    goto :goto_2

    .line 95
    :cond_1
    iget-boolean v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->readOnly:Z

    iput-boolean v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 98
    :goto_2
    iget-object v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 99
    iget v5, v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;->numParameters:I

    iput v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    goto :goto_3

    .line 74
    .end local v0    # "ischeckChanges":Z
    .end local v1    # "assumeReadOnly":Z
    .end local v4    # "info":Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatementInfo;
    :cond_2
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mReadOnly:Z

    .line 75
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    .line 77
    nop

    .line 103
    :goto_3
    if-eqz p3, :cond_4

    array-length v0, p3

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt v0, v1, :cond_3

    goto :goto_4

    .line 104
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many bind arguments.  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arguments were provided but the statement needs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " arguments."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_4
    :goto_4
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    if-eqz v0, :cond_5

    .line 110
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 111
    if-eqz p3, :cond_6

    .line 112
    array-length v1, p3

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5

    .line 115
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    .line 118
    :cond_6
    :goto_5
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

    if-eqz v0, :cond_7

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    .line 121
    :cond_7
    return-void
.end method

.method private bind(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 251
    if-lez p1, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    if-gt p1, v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 257
    return-void

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot bind argument at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because the index is out of range.  The statement has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mNumParameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " parameters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getStackTrace()Ljava/lang/String;
    .locals 5

    .line 288
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 290
    .local v2, "stackElements":[Ljava/lang/StackTraceElement;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 291
    const-string v0, ""

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 296
    aget-object v4, v2, v3

    .line 297
    .local v1, "stackTraceElement":Ljava/lang/StackTraceElement;
    move-object v1, v4

    if-eqz v4, :cond_1

    .line 300
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .end local v1    # "stackTraceElement":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bindAllArgsAsStrings([Ljava/lang/String;)V
    .locals 2
    .param p1, "bindArgs"    # [Ljava/lang/String;

    .line 238
    if-eqz p1, :cond_0

    .line 239
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    if-eqz v0, :cond_0

    .line 240
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 239
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public bindBlob(I[B)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .line 217
    if-eqz p2, :cond_0

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 221
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the bind value at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindDouble(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 192
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method public bindLong(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 181
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 182
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 171
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 203
    if-eqz p2, :cond_0

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bind(ILjava/lang/Object;)V

    .line 207
    return-void

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "the bind value at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearBindings()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 228
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method public close()V
    .locals 12

    .line 261
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->close()V

    .line 264
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

    if-nez v0, :cond_0

    .line 265
    return-void

    .line 267
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 268
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 271
    .local v2, "duration":J
    move-wide v2, v0

    sget-wide v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyThresholdMS:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    .line 272
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "dbPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 274
    .local v1, "dbName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 275
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x0

    .line 276
    .local v5, "index":I
    move v5, v4

    if-ltz v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ge v5, v4, :cond_1

    .line 277
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_1
    move-object v1, v0

    .line 282
    .end local v5    # "index":I
    :cond_2
    :goto_0
    sget-object v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

    iget-wide v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mStartTime:J

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->getSql()Ljava/lang/String;

    move-result-object v8

    sget-wide v9, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->sSQLiteExecuteNotifyStackThresholdMS:J

    cmp-long v7, v2, v9

    if-lez v7, :cond_3

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->getStackTrace()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    move-object v11, v7

    move-object v7, v1

    move-wide v9, v2

    invoke-interface/range {v4 .. v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;->notify(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 284
    .end local v0    # "dbPath":Ljava/lang/String;
    .end local v1    # "dbName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method final getBindArgs()[Ljava/lang/Object;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mBindArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method final getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method protected final getConnectionFlags()I
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mReadOnly:Z

    invoke-virtual {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v0

    return v0
.end method

.method final getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected final getSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getThreadSession()Lcom/alibaba/sqlcrypto/sqlite/SQLiteSession;

    move-result-object v0

    return-object v0
.end method

.method final getSql()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public final getUniqueId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 160
    const/4 v0, -0x1

    return v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .line 247
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->clearBindings()V

    .line 248
    return-void
.end method

.method protected final onCorruption()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 152
    return-void
.end method
