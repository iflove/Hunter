.class public final Lkotlinx/coroutines/scheduling/WorkQueue;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n+ 2 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1\n*L\n1#1,203:1\n167#1,7:204\n174#1,5:212\n168#1,11:217\n167#1,7:228\n174#1,5:236\n167#1,7:241\n174#1,5:249\n168#1,14:254\n167#2:211\n167#2:235\n167#2:248\n*E\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueue\n*L\n66#1,7:204\n66#1,5:212\n108#1,11:217\n142#1,7:228\n142#1,5:236\n160#1,7:241\n160#1,5:249\n66#1:211\n142#1:235\n160#1:248\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u001f\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J(\u0010\u0017\u001a\u0004\u0018\u00010\u00042\u0014\u0008\u0002\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00080\u0015H\u0082\u0008\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001c\u001a\u00020\u0019H\u0000\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001d\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u001d\u0010 \u001a\u00020\u00082\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008 \u0010!J\'\u0010$\u001a\u00020\u00082\u0006\u0010#\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008$\u0010%R\u001e\u0010\'\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040&8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010*\u001a\u00020\u00198@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008)\u0010\u001b\u00a8\u0006+"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/WorkQueue;",
        "",
        "<init>",
        "()V",
        "Lkotlinx/coroutines/scheduling/Task;",
        "task",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalQueue",
        "",
        "add",
        "(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z",
        "addLast",
        "",
        "addToGlobalQueue",
        "(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V",
        "offloadAllWork$kotlinx_coroutines_core",
        "(Lkotlinx/coroutines/scheduling/GlobalQueue;)V",
        "offloadAllWork",
        "offloadWork",
        "poll",
        "()Lkotlinx/coroutines/scheduling/Task;",
        "Lkotlin/Function1;",
        "predicate",
        "pollExternal",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/scheduling/Task;",
        "",
        "size$kotlinx_coroutines_core",
        "()I",
        "size",
        "tryAddLast",
        "(Lkotlinx/coroutines/scheduling/Task;)Z",
        "victim",
        "trySteal",
        "(Lkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z",
        "",
        "time",
        "tryStealLastScheduled",
        "(JLkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "buffer",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray;",
        "getBufferSize$kotlinx_coroutines_core",
        "bufferSize",
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
.field static final consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Lkotlinx/coroutines/scheduling/Task;",
            ">;"
        }
    .end annotation
.end field

.field volatile consumerIndex:I

.field private volatile lastScheduledTask:Ljava/lang/Object;

.field volatile producerIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/scheduling/WorkQueue;

    const-class v1, Ljava/lang/Object;

    const-string v2, "lastScheduledTask"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    .line 59
    iput v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    return-void
.end method

