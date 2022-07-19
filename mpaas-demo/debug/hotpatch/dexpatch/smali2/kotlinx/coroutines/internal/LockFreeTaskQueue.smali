.class public Lkotlinx/coroutines/internal/LockFreeTaskQueue;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueue\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 4 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n*L\n1#1,316:1\n61#1:321\n62#1:324\n63#1,3:361\n93#2,2:317\n93#2,2:319\n93#2,2:322\n388#2,2:326\n93#2,2:364\n388#2,2:367\n171#3:325\n172#3,2:328\n174#3,28:333\n171#3:366\n172#3,2:369\n174#3,28:374\n308#4,3:330\n308#4,3:371\n*E\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueue\n*L\n57#1:321\n57#1:324\n57#1,3:361\n40#1,2:317\n47#1,2:319\n57#1,2:322\n57#1,2:326\n61#1,2:364\n61#1,2:367\n57#1:325\n57#1,2:328\n57#1,28:333\n61#1:366\n61#1,2:369\n61#1,28:374\n57#1,3:330\n61#1,3:371\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0010\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ-\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0012\"\u0004\u0008\u0001\u0010\u000f2\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J&\u0010\u0018\u001a\u0004\u0018\u00018\u00002\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00030\u0010H\u0086\u0008\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u001a\u001a\u00020\u00038F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u000eR\u0013\u0010\u001e\u001a\u00020\u001b8F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeTaskQueue;",
        "",
        "E",
        "",
        "singleConsumer",
        "<init>",
        "(Z)V",
        "element",
        "addLast",
        "(Ljava/lang/Object;)Z",
        "",
        "close",
        "()V",
        "isClosed",
        "()Z",
        "R",
        "Lkotlin/Function1;",
        "transform",
        "",
        "map",
        "(Lkotlin/jvm/functions/Function1;)Ljava/util/List;",
        "removeFirstOrNull",
        "()Ljava/lang/Object;",
        "predicate",
        "removeFirstOrNullIf",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "isEmpty",
        "",
        "getSize",
        "()I",
        "size",
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
.field public static final synthetic _cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile synthetic _cur$internal:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_cur$internal"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "singleConsumer"    # Z

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    const/4 v1, 0x0

    .line 319
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 320
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .local v2, "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v3, 0x0

    .line 48
    .local v3, "$i$a$-loop-LockFreeTaskQueue$addLast$1":I
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->addLast(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    const/4 v4, 0x0

    return v4

    .line 51
    :cond_1
    sget-object v4, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v5

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .end local v2    # "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v3    # "$i$a$-loop-LockFreeTaskQueue$addLast$1":I
    :goto_1
    nop

    .line 319
    goto :goto_0

    .line 49
    .restart local v2    # "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .restart local v3    # "$i$a$-loop-LockFreeTaskQueue$addLast$1":I
    :cond_2
    return v5
.end method

.method public final close()V
    .locals 6

    .line 40
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    const/4 v1, 0x0

    .line 317
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 318
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .local v2, "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v3, 0x0

    .line 41
    .local v3, "$i$a$-loop-LockFreeTaskQueue$close$1":I
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->close()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 42
    :cond_0
    sget-object v4, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v5

    invoke-virtual {v4, p0, v2, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .end local v2    # "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v3    # "$i$a$-loop-LockFreeTaskQueue$close$1":I
    nop

    .line 317
    goto :goto_0
.end method

.method public final getSize()I
    .locals 1

    .line 37
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->getSize()I

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final map(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 1
    .param p1, "transform"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->map(Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 57
    move-object/from16 v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    const/4 v1, 0x0

    .line 321
    .local v1, "$i$f$removeFirstOrNullIf":I
    move-object v2, v0

    .local v2, "$this$loop$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    const/4 v3, 0x0

    .line 322
    .local v3, "$i$f$loop":I
    :goto_0
    nop

    .line 323
    iget-object v4, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .local v4, "cur$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v5, 0x0

    .line 324
    .local v5, "$i$a$-loop-LockFreeTaskQueue$removeFirstOrNullIf$1$iv":I
    move-object v12, v4

    .local v12, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v13, 0x0

    .line 325
    .local v13, "$i$f$removeFirstOrNullIf":I
    move-object v14, v12

    .local v14, "$this$loop$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v15, 0x0

    .line 326
    .local v15, "$i$f$loop":I
    :goto_1
    nop

    .line 327
    iget-wide v10, v14, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$internal:J

    .local v10, "state$iv$iv":J
    const/16 v16, 0x0

    .line 328
    .local v16, "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv$iv":I
    const-wide/high16 v6, 0x1000000000000000L

    and-long/2addr v6, v10

    const-wide/16 v8, 0x0

    move/from16 v17, v1

    .end local v1    # "$i$f$removeFirstOrNullIf":I
    .local v17, "$i$f$removeFirstOrNullIf":I
    cmp-long v18, v6, v8

    if-eqz v18, :cond_0

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    move-object/from16 v24, v2

    goto/16 :goto_5

    .line 329
    :cond_0
    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v6, "this_$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    move-wide/from16 v18, v10

    .local v18, "$this$withState$iv$iv$iv":J
    move-object/from16 v20, v6

    .end local v6    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .local v20, "this_$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    const/16 v21, 0x0

    .line 330
    .local v21, "$i$f$withState":I
    const-wide/32 v6, 0x3fffffff

    and-long v6, v18, v6

    const/4 v8, 0x0

    shr-long/2addr v6, v8

    long-to-int v8, v6

    .line 331
    .local v8, "head$iv$iv$iv":I
    const-wide v6, 0xfffffffc0000000L

    and-long v6, v18, v6

    const/16 v9, 0x1e

    shr-long/2addr v6, v9

    long-to-int v9, v6

    .line 332
    .local v9, "tail$iv$iv$iv":I
    move v6, v8

    .local v6, "head$iv$iv":I
    move/from16 v22, v9

    .local v22, "tail$iv$iv":I
    move v7, v6

    .end local v6    # "head$iv$iv":I
    .local v7, "head$iv$iv":I
    const/16 v23, 0x0

    .line 333
    .local v23, "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv$iv":I
    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v6

    and-int v6, v22, v6

    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v24

    and-int v1, v7, v24

    if-ne v6, v1, :cond_1

    move-object/from16 v24, v2

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 334
    :cond_1
    iget-object v1, v12, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array$internal:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v6

    and-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 335
    .local v1, "element$iv$iv":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 337
    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getSingleConsumer$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object/from16 v24, v2

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 339
    :cond_2
    move-object/from16 v24, v2

    goto :goto_2

    .line 342
    :cond_3
    instance-of v6, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v6, :cond_4

    move-object/from16 v24, v2

    const/4 v1, 0x0

    goto :goto_5

    .line 344
    :cond_4
    nop

    .line 345
    move-object v6, v1

    .local v6, "it":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 57
    .local v24, "$i$a$-removeFirstOrNullIf-LockFreeTaskQueue$removeFirstOrNull$1":I
    nop

    .line 347
    .end local v6    # "it":Ljava/lang/Object;
    .end local v24    # "$i$a$-removeFirstOrNullIf-LockFreeTaskQueue$removeFirstOrNull$1":I
    add-int/lit8 v6, v7, 0x1

    const v24, 0x3fffffff    # 1.9999999f

    and-int v6, v6, v24

    .line 348
    .local v6, "newHead$iv$iv":I
    sget-object v24, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object/from16 v25, v1

    .end local v1    # "element$iv$iv":Ljava/lang/Object;
    .local v25, "element$iv$iv":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v1, v10, v11, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateHead(JI)J

    move-result-wide v26

    move v1, v6

    .end local v6    # "newHead$iv$iv":I
    .local v1, "newHead$iv$iv":I
    move-object/from16 v6, v24

    move-object/from16 v24, v2

    move v2, v7

    .end local v7    # "head$iv$iv":I
    .local v2, "head$iv$iv":I
    .local v24, "$this$loop$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    move-object v7, v12

    move/from16 v28, v8

    move/from16 v29, v9

    .end local v8    # "head$iv$iv$iv":I
    .end local v9    # "tail$iv$iv$iv":I
    .local v28, "head$iv$iv$iv":I
    .local v29, "tail$iv$iv$iv":I
    move-wide v8, v10

    move-wide/from16 v30, v10

    .end local v10    # "state$iv$iv":J
    .local v30, "state$iv$iv":J
    move-wide/from16 v10, v26

    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 351
    iget-object v6, v12, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array$internal:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v7

    and-int/2addr v7, v2

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 352
    goto :goto_4

    .line 355
    :cond_5
    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getSingleConsumer$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 326
    .end local v1    # "newHead$iv$iv":I
    .end local v2    # "head$iv$iv":I
    .end local v16    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv$iv":I
    .end local v18    # "$this$withState$iv$iv$iv":J
    .end local v20    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v21    # "$i$f$withState":I
    .end local v22    # "tail$iv$iv":I
    .end local v23    # "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv$iv":I
    .end local v25    # "element$iv$iv":Ljava/lang/Object;
    .end local v28    # "head$iv$iv$iv":I
    .end local v29    # "tail$iv$iv$iv":I
    .end local v30    # "state$iv$iv":J
    :goto_2
    move/from16 v1, v17

    move-object/from16 v2, v24

    goto/16 :goto_1

    .line 357
    .restart local v1    # "newHead$iv$iv":I
    .restart local v2    # "head$iv$iv":I
    .restart local v16    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv$iv":I
    .restart local v18    # "$this$withState$iv$iv$iv":J
    .restart local v20    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .restart local v21    # "$i$f$withState":I
    .restart local v22    # "tail$iv$iv":I
    .restart local v23    # "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv$iv":I
    .restart local v25    # "element$iv$iv":Ljava/lang/Object;
    .restart local v28    # "head$iv$iv$iv":I
    .restart local v29    # "tail$iv$iv$iv":I
    .restart local v30    # "state$iv$iv":J
    :cond_6
    move-object v6, v12

    .line 358
    .local v6, "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    :goto_3
    nop

    .line 359
    nop

    .line 360
    # invokes: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeSlowPath(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    invoke-static {v6, v2, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$removeSlowPath(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v7

    if-eqz v7, :cond_7

    move-object v6, v7

    .line 358
    goto :goto_3

    .line 324
    .end local v1    # "newHead$iv$iv":I
    .end local v2    # "head$iv$iv":I
    .end local v6    # "cur$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v12    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v13    # "$i$f$removeFirstOrNullIf":I
    .end local v14    # "$this$loop$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v15    # "$i$f$loop":I
    .end local v16    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv$iv":I
    .end local v18    # "$this$withState$iv$iv$iv":J
    .end local v20    # "this_$iv$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v21    # "$i$f$withState":I
    .end local v22    # "tail$iv$iv":I
    .end local v23    # "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv$iv":I
    .end local v25    # "element$iv$iv":Ljava/lang/Object;
    .end local v28    # "head$iv$iv$iv":I
    .end local v29    # "tail$iv$iv$iv":I
    .end local v30    # "state$iv$iv":J
    :cond_7
    :goto_4
    move-object/from16 v1, v25

    :goto_5
    nop

    .line 361
    .local v1, "result$iv":Ljava/lang/Object;
    sget-object v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    if-eq v1, v2, :cond_8

    .line 57
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    .end local v1    # "result$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$loop":I
    .end local v4    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v5    # "$i$a$-loop-LockFreeTaskQueue$removeFirstOrNullIf$1$iv":I
    .end local v17    # "$i$f$removeFirstOrNullIf":I
    .end local v24    # "$this$loop$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    return-object v1

    .line 362
    .restart local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    .restart local v1    # "result$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$loop":I
    .restart local v4    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .restart local v5    # "$i$a$-loop-LockFreeTaskQueue$removeFirstOrNullIf$1$iv":I
    .restart local v17    # "$i$f$removeFirstOrNullIf":I
    .restart local v24    # "$this$loop$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    :cond_8
    sget-object v2, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v6

    invoke-virtual {v2, v0, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 363
    .end local v1    # "result$iv":Ljava/lang/Object;
    nop

    .line 322
    .end local v4    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v5    # "$i$a$-loop-LockFreeTaskQueue$removeFirstOrNullIf$1$iv":I
    move/from16 v1, v17

    move-object/from16 v2, v24

    goto/16 :goto_0
.end method

.method public final removeFirstOrNullIf(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 31
    .param p1, "predicate"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;)TE;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .local v1, "$i$f$removeFirstOrNullIf":I
    const-string v2, "predicate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    move-object/from16 v2, p0

    .local v2, "$this$loop$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    const/4 v3, 0x0

    .line 364
    .local v3, "$i$f$loop":I
    :goto_0
    nop

    .line 365
    iget-object v4, v2, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$internal:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .local v4, "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v5, 0x0

    .line 62
    .local v5, "$i$a$-loop-LockFreeTaskQueue$removeFirstOrNullIf$1":I
    move-object v12, v4

    .local v12, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v13, 0x0

    .line 366
    .local v13, "$i$f$removeFirstOrNullIf":I
    move-object v14, v12

    .local v14, "$this$loop$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v15, 0x0

    .line 367
    .local v15, "$i$f$loop":I
    :goto_1
    nop

    .line 368
    iget-wide v10, v14, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$internal:J

    .local v10, "state$iv":J
    const/16 v16, 0x0

    .line 369
    .local v16, "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv":I
    const-wide/high16 v6, 0x1000000000000000L

    and-long/2addr v6, v10

    const-wide/16 v8, 0x0

    move/from16 v17, v1

    .end local v1    # "$i$f$removeFirstOrNullIf":I
    .local v17, "$i$f$removeFirstOrNullIf":I
    cmp-long v18, v6, v8

    if-eqz v18, :cond_0

    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    goto/16 :goto_5

    .line 370
    :cond_0
    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v6, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    move-wide/from16 v18, v10

    .local v18, "$this$withState$iv$iv":J
    move-object/from16 v20, v6

    .end local v6    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .local v20, "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    const/16 v21, 0x0

    .line 371
    .local v21, "$i$f$withState":I
    const-wide/32 v6, 0x3fffffff

    and-long v6, v18, v6

    const/4 v8, 0x0

    shr-long/2addr v6, v8

    long-to-int v8, v6

    .line 372
    .local v8, "head$iv$iv":I
    const-wide v6, 0xfffffffc0000000L

    and-long v6, v18, v6

    const/16 v9, 0x1e

    shr-long/2addr v6, v9

    long-to-int v9, v6

    .line 373
    .local v9, "tail$iv$iv":I
    move v6, v8

    .local v6, "head$iv":I
    move/from16 v22, v9

    .local v22, "tail$iv":I
    move v7, v6

    .end local v6    # "head$iv":I
    .local v7, "head$iv":I
    const/16 v23, 0x0

    .line 374
    .local v23, "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv":I
    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v6

    and-int v6, v22, v6

    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v24

    and-int v1, v7, v24

    if-ne v6, v1, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 375
    :cond_1
    iget-object v1, v12, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array$internal:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v6

    and-int/2addr v6, v7

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 376
    .local v1, "element$iv":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 378
    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getSingleConsumer$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x0

    goto/16 :goto_5

    .line 380
    :cond_2
    goto :goto_2

    .line 383
    :cond_3
    instance-of v6, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v6, :cond_4

    const/4 v1, 0x0

    goto :goto_5

    .line 385
    :cond_4
    nop

    .line 386
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    .line 388
    :cond_5
    add-int/lit8 v6, v7, 0x1

    const v24, 0x3fffffff    # 1.9999999f

    and-int v6, v6, v24

    .line 389
    .local v6, "newHead$iv":I
    sget-object v24, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state$FU$internal:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v0, v10, v11, v6}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateHead(JI)J

    move-result-wide v25

    move v0, v6

    .end local v6    # "newHead$iv":I
    .local v0, "newHead$iv":I
    move-object/from16 v6, v24

    move-object/from16 v24, v1

    move v1, v7

    .end local v7    # "head$iv":I
    .local v1, "head$iv":I
    .local v24, "element$iv":Ljava/lang/Object;
    move-object v7, v12

    move/from16 v27, v8

    move/from16 v28, v9

    .end local v8    # "head$iv$iv":I
    .end local v9    # "tail$iv$iv":I
    .local v27, "head$iv$iv":I
    .local v28, "tail$iv$iv":I
    move-wide v8, v10

    move-wide/from16 v29, v10

    .end local v10    # "state$iv":J
    .local v29, "state$iv":J
    move-wide/from16 v10, v25

    invoke-virtual/range {v6 .. v11}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 392
    iget-object v6, v12, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array$internal:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getMask$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)I

    move-result v7

    and-int/2addr v7, v1

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 393
    goto :goto_4

    .line 396
    :cond_6
    # getter for: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z
    invoke-static {v12}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$getSingleConsumer$p(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 367
    .end local v0    # "newHead$iv":I
    .end local v1    # "head$iv":I
    .end local v16    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv":I
    .end local v18    # "$this$withState$iv$iv":J
    .end local v20    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v21    # "$i$f$withState":I
    .end local v22    # "tail$iv":I
    .end local v23    # "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv":I
    .end local v24    # "element$iv":Ljava/lang/Object;
    .end local v27    # "head$iv$iv":I
    .end local v28    # "tail$iv$iv":I
    .end local v29    # "state$iv":J
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v17

    goto/16 :goto_1

    .line 398
    .restart local v0    # "newHead$iv":I
    .restart local v1    # "head$iv":I
    .restart local v16    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv":I
    .restart local v18    # "$this$withState$iv$iv":J
    .restart local v20    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .restart local v21    # "$i$f$withState":I
    .restart local v22    # "tail$iv":I
    .restart local v23    # "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv":I
    .restart local v24    # "element$iv":Ljava/lang/Object;
    .restart local v27    # "head$iv$iv":I
    .restart local v28    # "tail$iv$iv":I
    .restart local v29    # "state$iv":J
    :cond_7
    move-object v6, v12

    .line 399
    .local v6, "cur$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    :goto_3
    nop

    .line 400
    nop

    .line 401
    # invokes: Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeSlowPath(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    invoke-static {v6, v1, v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->access$removeSlowPath(Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v7

    if-eqz v7, :cond_8

    move-object v6, v7

    .line 399
    goto :goto_3

    .line 62
    .end local v0    # "newHead$iv":I
    .end local v1    # "head$iv":I
    .end local v6    # "cur$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v12    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v13    # "$i$f$removeFirstOrNullIf":I
    .end local v14    # "$this$loop$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v15    # "$i$f$loop":I
    .end local v16    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNullIf$1$iv":I
    .end local v18    # "$this$withState$iv$iv":J
    .end local v20    # "this_$iv$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v21    # "$i$f$withState":I
    .end local v22    # "tail$iv":I
    .end local v23    # "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNullIf$1$1$iv":I
    .end local v24    # "element$iv":Ljava/lang/Object;
    .end local v27    # "head$iv$iv":I
    .end local v28    # "tail$iv$iv":I
    .end local v29    # "state$iv":J
    :cond_8
    :goto_4
    move-object/from16 v1, v24

    :goto_5
    move-object v0, v1

    .line 63
    .local v0, "result":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_9

    return-object v0

    .line 64
    :cond_9
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->_cur$FU$internal:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-virtual {v1, v7, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .end local v0    # "result":Ljava/lang/Object;
    nop

    .line 364
    .end local v4    # "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v5    # "$i$a$-loop-LockFreeTaskQueue$removeFirstOrNullIf$1":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    goto/16 :goto_0
.end method
