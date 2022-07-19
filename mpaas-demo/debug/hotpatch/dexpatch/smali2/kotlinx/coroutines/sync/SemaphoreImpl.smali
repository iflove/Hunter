.class final Lkotlinx/coroutines/sync/SemaphoreImpl;
.super Lkotlinx/coroutines/internal/SegmentQueue;
.source "Semaphore.kt"

# interfaces
.implements Lkotlinx/coroutines/sync/Semaphore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/SegmentQueue<",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        ">;",
        "Lkotlinx/coroutines/sync/Semaphore;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n+ 5 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n*L\n1#1,210:1\n277#2,2:211\n297#2,4:213\n220#3,3:217\n223#3,2:225\n183#4,4:220\n189#4:227\n19#5:224\n*E\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n111#1,2:211\n129#1,4:213\n134#1,3:217\n134#1,2:225\n134#1,4:220\n154#1:227\n134#1:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00030\u0002B\u0017\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\n\u001a\u00020\tH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0013\u0010\u000c\u001a\u00020\tH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\r\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ!\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\tH\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001c\u001a\u00020\u00048V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u000eR\u0016\u0010\u0005\u001a\u00020\u00048\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u001d\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreImpl;",
        "Lkotlinx/coroutines/sync/Semaphore;",
        "Lkotlinx/coroutines/internal/SegmentQueue;",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "",
        "permits",
        "acquiredPermits",
        "<init>",
        "(II)V",
        "",
        "acquire",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addToQueueAndSuspend",
        "incPermits",
        "()I",
        "",
        "id",
        "prev",
        "newSegment",
        "(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "release",
        "()V",
        "resumeNextFromQueue$kotlinx_coroutines_core",
        "resumeNextFromQueue",
        "",
        "tryAcquire",
        "()Z",
        "getAvailablePermits",
        "availablePermits",
        "I",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field private static final _availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field static final enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile _availablePermits:I

.field private volatile deqIdx:J

.field volatile enqIdx:J

