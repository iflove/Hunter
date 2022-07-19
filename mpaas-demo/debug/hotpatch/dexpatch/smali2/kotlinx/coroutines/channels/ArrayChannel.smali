.class public Lkotlinx/coroutines/channels/ArrayChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "ArrayChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrayChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n+ 2 Concurrent.kt\nkotlinx/coroutines/internal/ConcurrentKt\n*L\n1#1,262:1\n17#2:263\n17#2:264\n17#2:265\n17#2:266\n17#2:267\n*E\n*S KotlinDebug\n*F\n+ 1 ArrayChannel.kt\nkotlinx/coroutines/channels/ArrayChannel\n*L\n51#1:263\n88#1:264\n151#1:265\n187#1:266\n246#1:267\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u001b\u001a\u00020\u001cH\u0014J\u0010\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u0004H\u0002J\u0015\u0010\u001f\u001a\u00020\u00082\u0006\u0010 \u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010!J!\u0010\"\u001a\u00020\u00082\u0006\u0010 \u001a\u00028\u00002\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$H\u0014\u00a2\u0006\u0002\u0010%J\n\u0010&\u001a\u0004\u0018\u00010\u0008H\u0014J\u0016\u0010\'\u001a\u0004\u0018\u00010\u00082\n\u0010#\u001a\u0006\u0012\u0002\u0008\u00030$H\u0014R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0013R\u0014\u0010\u0014\u001a\u00020\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00128DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0013R\u0012\u0010\u0017\u001a\u00060\u0018j\u0002`\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ArrayChannel;",
        "E",
        "Lkotlinx/coroutines/channels/AbstractChannel;",
        "capacity",
        "",
        "(I)V",
        "buffer",
        "",
        "",
        "[Ljava/lang/Object;",
        "bufferDebugString",
        "",
        "getBufferDebugString",
        "()Ljava/lang/String;",
        "getCapacity",
        "()I",
        "head",
        "isBufferAlwaysEmpty",
        "",
        "()Z",
        "isBufferAlwaysFull",
        "isBufferEmpty",
        "isBufferFull",
        "lock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Lkotlinx/coroutines/internal/ReentrantLock;",
        "size",
        "cleanupSendQueueOnCancel",
        "",
        "ensureCapacity",
        "currentSize",
        "offerInternal",
        "element",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "offerSelectInternal",
        "select",
        "Lkotlinx/coroutines/selects/SelectInstance;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;",
        "pollInternal",
        "pollSelectInternal",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private buffer:[Ljava/lang/Object;

.field private final capacity:I

.field private head:I

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile size:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .line 22
    nop

    .line 27
    invoke-direct {p0}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    .line 29
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 30
    nop

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    .local v0, "$i$a$-require-ArrayChannel$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ArrayChannel capacity must be at least 1, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was specified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-ArrayChannel$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final ensureCapacity(I)V
    .locals 7
    .param p1, "currentSize"    # I

    .line 135
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    .line 136
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 137
    .local v0, "newSize":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 138
    .local v1, "newBuffer":[Ljava/lang/Object;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 139
    .local v3, "i":I
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v5, v3

    array-length v6, v4

    rem-int/2addr v5, v6

    aget-object v4, v4, v5

    aput-object v4, v1, v3

    .line 138
    nop

    .end local v3    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iput-object v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    .line 142
    iput v2, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 144
    .end local v0    # "newSize":I
    .end local v1    # "newBuffer":[Ljava/lang/Object;
    :cond_1
    return-void
.end method


# virtual methods
.method protected cleanupSendQueueOnCancel()V
    .locals 12

    .line 246
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v0, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v1, 0x0

    .line 267
    .local v1, "$i$f$withLock":I
    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 247
    .local v3, "$i$a$-withLock-ArrayChannel$cleanupSendQueueOnCancel$1":I
    :try_start_0
    iget v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    move v7, v6

    .local v7, "it":I
    const/4 v8, 0x0

    .line 248
    .local v8, "$i$a$-repeat-ArrayChannel$cleanupSendQueueOnCancel$1$1":I
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 249
    iget v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    rem-int/2addr v9, v10

    iput v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 250
    .end local v7    # "it":I
    .end local v8    # "$i$a$-repeat-ArrayChannel$cleanupSendQueueOnCancel$1$1":I
    nop

    .line 247
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 251
    :cond_0
    iput v5, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 252
    .end local v3    # "$i$a$-withLock-ArrayChannel$cleanupSendQueueOnCancel$1":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 267
    .end local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v1    # "$i$f$withLock":I
    nop

    .line 254
    invoke-super {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->cleanupSendQueueOnCancel()V

    .line 255
    return-void

    .line 252
    .restart local v0    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v1    # "$i$f$withLock":I
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method protected getBufferDebugString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(buffer:capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCapacity()I
    .locals 1

    .line 26
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    return v0
.end method

.method protected final isBufferAlwaysEmpty()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferAlwaysFull()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected final isBufferEmpty()Z
    .locals 1

    .line 43
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final isBufferFull()Z
    .locals 2

    .line 45
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    iget v1, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 50
    .local v1, "receive":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 51
    .local v2, "token":Ljava/lang/Object;
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v3, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v4, 0x0

    .line 263
    .local v4, "$i$f$withLock":I
    move-object v5, v3

    check-cast v5, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v6, 0x0

    .line 52
    .local v6, "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    :try_start_0
    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 53
    .local v7, "size":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    move-object v0, v8

    .local v0, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v8, 0x0

    .end local v0    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v7    # "size":I
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 54
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v7    # "size":I
    :cond_0
    :try_start_1
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ge v7, v8, :cond_8

    .line 56
    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 58
    if-nez v7, :cond_7

    .line 59
    :goto_0
    nop

    .line 60
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->takeFirstReceiveOrPeekClosed()Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v8

    if-eqz v8, :cond_7

    move-object v1, v8

    .line 61
    nop

    instance-of v8, v1, Lkotlinx/coroutines/channels/Closed;

    if-eqz v8, :cond_2

    .line 62
    iput v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 63
    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v7    # "size":I
    :cond_1
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v1

    .line 65
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v7    # "size":I
    :cond_2
    if-nez v1, :cond_3

    :try_start_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-interface {v1, p1, v0}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->tryResumeReceive(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v8

    .line 66
    if-eqz v2, :cond_6

    .line 67
    iput v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 68
    nop

    .line 77
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v7    # "size":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 263
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    nop

    .line 80
    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 81
    if-nez v1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 59
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v7    # "size":I
    :cond_6
    goto :goto_0

    .line 72
    :cond_7
    :try_start_3
    invoke-direct {p0, v7}, Lkotlinx/coroutines/channels/ArrayChannel;->ensureCapacity(I)V

    .line 73
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v8, v7

    array-length v9, v0

    rem-int/2addr v8, v9

    aput-object p1, v0, v8

    .line 74
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v7    # "size":I
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 77
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .restart local v7    # "size":I
    :cond_8
    :try_start_4
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerInternal$1":I
    .end local v7    # "size":I
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected offerSelectInternal(Ljava/lang/Object;Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 11
    .param p1, "element"    # Ljava/lang/Object;
    .param p2, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    .line 87
    .local v1, "receive":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 88
    .local v2, "token":Ljava/lang/Object;
    iget-object v3, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v3, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v4, 0x0

    .line 264
    .local v4, "$i$f$withLock":I
    move-object v5, v3

    check-cast v5, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v6, 0x0

    .line 89
    .local v6, "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    :try_start_0
    iget v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 90
    .local v7, "size":I
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    move-object v0, v8

    .local v0, "it":Lkotlinx/coroutines/channels/Closed;
    const/4 v8, 0x0

    .end local v0    # "it":Lkotlinx/coroutines/channels/Closed;
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v7    # "size":I
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 91
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v7    # "size":I
    :cond_0
    :try_start_1
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ge v7, v8, :cond_d

    .line 93
    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 95
    if-nez v7, :cond_b

    .line 96
    nop

    .line 97
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/ArrayChannel;->describeTryOffer(Ljava/lang/Object;)Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;

    move-result-object v8

    .line 98
    .local v8, "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {p2, v9}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v9

    .line 99
    .local v9, "failure":Ljava/lang/Object;
    nop

    .line 100
    if-nez v9, :cond_7

    .line 101
    iput v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 102
    invoke-virtual {v8}, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-object v1, v0

    .line 103
    iget-object v0, v8, Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;->resumeToken:Ljava/lang/Object;

    move-object v2, v0

    .line 104
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .local v0, "$i$a$-assert-ArrayChannel$offerSelectInternal$1$2":I
    if-eqz v2, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .end local v0    # "$i$a$-assert-ArrayChannel$offerSelectInternal$1$2":I
    :goto_0
    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    .end local v1    # "receive":Ljava/lang/Object;
    .end local v2    # "token":Ljava/lang/Object;
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local p1    # "element":Ljava/lang/Object;
    .end local p2    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    throw v0

    .line 105
    .restart local v1    # "receive":Ljava/lang/Object;
    .restart local v2    # "token":Ljava/lang/Object;
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local p1    # "element":Ljava/lang/Object;
    .restart local p2    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    :cond_3
    :goto_1
    nop

    .line 126
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v7    # "size":I
    .end local v8    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .end local v9    # "failure":Ljava/lang/Object;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 264
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    nop

    .line 129
    if-nez v1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->completeResumeReceive(Ljava/lang/Object;)V

    .line 130
    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveOrClosed;->getOfferResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 107
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v7    # "size":I
    .restart local v8    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .restart local v9    # "failure":Ljava/lang/Object;
    :cond_7
    :try_start_2
    sget-object v10, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;

    if-ne v9, v10, :cond_8

    goto :goto_3

    .line 108
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v0

    if-eq v9, v0, :cond_a

    instance-of v0, v9, Lkotlinx/coroutines/channels/Closed;

    if-eqz v0, :cond_9

    goto :goto_2

    .line 112
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v10, Ljava/lang/Throwable;

    .end local v1    # "receive":Ljava/lang/Object;
    .end local v2    # "token":Ljava/lang/Object;
    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local p1    # "element":Ljava/lang/Object;
    .end local p2    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    throw v10

    .line 109
    .restart local v1    # "receive":Ljava/lang/Object;
    .restart local v2    # "token":Ljava/lang/Object;
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local p1    # "element":Ljava/lang/Object;
    .restart local p2    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    :cond_a
    :goto_2
    iput v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    nop

    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v7    # "size":I
    .end local v8    # "offerOp":Lkotlinx/coroutines/channels/AbstractSendChannel$TryOfferDesc;
    .end local v9    # "failure":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v9

    .line 117
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v7    # "size":I
    :cond_b
    :goto_3
    :try_start_3
    invoke-interface {p2, v0}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 118
    iput v7, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 119
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v7    # "size":I
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 121
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v7    # "size":I
    :cond_c
    :try_start_4
    invoke-direct {p0, v7}, Lkotlinx/coroutines/channels/ArrayChannel;->ensureCapacity(I)V

    .line 122
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v8, v7

    array-length v9, v0

    rem-int/2addr v8, v9

    aput-object p1, v0, v8

    .line 123
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v7    # "size":I
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 126
    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    .restart local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .restart local v7    # "size":I
    :cond_d
    :try_start_5
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v4    # "$i$f$withLock":I
    .end local v6    # "$i$a$-withLock-ArrayChannel$offerSelectInternal$1":I
    .end local v7    # "size":I
    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .restart local v3    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v4    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected pollInternal()Ljava/lang/Object;
    .locals 12

    .line 148
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/Send;

    .line 149
    .local v1, "send":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 150
    .local v2, "token":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 151
    .local v3, "result":Ljava/lang/Object;
    iget-object v4, p0, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v4, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v5, 0x0

    .line 265
    .local v5, "$i$f$withLock":I
    move-object v6, v4

    check-cast v6, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v7, 0x0

    .line 152
    .local v7, "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    :try_start_0
    iget v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 153
    .local v8, "size":I
    if-nez v8, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    .end local v7    # "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    .end local v8    # "size":I
    :goto_0
    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 155
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    .restart local v7    # "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    .restart local v8    # "size":I
    :cond_1
    :try_start_1
    iget-object v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v11, v9, v10

    move-object v3, v11

    .line 156
    aput-object v0, v9, v10

    .line 157
    add-int/lit8 v9, v8, -0x1

    iput v9, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 159
    sget-object v9, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    .line 160
    .local v9, "replacement":Ljava/lang/Object;
    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    if-ne v8, v10, :cond_5

    .line 161
    :goto_1
    nop

    .line 162
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/ArrayChannel;->takeFirstSendOrPeekClosed()Lkotlinx/coroutines/channels/Send;

    move-result-object v10

    if-eqz v10, :cond_5

    move-object v1, v10

    .line 163
    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-virtual {v1, v0}, Lkotlinx/coroutines/channels/Send;->tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    .line 164
    if-eqz v2, :cond_4

    .line 165
    if-nez v1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .line 166
    goto :goto_2

    .line 161
    :cond_4
    goto :goto_1

    .line 170
    :cond_5
    :goto_2
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v9, v0, :cond_6

    instance-of v0, v9, Lkotlinx/coroutines/channels/Closed;

    if-nez v0, :cond_6

    .line 171
    iput v8, p0, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 172
    iget-object v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v10, v8

    array-length v11, v0

    rem-int/2addr v10, v11

    aput-object v9, v0, v10

    .line 174
    :cond_6
    iget v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/lit8 v0, v0, 0x1

    iget-object v10, p0, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v10, v10

    rem-int/2addr v0, v10

    iput v0, p0, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 175
    .end local v8    # "size":I
    .end local v9    # "replacement":Ljava/lang/Object;
    nop

    .end local v7    # "$i$a$-withLock-ArrayChannel$pollInternal$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 265
    .end local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "$i$f$withLock":I
    nop

    .line 177
    if-eqz v2, :cond_8

    .line 178
    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/channels/Send;->completeResumeSend(Ljava/lang/Object;)V

    .line 179
    :cond_8
    return-object v3

    .line 175
    .restart local v4    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected pollSelectInternal(Lkotlinx/coroutines/selects/SelectInstance;)Ljava/lang/Object;
    .locals 17
    .param p1, "select"    # Lkotlinx/coroutines/selects/SelectInstance;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "select"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/Send;

    .line 185
    .local v3, "send":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 186
    .local v4, "token":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 187
    .local v5, "result":Ljava/lang/Object;
    iget-object v6, v1, Lkotlinx/coroutines/channels/ArrayChannel;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .local v6, "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    const/4 v7, 0x0

    .line 266
    .local v7, "$i$f$withLock":I
    move-object v8, v6

    check-cast v8, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v9, 0x0

    .line 188
    .local v9, "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    :try_start_0
    iget v10, v1, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 189
    .local v10, "size":I
    if-nez v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayChannel;->getClosedForSend()Lkotlinx/coroutines/channels/Closed;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "$i$f$withLock":I
    .end local v9    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .end local v10    # "size":I
    :goto_0
    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 191
    .restart local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v7    # "$i$f$withLock":I
    .restart local v9    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .restart local v10    # "size":I
    :cond_1
    :try_start_1
    iget-object v11, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v12, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aget-object v13, v11, v12

    move-object v5, v13

    .line 192
    aput-object v0, v11, v12

    .line 193
    add-int/lit8 v11, v10, -0x1

    iput v11, v1, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 195
    sget-object v11, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    .line 196
    .local v11, "replacement":Ljava/lang/Object;
    iget v12, v1, Lkotlinx/coroutines/channels/ArrayChannel;->capacity:I

    const/4 v13, 0x1

    if-ne v10, v12, :cond_a

    .line 197
    nop

    .line 198
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/channels/ArrayChannel;->describeTryPoll()Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;

    move-result-object v12

    .line 199
    .local v12, "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    move-object v14, v12

    check-cast v14, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {v2, v14}, Lkotlinx/coroutines/selects/SelectInstance;->performAtomicTrySelect(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v14

    .line 200
    .local v14, "failure":Ljava/lang/Object;
    nop

    .line 201
    if-nez v14, :cond_6

    .line 202
    invoke-virtual {v12}, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->getResult()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lkotlinx/coroutines/channels/Send;

    move-object v3, v15

    .line 203
    iget-object v15, v12, Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;->resumeToken:Ljava/lang/Object;

    move-object v4, v15

    .line 204
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x0

    .local v15, "$i$a$-assert-ArrayChannel$pollSelectInternal$1$1":I
    if-eqz v4, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .end local v15    # "$i$a$-assert-ArrayChannel$pollSelectInternal$1$1":I
    :goto_1
    if-eqz v16, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    .end local v3    # "send":Ljava/lang/Object;
    .end local v4    # "token":Ljava/lang/Object;
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "$i$f$withLock":I
    .end local p1    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    throw v0

    .line 205
    .restart local v3    # "send":Ljava/lang/Object;
    .restart local v4    # "token":Ljava/lang/Object;
    .restart local v5    # "result":Ljava/lang/Object;
    .restart local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v7    # "$i$f$withLock":I
    .restart local p1    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {v3}, Lkotlinx/coroutines/channels/Send;->getPollResult()Ljava/lang/Object;

    move-result-object v15

    move-object v11, v15

    .line 206
    goto :goto_3

    .line 208
    :cond_6
    sget-object v15, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-ne v14, v15, :cond_7

    goto :goto_3

    .line 209
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v15

    if-ne v14, v15, :cond_8

    .line 210
    iput v10, v1, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 211
    iget-object v0, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v13, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v5, v0, v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    nop

    .end local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "$i$f$withLock":I
    .end local v9    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .end local v10    # "size":I
    .end local v11    # "replacement":Ljava/lang/Object;
    .end local v12    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .end local v14    # "failure":Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v14

    .line 214
    .restart local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v7    # "$i$f$withLock":I
    .restart local v9    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .restart local v10    # "size":I
    .restart local v11    # "replacement":Ljava/lang/Object;
    .restart local v12    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .restart local v14    # "failure":Ljava/lang/Object;
    :cond_8
    :try_start_2
    instance-of v15, v14, Lkotlinx/coroutines/channels/Closed;

    if-eqz v15, :cond_9

    .line 215
    move-object v15, v14

    check-cast v15, Lkotlinx/coroutines/channels/Send;

    move-object v3, v15

    .line 216
    move-object v15, v14

    check-cast v15, Lkotlinx/coroutines/channels/Closed;

    invoke-virtual {v15, v0}, Lkotlinx/coroutines/channels/Closed;->tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v4, v15

    .line 217
    move-object v11, v14

    .line 218
    goto :goto_3

    .line 220
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "performAtomicTrySelect(describeTryOffer) returned "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Throwable;

    .end local v3    # "send":Ljava/lang/Object;
    .end local v4    # "token":Ljava/lang/Object;
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "$i$f$withLock":I
    .end local p1    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    throw v13

    .line 224
    .end local v12    # "pollOp":Lkotlinx/coroutines/channels/AbstractChannel$TryPollDesc;
    .end local v14    # "failure":Ljava/lang/Object;
    .restart local v3    # "send":Ljava/lang/Object;
    .restart local v4    # "token":Ljava/lang/Object;
    .restart local v5    # "result":Ljava/lang/Object;
    .restart local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v7    # "$i$f$withLock":I
    .restart local p1    # "select":Lkotlinx/coroutines/selects/SelectInstance;
    :cond_a
    :goto_3
    sget-object v12, Lkotlinx/coroutines/channels/AbstractChannelKt;->POLL_FAILED:Ljava/lang/Object;

    if-eq v11, v12, :cond_b

    instance-of v12, v11, Lkotlinx/coroutines/channels/Closed;

    if-nez v12, :cond_b

    .line 225
    iput v10, v1, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 226
    iget-object v0, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v12, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v12, v10

    array-length v14, v0

    rem-int/2addr v12, v14

    aput-object v11, v0, v12

    goto :goto_4

    .line 229
    :cond_b
    invoke-interface {v2, v0}, Lkotlinx/coroutines/selects/SelectInstance;->trySelect(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 230
    iput v10, v1, Lkotlinx/coroutines/channels/ArrayChannel;->size:I

    .line 231
    iget-object v0, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    iget v12, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    aput-object v5, v0, v12

    .line 232
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->getALREADY_SELECTED()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "$i$f$withLock":I
    .end local v9    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .end local v10    # "size":I
    .end local v11    # "replacement":Ljava/lang/Object;
    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    .line 234
    .restart local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v7    # "$i$f$withLock":I
    .restart local v9    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    .restart local v10    # "size":I
    .restart local v11    # "replacement":Ljava/lang/Object;
    :cond_c
    :goto_4
    nop

    .line 235
    :try_start_3
    iget v0, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    add-int/2addr v0, v13

    iget-object v12, v1, Lkotlinx/coroutines/channels/ArrayChannel;->buffer:[Ljava/lang/Object;

    array-length v12, v12

    rem-int/2addr v0, v12

    iput v0, v1, Lkotlinx/coroutines/channels/ArrayChannel;->head:I

    .line 236
    .end local v10    # "size":I
    .end local v11    # "replacement":Ljava/lang/Object;
    nop

    .end local v9    # "$i$a$-withLock-ArrayChannel$pollSelectInternal$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 266
    .end local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v7    # "$i$f$withLock":I
    nop

    .line 238
    if-eqz v4, :cond_e

    .line 239
    if-nez v3, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    invoke-virtual {v3, v4}, Lkotlinx/coroutines/channels/Send;->completeResumeSend(Ljava/lang/Object;)V

    .line 240
    :cond_e
    return-object v5

    .line 236
    .restart local v6    # "$this$withLock$iv":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v7    # "$i$f$withLock":I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
