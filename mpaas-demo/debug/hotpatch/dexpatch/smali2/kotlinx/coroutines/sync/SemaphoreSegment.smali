.class final Lkotlinx/coroutines/sync/SemaphoreSegment;
.super Lkotlinx/coroutines/internal/Segment;
.source "Semaphore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/Segment<",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,210:1\n189#1:211\n*E\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n195#1:211\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ,\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000cH\u0086\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\u0007H\u0086\u0008\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J$\u0010\u0013\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000cH\u0086\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001a\u001a\u00020\t8V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "Lkotlinx/coroutines/internal/Segment;",
        "",
        "id",
        "prev",
        "<init>",
        "(JLkotlinx/coroutines/sync/SemaphoreSegment;)V",
        "",
        "index",
        "",
        "cancel",
        "(I)Z",
        "",
        "expected",
        "value",
        "cas",
        "(ILjava/lang/Object;Ljava/lang/Object;)Z",
        "get",
        "(I)Ljava/lang/Object;",
        "getAndSet",
        "(ILjava/lang/Object;)Ljava/lang/Object;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "getRemoved",
        "()Z",
        "removed",
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
.field private static final cancelledSlots$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private volatile cancelledSlots:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/sync/SemaphoreSegment;

    const-string v1, "cancelledSlots"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreSegment;->cancelledSlots$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/sync/SemaphoreSegment;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "prev"    # Lkotlinx/coroutines/sync/SemaphoreSegment;

    .line 177
    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/internal/Segment;

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;)V

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->cancelledSlots:I

    return-void
.end method


# virtual methods
.method public final cancel(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 195
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    const/4 v2, 0x0

    .line 211
    .local v2, "$i$f$getAndSet":I
    iget-object v3, v1, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "this_$iv":Lkotlinx/coroutines/sync/SemaphoreSegment;
    .end local v2    # "$i$f$getAndSet":I
    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->RESUMED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getRESUMED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    nop

    .line 197
    .local v0, "cancelled":Z
    sget-object v1, Lkotlinx/coroutines/sync/SemaphoreSegment;->cancelledSlots$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v1

    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->remove()V

    .line 199
    :cond_1
    return v0
.end method

.method public final cas(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "expected"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    const/4 v0, 0x0

    .line 186
    .local v0, "$i$f$cas":I
    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    const/4 v0, 0x0

    .line 183
    .local v0, "$i$f$get":I
    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    const/4 v0, 0x0

    .line 189
    .local v0, "$i$f$getAndSet":I
    iget-object v1, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getRemoved()Z
    .locals 2

    .line 180
    iget v0, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->cancelledSlots:I

    # getter for: Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemaphoreSegment[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