.field private final permits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/sync/SemaphoreImpl;

    const-string v1, "_availablePermits"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "enqIdx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v1, "deqIdx"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "permits"    # I
    .param p2, "acquiredPermits"    # I

    .line 82
    nop

    .line 84
    invoke-direct {p0}, Lkotlinx/coroutines/internal/SegmentQueue;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    .line 86
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 87
    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    if-lt p1, p2, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 88
    nop

    .line 99
    sub-int v0, p1, p2

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx:J

    .line 108
    iput-wide v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx:J

    return-void

    .line 87
    :cond_3
    const/4 v0, 0x0

    .local v0, "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of acquired permits should be in 0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$2":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 86
    :cond_4
    const/4 v0, 0x0

    .local v0, "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Semaphore should have at least 1 permit, but had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-SemaphoreImpl$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static final synthetic access$getSegment(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/sync/SemaphoreSegment;J)Lkotlinx/coroutines/sync/SemaphoreSegment;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;
    .param p1, "startFrom"    # Lkotlinx/coroutines/sync/SemaphoreSegment;
    .param p2, "id"    # J

    .line 82
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    invoke-virtual {p0, v0, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getSegment(Lkotlinx/coroutines/internal/Segment;J)Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    return-object v0
.end method

.method public static final synthetic access$getTail$p(Lkotlinx/coroutines/sync/SemaphoreImpl;)Lkotlinx/coroutines/sync/SemaphoreSegment;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/sync/SemaphoreImpl;

    .line 82
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getTail()Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    return-object v0
.end method


# virtual methods
.method public acquire(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 118
    sget-object v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v0

    .line 119
    .local v0, "p":I
    if-lez v0, :cond_0

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/SemaphoreImpl;->addToQueueAndSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method final synthetic addToQueueAndSuspend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .param p1, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 134
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 217
    .local v1, "$i$f$suspendAtomicCancellableCoroutine":I
    move-object/from16 v2, p1

    .local v2, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/4 v3, 0x0

    .line 218
    .local v3, "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendAtomicCancellableCoroutine$2$iv":I
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 219
    .local v4, "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/CancellableContinuation;

    .local v5, "cont":Lkotlinx/coroutines/CancellableContinuation;
    const/4 v6, 0x0

    .line 135
    .local v6, "$i$a$-suspendAtomicCancellableCoroutine-SemaphoreImpl$addToQueueAndSuspend$2":I
    invoke-static/range {p0 .. p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->access$getTail$p(Lkotlinx/coroutines/sync/SemaphoreImpl;)Lkotlinx/coroutines/sync/SemaphoreSegment;

    move-result-object v7

    .line 136
    .local v7, "last":Lkotlinx/coroutines/sync/SemaphoreSegment;
    sget-object v8, Lkotlinx/coroutines/sync/SemaphoreImpl;->enqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    .line 137
    .local v8, "enqIdx":J
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v10

    int-to-long v10, v10

    div-long v10, v8, v10

    invoke-static {v0, v7, v10, v11}, Lkotlinx/coroutines/sync/SemaphoreImpl;->access$getSegment(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/sync/SemaphoreSegment;J)Lkotlinx/coroutines/sync/SemaphoreSegment;

    move-result-object v10

    .line 138
    .local v10, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v11

    int-to-long v11, v11

    rem-long v11, v8, v11

    long-to-int v12, v11

    .line 139
    .local v12, "i":I
    if-eqz v10, :cond_1

    move-object v11, v10

    .local v11, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v13, 0x0

    .line 220
    .local v13, "$i$f$get":I
    iget-object v14, v11, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v14, v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v13    # "$i$f$get":I
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getRESUMED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v13

    if-eq v11, v13, :cond_1

    .line 139
    const/4 v11, 0x0

    .local v11, "expected$iv":Ljava/lang/Object;
    move-object v13, v10

    .local v13, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v14, 0x0

    .line 223
    .local v14, "$i$f$cas":I
    iget-object v15, v13, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v15, v12, v11, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    .end local v11    # "expected$iv":Ljava/lang/Object;
    .end local v13    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v14    # "$i$f$cas":I
    if-nez v11, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v11, Lkotlinx/coroutines/sync/CancelSemaphoreAcquisitionHandler;

    invoke-direct {v11, v0, v10, v12}, Lkotlinx/coroutines/sync/CancelSemaphoreAcquisitionHandler;-><init>(Lkotlinx/coroutines/sync/SemaphoreImpl;Lkotlinx/coroutines/sync/SemaphoreSegment;I)V

    check-cast v11, Lkotlinx/coroutines/CancelHandlerBase;

    .local v11, "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    const/4 v13, 0x0

    .line 224
    .local v13, "$i$f$getAsHandler":I
    check-cast v11, Lkotlin/jvm/functions/Function1;

    .line 144
    .end local v11    # "$this$asHandler$iv":Lkotlinx/coroutines/CancelHandlerBase;
    .end local v13    # "$i$f$getAsHandler":I
    invoke-interface {v5, v11}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 145
    .end local v7    # "last":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v8    # "enqIdx":J
    .end local v10    # "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v12    # "i":I
    goto :goto_1

    .line 141
    .restart local v7    # "last":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v8    # "enqIdx":J
    .restart local v10    # "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .restart local v12    # "i":I
    :cond_1
    :goto_0
    move-object v11, v5

    check-cast v11, Lkotlin/coroutines/Continuation;

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v14, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 142
    nop

    .line 225
    .end local v5    # "cont":Lkotlinx/coroutines/CancellableContinuation;
    .end local v6    # "$i$a$-suspendAtomicCancellableCoroutine-SemaphoreImpl$addToQueueAndSuspend$2":I
    .end local v7    # "last":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v8    # "enqIdx":J
    .end local v10    # "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v12    # "i":I
    :goto_1
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v4

    .line 217
    .end local v2    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v3    # "$i$a$-suspendCoroutineUninterceptedOrReturn-CancellableContinuationKt$suspendAtomicCancellableCoroutine$2$iv":I
    .end local v4    # "cancellable$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_2

    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 226
    :cond_2
    nop

    .line 145
    .end local v1    # "$i$f$suspendAtomicCancellableCoroutine":I
    return-object v4
.end method

.method public getAvailablePermits()I
    .locals 2

    .line 100
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final incPermits()I
    .locals 8

    .line 129
    move-object v0, p0

    .local v0, "$this$getAndUpdate$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 213
    .local v1, "$i$f$getAndUpdate":I
    :goto_0
    nop

    .line 214
    iget v2, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    .line 215
    .local v2, "cur$iv":I
    move v3, v2

    .local v3, "cur":I
    const/4 v4, 0x0

    .line 130
    .local v4, "$i$a$-getAndUpdate-SemaphoreImpl$incPermits$1":I
    iget v5, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    if-ge v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 216
    .end local v4    # "$i$a$-getAndUpdate-SemaphoreImpl$incPermits$1":I
    .local v3, "upd$iv":I
    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    .end local v0    # "$this$getAndUpdate$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .end local v1    # "$i$f$getAndUpdate":I
    .end local v2    # "cur$iv":I
    .end local v3    # "upd$iv":I
    return v2

    .line 213
    .restart local v0    # "$this$getAndUpdate$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    .restart local v1    # "$i$f$getAndUpdate":I
    :cond_1
    goto :goto_0

    .line 130
    .restart local v2    # "cur$iv":I
    .local v3, "cur":I
    .restart local v4    # "$i$a$-getAndUpdate-SemaphoreImpl$incPermits$1":I
    :cond_2
    const/4 v5, 0x0

    .local v5, "$i$a$-check-SemaphoreImpl$incPermits$1$1":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The number of released permits cannot be greater than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lkotlinx/coroutines/sync/SemaphoreImpl;->permits:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5    # "$i$a$-check-SemaphoreImpl$incPermits$1$1":I
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    throw v6
.end method

.method public bridge synthetic newSegment(JLkotlinx/coroutines/internal/Segment;)Lkotlinx/coroutines/internal/Segment;
    .locals 0

    .line 82
    check-cast p3, Lkotlinx/coroutines/sync/SemaphoreSegment;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreImpl;->newSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/internal/Segment;

    return-object p1
.end method

.method public newSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;
    .locals 1
    .param p1, "id"    # J
    .param p3, "prev"    # Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 90
    new-instance v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    invoke-direct {v0, p1, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreSegment;-><init>(JLkotlinx/coroutines/sync/SemaphoreSegment;)V

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->incPermits()I

    move-result v0

    .line 125
    .local v0, "p":I
    if-ltz v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->resumeNextFromQueue$kotlinx_coroutines_core()V

    .line 127
    return-void
.end method

.method public final resumeNextFromQueue$kotlinx_coroutines_core()V
    .locals 9

    .line 149
    :cond_0
    :goto_0
    nop

    .line 150
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getHead()Lkotlinx/coroutines/internal/Segment;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 151
    .local v0, "first":Lkotlinx/coroutines/sync/SemaphoreSegment;
    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreImpl;->deqIdx$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v1

    .line 152
    .local v1, "deqIdx":J
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v4

    int-to-long v4, v4

    div-long v4, v1, v4

    invoke-virtual {p0, v3, v4, v5}, Lkotlinx/coroutines/sync/SemaphoreImpl;->getSegmentAndMoveHead(Lkotlinx/coroutines/internal/Segment;J)Lkotlinx/coroutines/internal/Segment;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/sync/SemaphoreSegment;

    if-eqz v3, :cond_0

    .line 153
    .local v3, "segment":Lkotlinx/coroutines/sync/SemaphoreSegment;
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v4

    int-to-long v4, v4

    rem-long v4, v1, v4

    long-to-int v5, v4

    .line 154
    .local v5, "i":I
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getRESUMED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    .local v4, "value$iv":Ljava/lang/Object;
    move-object v6, v3

    .local v6, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v7, 0x0

    .line 227
    .local v7, "$i$f$getAndSet":I
    iget-object v8, v6, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v8, v5, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 154
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v7    # "$i$f$getAndSet":I
    nop

    .line 155
    .local v4, "cont":Ljava/lang/Object;
    if-nez v4, :cond_1

    return-void

    .line 156
    :cond_1
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v6

    if-ne v4, v6, :cond_2

    goto :goto_0

    .line 157
    :cond_2
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/CancellableContinuation;

    check-cast v6, Lkotlin/coroutines/Continuation;

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public tryAcquire()Z
    .locals 6

    .line 111
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/sync/SemaphoreImpl;
    const/4 v1, 0x0

    .line 211
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 212
    iget v2, v0, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits:I

    .local v2, "p":I
    const/4 v3, 0x0

    .line 112
    .local v3, "$i$a$-loop-SemaphoreImpl$tryAcquire$1":I
    if-gtz v2, :cond_0

    const/4 v4, 0x0

    return v4

    .line 113
    :cond_0
    sget-object v4, Lkotlinx/coroutines/sync/SemaphoreImpl;->_availablePermits$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    return v4

    .line 114
    .end local v2    # "p":I
    .end local v3    # "$i$a$-loop-SemaphoreImpl$tryAcquire$1":I
    :cond_1
    nop

    .line 211
    goto :goto_0
.end method
