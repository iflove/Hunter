.class public abstract Lcom/alibaba/sqlcrypto/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 81
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 83
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 194
    iput v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 197
    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .locals 3

    .line 451
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    .line 454
    return-void

    .line 452
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    .line 155
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->onDeactivateOrClose()V

    .line 157
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 176
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 177
    .local v2, "result":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 179
    .local v1, "data":[C
    move-object v1, v0

    if-eqz v0, :cond_1

    array-length v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v3, v0, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    .line 180
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 184
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 185
    .end local v1    # "data":[C
    return-void

    .line 186
    :cond_2
    iput v3, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 188
    return-void
.end method

.method public deactivate()V
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->onDeactivateOrClose()V

    .line 129
    return-void
.end method

.method public fillWindow(ILcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "window"    # Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 237
    invoke-static {p0, p1, p2}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILcom/alibaba/sqlcrypto/CursorWindow;)V

    .line 238
    return-void
.end method

.method protected finalize()V
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 459
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 462
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 464
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .param p1, "column"    # I

    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6
    .param p1, "columnName"    # Ljava/lang/String;

    .line 285
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 286
    .local v1, "periodIndex":I
    move v1, v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 287
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requesting column name with table name -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cursor"

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 286
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v0, "columnNames":[Ljava/lang/String;
    move-object v0, v3

    array-length v3, v3

    .line 294
    .local v3, "length":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 295
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    return v4

    .line 294
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 305
    .end local v4    # "i":I
    :cond_2
    return v2
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .line 309
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 310
    .local v1, "index":I
    move v1, v0

    if-ltz v0, :cond_0

    .line 313
    return v1

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "column \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .line 317
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    monitor-exit v0

    return-object v1

    .line 400
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getPosition()I
    .locals 1

    .line 200
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public getType(I)I
    .locals 1
    .param p1, "column"    # I

    .line 103
    const/4 v0, 0x3

    return v0
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 439
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 278
    return v1

    .line 280
    :cond_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 271
    return v1

    .line 273
    :cond_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 1
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public final isFirst()Z
    .locals 1

    .line 261
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isLast()Z
    .locals 3

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    .line 266
    .local v0, "cnt":I
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .line 241
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .line 253
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 4
    .param p1, "position"    # I

    .line 205
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    .line 206
    .local v0, "count":I
    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 207
    iput v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 208
    return v1

    .line 212
    :cond_0
    const/4 v2, -0x1

    if-gez p1, :cond_1

    .line 213
    iput v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 214
    return v1

    .line 218
    :cond_1
    iget v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-ne p1, v3, :cond_2

    .line 219
    const/4 v1, 0x1

    return v1

    .line 222
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->onMove(II)Z

    move-result v3

    .line 223
    .local v1, "result":Z
    move v1, v3

    if-nez v3, :cond_3

    .line 224
    iput v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    goto :goto_0

    .line 226
    :cond_3
    iput p1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 227
    iget v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v3, v2, :cond_4

    .line 228
    invoke-virtual {p0, v3}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 232
    :cond_4
    :goto_0
    return v1
.end method

.method public final moveToPrevious()Z
    .locals 1

    .line 257
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 347
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 350
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    goto :goto_0

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v1, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 354
    :goto_0
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 355
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 357
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onDeactivateOrClose()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 138
    return-void
.end method

.method public onMove(II)Z
    .locals 1
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .line 170
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 321
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 322
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 332
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 333
    return-void
.end method

.method public requery()Z
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 143
    iput-boolean v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 146
    return v1
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 423
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 415
    if-nez p1, :cond_0

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mExtras:Landroid/os/Bundle;

    .line 416
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .line 370
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 372
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 373
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 376
    :cond_0
    new-instance v1, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;

    invoke-direct {v1, p0}, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;-><init>(Lcom/alibaba/sqlcrypto/AbstractCursor;)V

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 377
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 378
    iput-boolean v4, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    .line 379
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 326
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 329
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 336
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 337
    return-void
.end method