.method public static final synthetic access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 36
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method private final addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V
    .locals 2
    .param p1, "globalQueue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;
    .param p2, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 154
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GlobalQueue could not be closed yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final offloadWork(Lkotlinx/coroutines/scheduling/GlobalQueue;)V
    .locals 13
    .param p1, "globalQueue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 142
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_4

    move v4, v2

    .local v4, "it":I
    const/4 v5, 0x0

    .line 143
    .local v5, "$i$a$-repeat-WorkQueue$offloadWork$1":I
    move-object v6, p0

    .line 228
    .local v3, "predicate$iv":Lkotlin/jvm/functions/Function1;
    .local v6, "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    const/4 v7, 0x0

    .line 229
    .local v7, "$i$f$pollExternal":I
    :cond_0
    :goto_1
    nop

    .line 230
    iget v8, v6, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 231
    .local v8, "tailLocal$iv":I
    iget v9, v6, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v9, v8, v9

    if-nez v9, :cond_1

    move-object v11, v1

    goto :goto_2

    .line 232
    :cond_1
    and-int/lit8 v9, v8, 0x7f

    .line 233
    .local v9, "index$iv":I
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v6}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v10, :cond_0

    .line 234
    .local v10, "element$iv":Lkotlinx/coroutines/scheduling/Task;
    move-object v11, v10

    .line 235
    .local v11, "it":Lkotlinx/coroutines/scheduling/Task;
    nop

    .line 238
    .end local v11    # "it":Lkotlinx/coroutines/scheduling/Task;
    sget-object v11, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v11, v6, v8, v12}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 240
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v6}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v11

    invoke-virtual {v11, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/scheduling/Task;

    .line 229
    .end local v3    # "predicate$iv":Lkotlin/jvm/functions/Function1;
    .end local v6    # "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .end local v7    # "$i$f$pollExternal":I
    .end local v8    # "tailLocal$iv":I
    .end local v9    # "index$iv":I
    .end local v10    # "element$iv":Lkotlinx/coroutines/scheduling/Task;
    :goto_2
    if-eqz v11, :cond_2

    .line 143
    move-object v6, v11

    .line 144
    .local v6, "task":Lkotlinx/coroutines/scheduling/Task;
    invoke-direct {p0, p1, v6}, Lkotlinx/coroutines/scheduling/WorkQueue;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    .line 145
    .end local v6    # "task":Lkotlinx/coroutines/scheduling/Task;
    nop

    .line 142
    .end local v4    # "it":I
    .end local v5    # "$i$a$-repeat-WorkQueue$offloadWork$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .restart local v4    # "it":I
    .restart local v5    # "$i$a$-repeat-WorkQueue$offloadWork$1":I
    :cond_2
    return-void

    .line 229
    .restart local v3    # "predicate$iv":Lkotlin/jvm/functions/Function1;
    .local v6, "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .restart local v7    # "$i$f$pollExternal":I
    :cond_3
    goto :goto_1

    .line 146
    .end local v3    # "predicate$iv":Lkotlin/jvm/functions/Function1;
    .end local v4    # "it":I
    .end local v5    # "$i$a$-repeat-WorkQueue$offloadWork$1":I
    .end local v6    # "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .end local v7    # "$i$f$pollExternal":I
    :cond_4
    return-void
.end method

.method private final pollExternal(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/scheduling/Task;
    .locals 7
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/scheduling/Task;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/scheduling/Task;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 168
    .local v0, "$i$f$pollExternal":I
    :cond_0
    :goto_0
    nop

    .line 169
    iget v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 170
    .local v1, "tailLocal":I
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return-object v3

    .line 171
    :cond_1
    and-int/lit8 v2, v1, 0x7f

    .line 172
    .local v2, "index":I
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v4, :cond_0

    .line 173
    .local v4, "element":Lkotlinx/coroutines/scheduling/Task;
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_2

    .line 174
    return-object v3

    .line 176
    :cond_2
    sget-object v5, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, p0, v1, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 178
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/scheduling/Task;

    return-object v3

    .line 168
    .end local v1    # "tailLocal":I
    .end local v2    # "index":I
    .end local v4    # "element":Lkotlinx/coroutines/scheduling/Task;
    :cond_3
    goto :goto_0
.end method

.method static synthetic pollExternal$default(Lkotlinx/coroutines/scheduling/WorkQueue;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/scheduling/Task;
    .locals 5
    .param p0, "this"    # Lkotlinx/coroutines/scheduling/WorkQueue;
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 167
    sget-object p2, Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;->INSTANCE:Lkotlinx/coroutines/scheduling/WorkQueue$pollExternal$1;

    move-object p1, p2

    check-cast p1, Lkotlin/jvm/functions/Function1;

    :cond_0
    const/4 p2, 0x0

    .line 254
    .local p2, "$i$f$pollExternal":I
    :cond_1
    :goto_0
    nop

    .line 255
    iget p3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 256
    .local p3, "tailLocal":I
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v0, p3, v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 257
    :cond_2
    and-int/lit8 v0, p3, 0x7f

    .line 258
    .local v0, "index":I
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v2, :cond_1

    .line 259
    .local v2, "element":Lkotlinx/coroutines/scheduling/Task;
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    .line 260
    return-object v1

    .line 262
    :cond_3
    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, p0, p3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    return-object v1

    .line 254
    .end local v0    # "index":I
    .end local v2    # "element":Lkotlinx/coroutines/scheduling/Task;
    .end local p3    # "tailLocal":I
    :cond_4
    goto :goto_0
.end method

.method private final tryAddLast(Lkotlinx/coroutines/scheduling/Task;)Z
    .locals 4
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;

    .line 185
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    return v1

    .line 186
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    .line 187
    .local v0, "headLocal":I
    and-int/lit8 v2, v0, 0x7f

    .line 194
    .local v2, "nextIndex":I
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 195
    return v1

    .line 198
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 199
    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    .line 200
    const/4 v1, 0x1

    return v1
.end method

.method private final tryStealLastScheduled(JLkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 7
    .param p1, "time"    # J
    .param p3, "victim"    # Lkotlinx/coroutines/scheduling/WorkQueue;
    .param p4, "globalQueue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 124
    iget-object v0, p3, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 125
    .local v0, "lastScheduled":Lkotlinx/coroutines/scheduling/Task;
    iget-wide v2, v0, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    sub-long v2, p1, v2

    sget-wide v4, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 126
    return v1

    .line 129
    :cond_0
    sget-object v2, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-virtual {p0, v0, p4}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    .line 131
    const/4 v1, 0x1

    return v1

    .line 133
    :cond_1
    return v1

    .line 124
    .end local v0    # "lastScheduled":Lkotlinx/coroutines/scheduling/Task;
    :cond_2
    return v1
.end method


# virtual methods
.method public final add(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 2
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;
    .param p2, "globalQueue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    .line 77
    .local v0, "previous":Lkotlinx/coroutines/scheduling/Task;
    invoke-virtual {p0, v0, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->addLast(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result v1

    return v1

    .line 76
    .end local v0    # "previous":Lkotlinx/coroutines/scheduling/Task;
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final addLast(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 2
    .param p1, "task"    # Lkotlinx/coroutines/scheduling/Task;
    .param p2, "globalQueue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "globalQueue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    .line 87
    .local v0, "noOffloadingHappened":Z
    :goto_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryAddLast(Lkotlinx/coroutines/scheduling/Task;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lkotlinx/coroutines/scheduling/WorkQueue;->offloadWork(Lkotlinx/coroutines/scheduling/GlobalQueue;)V

    .line 89
    const/4 v0, 0x0

    .line 87
    goto :goto_0

    .line 91
    :cond_0
    return v0
.end method

.method public final getBufferSize$kotlinx_coroutines_core()I
    .locals 2

    .line 51
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final offloadAllWork$kotlinx_coroutines_core(Lkotlinx/coroutines/scheduling/GlobalQueue;)V
    .locals 5

    const-string v0, "globalQueue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    .line 159
    :cond_0
    :goto_0
    nop

    .line 160
    nop

    .line 241
    nop

    .line 242
    :cond_1
    :goto_1
    nop

    .line 243
    iget v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 244
    iget v2, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v2, v0, v2

    if-nez v2, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 245
    :cond_2
    and-int/lit8 v2, v0, 0x7f

    .line 246
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v3, :cond_1

    .line 247
    nop

    .line 248
    nop

    .line 251
    sget-object v3, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 253
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    .line 242
    :goto_2
    if-eqz v0, :cond_3

    .line 160
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/GlobalQueue;Lkotlinx/coroutines/scheduling/Task;)V

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    return-void

    .line 242
    :cond_4
    goto :goto_1
.end method

.method public final poll()Lkotlinx/coroutines/scheduling/Task;
    .locals 9

    .line 66
    sget-object v0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    move-object v2, v1

    .line 204
    .local v2, "predicate$iv":Lkotlin/jvm/functions/Function1;
    const/4 v3, 0x0

    .line 205
    .local v3, "$i$f$pollExternal":I
    :cond_1
    :goto_0
    nop

    .line 206
    iget v4, v0, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 207
    .local v4, "tailLocal$iv":I
    iget v5, v0, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v5, v4, v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 208
    :cond_2
    and-int/lit8 v5, v4, 0x7f

    .line 209
    .local v5, "index$iv":I
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v6, :cond_1

    .line 210
    .local v6, "element$iv":Lkotlinx/coroutines/scheduling/Task;
    move-object v7, v6

    .line 211
    .local v7, "it":Lkotlinx/coroutines/scheduling/Task;
    nop

    .line 214
    .end local v7    # "it":Lkotlinx/coroutines/scheduling/Task;
    sget-object v7, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v0, v4, v8}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 216
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    .line 66
    .end local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .end local v2    # "predicate$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "$i$f$pollExternal":I
    .end local v4    # "tailLocal$iv":I
    .end local v5    # "index$iv":I
    .end local v6    # "element$iv":Lkotlinx/coroutines/scheduling/Task;
    :goto_1
    return-object v1

    .line 205
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .restart local v2    # "predicate$iv":Lkotlin/jvm/functions/Function1;
    .restart local v3    # "$i$f$pollExternal":I
    :cond_3
    goto :goto_0
.end method

.method public final size$kotlinx_coroutines_core()I
    .locals 1

    .line 136
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/WorkQueue;->lastScheduledTask:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final trySteal(Lkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z
    .locals 22
    .param p1, "victim"    # Lkotlinx/coroutines/scheduling/WorkQueue;
    .param p2, "globalQueue"    # Lkotlinx/coroutines/scheduling/GlobalQueue;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "victim"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "globalQueue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v3, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/TimeSource;

    invoke-virtual {v3}, Lkotlinx/coroutines/scheduling/TimeSource;->nanoTime()J

    move-result-wide v3

    .line 101
    .local v3, "time":J
    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v5

    .line 102
    .local v5, "bufferSize":I
    if-nez v5, :cond_0

    invoke-direct {v0, v3, v4, v1, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->tryStealLastScheduled(JLkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result v6

    return v6

    .line 107
    :cond_0
    const/4 v6, 0x0

    .line 108
    .local v6, "wasStolen":Z
    div-int/lit8 v7, v5, 0x2

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v7

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_8

    move v11, v10

    .local v11, "it":I
    const/4 v12, 0x0

    .line 109
    .local v12, "$i$a$-repeat-WorkQueue$trySteal$1":I
    move-object/from16 v13, p1

    .local v13, "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    const/4 v14, 0x0

    .line 217
    .local v14, "$i$f$pollExternal":I
    :goto_1
    nop

    .line 218
    iget v15, v13, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex:I

    .line 219
    .local v15, "tailLocal$iv":I
    iget v8, v13, Lkotlinx/coroutines/scheduling/WorkQueue;->producerIndex:I

    sub-int v8, v15, v8

    if-nez v8, :cond_1

    move/from16 v16, v11

    move/from16 v18, v12

    const/4 v9, 0x0

    goto :goto_4

    .line 220
    :cond_1
    and-int/lit8 v8, v15, 0x7f

    .line 221
    .local v8, "index$iv":I
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v13}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v9, :cond_7

    .line 222
    .local v9, "element$iv":Lkotlinx/coroutines/scheduling/Task;
    move-object/from16 v16, v9

    .local v16, "task":Lkotlinx/coroutines/scheduling/Task;
    const/16 v17, 0x0

    .line 110
    .local v17, "$i$a$-pollExternal-WorkQueue$trySteal$1$task$1":I
    move/from16 v18, v12

    move-object/from16 v1, v16

    move/from16 v16, v11

    .end local v11    # "it":I
    .end local v12    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    .local v1, "task":Lkotlinx/coroutines/scheduling/Task;
    .local v16, "it":I
    .local v18, "$i$a$-repeat-WorkQueue$trySteal$1":I
    iget-wide v11, v1, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    sub-long v11, v3, v11

    sget-wide v19, Lkotlinx/coroutines/scheduling/TasksKt;->WORK_STEALING_TIME_RESOLUTION_NS:J

    cmp-long v21, v11, v19

    if-gez v21, :cond_3

    invoke-virtual/range {p1 .. p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->getBufferSize$kotlinx_coroutines_core()I

    move-result v11

    sget v12, Lkotlinx/coroutines/scheduling/TasksKt;->QUEUE_SIZE_OFFLOAD_THRESHOLD:I

    if-le v11, v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .end local v1    # "task":Lkotlinx/coroutines/scheduling/Task;
    .end local v17    # "$i$a$-pollExternal-WorkQueue$trySteal$1$task$1":I
    :goto_3
    if-nez v1, :cond_4

    .line 223
    const/4 v9, 0x0

    goto :goto_4

    .line 225
    :cond_4
    sget-object v1, Lkotlinx/coroutines/scheduling/WorkQueue;->consumerIndex$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    add-int/lit8 v11, v15, 0x1

    invoke-virtual {v1, v13, v15, v11}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 227
    # getter for: Lkotlinx/coroutines/scheduling/WorkQueue;->buffer:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    invoke-static {v13}, Lkotlinx/coroutines/scheduling/WorkQueue;->access$getBuffer$p(Lkotlinx/coroutines/scheduling/WorkQueue;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v1

    const/4 v11, 0x0

    invoke-virtual {v1, v8, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/scheduling/Task;

    move-object v9, v1

    .line 217
    .end local v8    # "index$iv":I
    .end local v9    # "element$iv":Lkotlinx/coroutines/scheduling/Task;
    .end local v13    # "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .end local v14    # "$i$f$pollExternal":I
    .end local v15    # "tailLocal$iv":I
    :goto_4
    if-eqz v9, :cond_5

    .line 109
    move-object v1, v9

    .line 113
    .restart local v1    # "task":Lkotlinx/coroutines/scheduling/Task;
    const/4 v6, 0x1

    .line 114
    invoke-virtual {v0, v1, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    .line 115
    .end local v1    # "task":Lkotlinx/coroutines/scheduling/Task;
    nop

    .line 108
    .end local v16    # "it":I
    .end local v18    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    const/4 v8, 0x1

    goto :goto_0

    .line 112
    .restart local v16    # "it":I
    .restart local v18    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    :cond_5
    return v6

    .line 217
    .restart local v13    # "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .restart local v14    # "$i$f$pollExternal":I
    :cond_6
    move-object/from16 v1, p1

    move/from16 v11, v16

    move/from16 v12, v18

    const/4 v8, 0x1

    goto :goto_1

    .line 221
    .end local v16    # "it":I
    .end local v18    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    .restart local v8    # "index$iv":I
    .restart local v11    # "it":I
    .restart local v12    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    .restart local v15    # "tailLocal$iv":I
    :cond_7
    move/from16 v16, v11

    move/from16 v18, v12

    .end local v11    # "it":I
    .end local v12    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    .restart local v16    # "it":I
    .restart local v18    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    move-object/from16 v1, p1

    const/4 v8, 0x1

    goto :goto_1

    .line 116
    .end local v8    # "index$iv":I
    .end local v13    # "this_$iv":Lkotlinx/coroutines/scheduling/WorkQueue;
    .end local v14    # "$i$f$pollExternal":I
    .end local v15    # "tailLocal$iv":I
    .end local v16    # "it":I
    .end local v18    # "$i$a$-repeat-WorkQueue$trySteal$1":I
    :cond_8
    return v6
.end method
