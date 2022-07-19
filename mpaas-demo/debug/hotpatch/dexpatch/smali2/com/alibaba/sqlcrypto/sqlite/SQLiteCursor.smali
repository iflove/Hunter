.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;
.super Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SQLiteCursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorWindowCapacity:I

.field private final mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

.field private final mEditTable:Ljava/lang/String;

.field private final mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

.field private final mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)V
    .locals 2
    .param p1, "driver"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;
    .param p2, "editTable"    # Ljava/lang/String;
    .param p3, "query"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    .line 93
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 94
    if-eqz p3, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 103
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    .line 104
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 106
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    .line 108
    invoke-virtual {p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 109
    invoke-static {v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->findRowIdColumnIndex([Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    .line 110
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)V
    .locals 0
    .param p1, "db"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .param p2, "driver"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;
    .param p3, "editTable"    # Ljava/lang/String;
    .param p4, "query"    # Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)V

    .line 81
    return-void
.end method

.method private fillWindow(I)V
    .locals 5
    .param p1, "requiredPos"    # I

    .line 140
    const-string v0, "SQLiteCursor"

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    .line 143
    :try_start_0
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 144
    invoke-static {p1, v3}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    move-result v1

    .line 145
    .local v1, "startPos":I
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, p1, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;IIZ)I

    move-result v2

    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 146
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v2

    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    .line 147
    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "received count(*) from native_fill_window: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v1    # "startPos":I
    :cond_0
    return-void

    .line 151
    :cond_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorWindowCapacity:I

    invoke-static {p1, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->cursorPickFillWindowStartPosition(II)I

    move-result v0

    .line 153
    .local v0, "startPos":I
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;IIZ)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    nop

    .end local v0    # "startPos":I
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 160
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->closeWindow()V

    .line 161
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 207
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->close()V

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->close()V

    .line 210
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 211
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deactivate()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->deactivate()V

    .line 202
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 203
    return-void
.end method

.method protected finalize()V
    .locals 1

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->finalize()V

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->finalize()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 170
    array-length v1, v0

    .line 171
    new-instance v2, Ljava/util/HashMap;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    .line 172
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 173
    aget-object v4, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 179
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 180
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 181
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requesting column name with table name -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLiteCursor"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 187
    if-eqz p1, :cond_3

    .line 188
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 190
    :cond_3
    return v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .line 133
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 136
    :cond_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onMove(II)Z
    .locals 2
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 123
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 124
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 125
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 128
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requery()Z
    .locals 5

    .line 216
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    return v1

    .line 220
    :cond_0
    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    monitor-exit p0

    return v1

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    .line 228
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPos:I

    .line 229
    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 231
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 232
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :try_start_1
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->requery()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 236
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "SQLiteCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requery() failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    return v1

    .line 232
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public setWindow(Lcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 1
    .param p1, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 245
    invoke-super {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->setWindow(Lcom/alibaba/sqlcrypto/CursorWindow;)V

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 247
    return-void
.end method
