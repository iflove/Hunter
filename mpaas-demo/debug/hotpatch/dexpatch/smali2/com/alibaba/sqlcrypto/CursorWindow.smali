.class public Lcom/alibaba/sqlcrypto/CursorWindow;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.source "CursorWindow.java"


# static fields
.field private static final STATS_TAG:Ljava/lang/String; = "CursorWindowStats"

.field private static final sCursorWindowSize:I = 0x200000

.field private static final sWindowToPidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, "<unnamed>"

    :goto_0
    iput-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mName:Ljava/lang/String;

    .line 111
    const/high16 v1, 0x200000

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    .line 112
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 118
    return-void

    .line 113
    :cond_1
    new-instance v0, Lcom/alibaba/sqlcrypto/CursorWindowAllocationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cursor window allocation of 2048 kb failed. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "localWindow"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;-><init>(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private dispose()V
    .locals 5

    .line 166
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->recordClosingOfWindow(J)V

    .line 168
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeDispose(J)V

    .line 169
    iput-wide v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    .line 171
    :cond_0
    return-void
.end method

.method private static native nativeAllocRow(J)Z
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFreeLastRow(J)V
.end method

.method private static native nativeGetBlob(JII)[B
.end method

.method private static native nativeGetDouble(JII)D
.end method

.method private static native nativeGetLong(JII)J
.end method

.method private static native nativeGetName(J)Ljava/lang/String;
.end method

.method private static native nativeGetNumRows(J)I
.end method

.method private static native nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native nativeGetType(JII)I
.end method

.method private static native nativePutBlob(J[BII)Z
.end method

.method private static native nativePutDouble(JDII)Z
.end method

.method private static native nativePutLong(JJII)Z
.end method

.method private static native nativePutNull(JII)Z
.end method

.method private static native nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(JI)Z
.end method

.method private printStats()Ljava/lang/String;
    .locals 10

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 752
    nop

    .line 753
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 754
    sget-object v3, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 755
    :try_start_0
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 756
    if-nez v4, :cond_0

    .line 758
    const-string v0, ""

    monitor-exit v3

    return-object v0

    .line 760
    :cond_0
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 761
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 762
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 763
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 764
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 765
    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 767
    goto :goto_0

    .line 768
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 770
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 771
    const-string v7, " (# cursors opened by "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 773
    if-ne v7, v1, :cond_2

    .line 774
    const-string/jumbo v8, "this proc="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 776
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pid "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 778
    :goto_2
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 779
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    add-int/2addr v6, v7

    .line 770
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 783
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x3d4

    if-le v1, v2, :cond_4

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# Open Cursors="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 768
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private recordClosingOfWindow(J)V
    .locals 2
    .param p1, "window"    # J

    .line 740
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 741
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 743
    monitor-exit v0

    return-void

    .line 745
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private recordNewWindow(IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "window"    # J

    .line 731
    sget-object v0, Lcom/alibaba/sqlcrypto/CursorWindow;->sWindowToPidMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 732
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v1, "CursorWindowStats"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    const-string v1, "CursorWindowStats"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Created a new Cursor. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->printStats()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public allocRow()Z
    .locals 2

    .line 265
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 267
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeAllocRow(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 192
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 193
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeClear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "buffer"    # Landroid/database/CharArrayBuffer;

    .line 481
    if-eqz p3, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 486
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 489
    return-void

    .line 488
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharArrayBuffer should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 156
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeLastRow()V
    .locals 2

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 279
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getBlob(II)[B
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 407
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 409
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetBlob(JII)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getDouble(II)D
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 547
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 549
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetDouble(JII)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getFloat(II)F
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 600
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getDouble(II)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInt(II)I
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getLong(II)J
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 515
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 517
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetLong(JII)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 233
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetNumRows(J)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getShort(II)S
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 568
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getLong(II)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 442
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 444
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetString(JII)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public getType(II)I
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 377
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 379
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeGetType(JII)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public isBlob(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 312
    .local v2, "type":I
    move v2, v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFloat(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLong(II)Z
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNull(II)Z
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isString(II)Z
    .locals 4
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->getType(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 356
    .local v2, "type":I
    move v2, v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .line 724
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->dispose()V

    .line 725
    return-void
.end method

.method public putBlob([BII)Z
    .locals 3
    .param p1, "value"    # [B
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 612
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 614
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutBlob(J[BII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putDouble(DII)Z
    .locals 6
    .param p1, "value"    # D
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 664
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 666
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutDouble(JDII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 668
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putLong(JII)Z
    .locals 6
    .param p1, "value"    # J
    .param p3, "row"    # I
    .param p4, "column"    # I

    .line 646
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 648
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v4, p3, v2

    move-wide v2, p1

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutLong(JJII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putNull(II)Z
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I

    .line 680
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 682
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2, p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutNull(JII)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "column"    # I

    .line 629
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 631
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    iget v2, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    sub-int v2, p2, v2

    invoke-static {v0, v1, p1, v2, p3}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativePutString(JLjava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setNumColumns(I)Z
    .locals 2
    .param p1, "columnNum"    # I

    .line 251
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 253
    :try_start_0
    iget-wide v0, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    invoke-static {v0, v1, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->nativeSetNumColumns(JI)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    throw v0
.end method

.method public setStartPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .line 222
    iput p1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mStartPos:I

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/sqlcrypto/CursorWindow;->mWindowPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
