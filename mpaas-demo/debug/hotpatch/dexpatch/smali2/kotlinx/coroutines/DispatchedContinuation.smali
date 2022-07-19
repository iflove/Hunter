.class public final Lkotlinx/coroutines/DispatchedContinuation;
.super Lkotlinx/coroutines/DispatchedTask;
.source "Dispatched.kt"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatched.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/DispatchedContinuation\n+ 2 Dispatched.kt\nkotlinx/coroutines/DispatchedKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,328:1\n148#1,12:394\n160#1,2:409\n162#1:412\n148#1,7:455\n166#1:462\n167#1:466\n168#1:469\n169#1:471\n22#2,15:329\n58#2,3:344\n61#2,13:352\n65#2,10:365\n37#2:375\n22#2,15:376\n58#2,3:391\n61#2,13:413\n65#2,10:426\n37#2:436\n22#2,15:437\n58#2,3:452\n326#2,2:467\n61#2,13:472\n65#2,10:485\n37#2:495\n326#2,2:504\n43#3,5:347\n43#3,3:406\n47#3:411\n43#3,3:463\n47#3:470\n43#3,5:496\n43#3,3:501\n47#3:506\n*E\n*S KotlinDebug\n*F\n+ 1 Dispatched.kt\nkotlinx/coroutines/DispatchedContinuation\n*L\n121#1,12:394\n121#1,2:409\n121#1:412\n138#1,7:455\n138#1:462\n138#1:466\n138#1:469\n138#1:471\n106#1,15:329\n106#1,3:344\n106#1,13:352\n106#1,10:365\n106#1:375\n121#1,15:376\n121#1,3:391\n121#1,13:413\n121#1,10:426\n121#1:436\n138#1,15:437\n138#1,3:452\n138#1,2:467\n138#1,13:472\n138#1,10:485\n138#1:495\n166#1,2:504\n106#1,5:347\n121#1,3:406\n121#1:411\n138#1,3:463\n138#1:470\n159#1,5:496\n166#1,3:501\n166#1:506\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u00042\u0008\u0012\u0004\u0012\u0002H\u00010\u0005B\u001b\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0005\u00a2\u0006\u0002\u0010\tJ\u0017\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\n\u0018\u00010\u001fj\u0004\u0018\u0001` H\u0016J\u0016\u0010!\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0086\u0008\u00a2\u0006\u0002\u0010\u001dJ\u0011\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0086\u0008J\t\u0010%\u001a\u00020&H\u0086\u0008J\u0016\u0010\'\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00028\u0000H\u0086\u0008\u00a2\u0006\u0002\u0010\u001dJ\u0011\u0010(\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020$H\u0086\u0008J\u001e\u0010)\u001a\u00020\u001a2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000+H\u0016\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001dJ\u000f\u0010,\u001a\u0004\u0018\u00010\u000bH\u0010\u00a2\u0006\u0002\u0008-J\u0008\u0010.\u001a\u00020/H\u0016R\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u000c\u0010\rR\u001c\u0010\u000e\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u000b8\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00058PX\u0090\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u00060"
    }
    d2 = {
        "Lkotlinx/coroutines/DispatchedContinuation;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "continuation",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V",
        "_state",
        "",
        "_state$annotations",
        "()V",
        "callerFrame",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "countOrElement",
        "delegate",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "dispatchYield",
        "",
        "value",
        "dispatchYield$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)V",
        "getStackTraceElement",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "resumeCancellable",
        "resumeCancellableWithException",
        "exception",
        "",
        "resumeCancelled",
        "",
        "resumeUndispatched",
        "resumeUndispatchedWithException",
        "resumeWith",
        "result",
        "Lkotlin/Result;",
        "takeState",
        "takeState$kotlinx_coroutines_core",
        "toString",
        "",
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
.field public _state:Ljava/lang/Object;

.field private final callerFrame:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

.field public final continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final countOrElement:Ljava/lang/Object;

.field public final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .param p1, "dispatcher"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "continuation"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    nop

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput-object p2, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    .line 82
    # getter for: Lkotlinx/coroutines/DispatchedKt;->UNDEFINED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 83
    instance-of v0, p2, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    iput-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->callerFrame:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    .line 86
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic _state$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final dispatchYield$kotlinx_coroutines_core(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 174
    .local v0, "context":Lkotlin/coroutines/CoroutineContext;
    iput-object p1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 175
    const/4 v1, 0x1

    iput v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 176
    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v2, p0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 83
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->callerFrame:Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 96
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public final resumeCancellable(Ljava/lang/Object;)V
    .locals 21
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 116
    .local v3, "$i$f$resumeCancellable":I
    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 117
    iput-object v2, v1, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 118
    iput v4, v1, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 119
    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    move-object v5, v1

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v5}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 121
    :cond_0
    const/4 v5, 0x1

    .local v5, "mode$iv":I
    move-object/from16 v6, p0

    .line 376
    .local v6, "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    const/4 v7, 0x0

    .local v7, "doYield$iv":Z
    const/4 v8, 0x0

    .line 379
    .local v8, "$i$f$executeUnconfined":I
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v9

    .line 381
    .local v9, "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    nop

    .line 382
    invoke-virtual {v9}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    iput-object v2, v6, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 385
    iput v5, v6, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 386
    move-object v0, v6

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v9, v0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 387
    goto/16 :goto_4

    .line 390
    :cond_1
    move-object v10, v6

    check-cast v10, Lkotlinx/coroutines/DispatchedTask;

    .local v10, "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    const/4 v11, 0x0

    .line 391
    .local v11, "$i$f$runUnconfinedEventLoop":I
    invoke-virtual {v9, v4}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 392
    nop

    .line 393
    const/4 v12, 0x0

    .line 122
    .local v12, "$i$a$-executeUnconfined-DispatchedContinuation$resumeCancellable$1":I
    move-object/from16 v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    const/4 v13, 0x0

    .line 394
    .local v13, "$i$f$resumeCancelled":I
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v14

    sget-object v15, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v15, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v14, v15}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v14

    check-cast v14, Lkotlinx/coroutines/Job;

    .line 395
    .local v14, "job$iv":Lkotlinx/coroutines/Job;
    if-eqz v14, :cond_2

    invoke-interface {v14}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v15

    if-nez v15, :cond_2

    .line 396
    invoke-interface {v14}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v15

    check-cast v15, Ljava/lang/Throwable;

    sget-object v16, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v15}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v15}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 397
    const/4 v15, 0x1

    goto :goto_0

    .line 400
    :cond_2
    const/4 v15, 0x0

    .end local v0    # "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v13    # "$i$f$resumeCancelled":I
    .end local v14    # "job$iv":Lkotlinx/coroutines/Job;
    :goto_0
    if-nez v15, :cond_3

    .line 123
    move-object/from16 v13, p1

    .local v13, "value$iv":Ljava/lang/Object;
    move-object/from16 v14, p0

    .local v14, "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    const/4 v15, 0x0

    .line 405
    .local v15, "$i$f$resumeUndispatched":I
    invoke-virtual {v14}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v4, v14, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v4, "countOrElement$iv$iv":Ljava/lang/Object;
    move-object/from16 v17, v0

    .local v17, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    const/16 v18, 0x0

    .line 406
    .local v18, "$i$f$withCoroutineContext":I
    move-object/from16 v1, v17

    .end local v17    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .local v1, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v17, v0

    .line 407
    .local v17, "oldValue$iv$iv":Ljava/lang/Object;
    nop

    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatched$1$iv":I
    move/from16 v19, v0

    .end local v0    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatched$1$iv":I
    .local v19, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatched$1$iv":I
    :try_start_1
    iget-object v0, v14, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v20, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v13}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 410
    .end local v19    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatched$1$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 411
    move-object/from16 v2, v17

    .end local v17    # "oldValue$iv$iv":Ljava/lang/Object;
    .local v2, "oldValue$iv$iv":Ljava/lang/Object;
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 412
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v4    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$f$withCoroutineContext":I
    goto :goto_1

    .line 411
    .restart local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v4    # "countOrElement$iv$iv":Ljava/lang/Object;
    .restart local v17    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v18    # "$i$f$withCoroutineContext":I
    :catchall_0
    move-exception v0

    move-object/from16 v2, v17

    .end local v17    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v3    # "$i$f$resumeCancellable":I
    .end local v5    # "mode$iv":I
    .end local v6    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v7    # "doYield$iv":Z
    .end local v8    # "$i$f$executeUnconfined":I
    .end local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .end local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v11    # "$i$f$runUnconfinedEventLoop":I
    .end local p1    # "value":Ljava/lang/Object;
    throw v0

    .line 125
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v4    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v13    # "value$iv":Ljava/lang/Object;
    .end local v14    # "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v15    # "$i$f$resumeUndispatched":I
    .end local v18    # "$i$f$withCoroutineContext":I
    .restart local v3    # "$i$f$resumeCancellable":I
    .restart local v5    # "mode$iv":I
    .restart local v6    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .restart local v7    # "doYield$iv":Z
    .restart local v8    # "$i$f$executeUnconfined":I
    .restart local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v11    # "$i$f$runUnconfinedEventLoop":I
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    :goto_1
    nop

    .end local v12    # "$i$a$-executeUnconfined-DispatchedContinuation$resumeCancellable$1":I
    nop

    .line 413
    :goto_2
    nop

    .line 415
    invoke-virtual {v9}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    .line 413
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    goto :goto_3

    :cond_4
    goto :goto_2

    .line 426
    :catchall_1
    move-exception v0

    .line 431
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v10, v0, v1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x1

    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 424
    :goto_3
    invoke-virtual {v9, v1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 425
    nop

    .line 435
    nop

    .line 436
    .end local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v11    # "$i$f$runUnconfinedEventLoop":I
    nop

    .line 382
    .end local v5    # "mode$iv":I
    .end local v6    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v7    # "doYield$iv":Z
    .end local v8    # "$i$f$executeUnconfined":I
    .end local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    :goto_4
    nop

    .line 126
    :goto_5
    nop

    .line 127
    return-void

    .line 425
    .restart local v5    # "mode$iv":I
    .restart local v6    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .restart local v7    # "doYield$iv":Z
    .restart local v8    # "$i$f$executeUnconfined":I
    .restart local v9    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v10    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v11    # "$i$f$runUnconfinedEventLoop":I
    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 424
    invoke-virtual {v9, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public final resumeCancellableWithException(Ljava/lang/Throwable;)V
    .locals 25
    .param p1, "exception"    # Ljava/lang/Throwable;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .local v3, "$i$f$resumeCancellableWithException":I
    const-string v0, "exception"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 132
    .local v4, "context":Lkotlin/coroutines/CoroutineContext;
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v0, v2, v5, v6, v7}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v0

    .line 133
    .local v8, "state":Lkotlinx/coroutines/CompletedExceptionally;
    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v0, v2, v5, v6, v7}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 135
    iput v9, v1, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 136
    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v5, v1

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v0, v4, v5}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 138
    :cond_0
    const/4 v6, 0x1

    .local v6, "mode$iv":I
    move-object/from16 v10, p0

    .line 437
    .local v10, "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    const/4 v11, 0x0

    .local v11, "doYield$iv":Z
    const/4 v12, 0x0

    .line 440
    .local v12, "$i$f$executeUnconfined":I
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v13

    .line 442
    .local v13, "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    nop

    .line 443
    invoke-virtual {v13}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iput-object v8, v10, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 446
    iput v6, v10, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 447
    move-object v0, v10

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v13, v0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 448
    goto/16 :goto_4

    .line 451
    :cond_1
    move-object v14, v10

    check-cast v14, Lkotlinx/coroutines/DispatchedTask;

    .local v14, "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    const/4 v15, 0x0

    .line 452
    .local v15, "$i$f$runUnconfinedEventLoop":I
    invoke-virtual {v13, v9}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 453
    nop

    .line 454
    const/16 v16, 0x0

    .line 139
    .local v16, "$i$a$-executeUnconfined-DispatchedContinuation$resumeCancellableWithException$1":I
    move-object/from16 v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    const/16 v17, 0x0

    .line 455
    .local v17, "$i$f$resumeCancelled":I
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    sget-object v19, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    move-object/from16 v7, v19

    check-cast v7, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v5, v7}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/Job;

    .line 456
    .local v5, "job$iv":Lkotlinx/coroutines/Job;
    if-eqz v5, :cond_2

    invoke-interface {v5}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v7

    if-nez v7, :cond_2

    .line 457
    invoke-interface {v5}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    sget-object v18, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v7}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 458
    const/4 v5, 0x1

    goto :goto_0

    .line 461
    :cond_2
    const/4 v5, 0x0

    .end local v0    # "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v5    # "job$iv":Lkotlinx/coroutines/Job;
    .end local v17    # "$i$f$resumeCancelled":I
    :goto_0
    if-nez v5, :cond_3

    .line 140
    move-object/from16 v5, p1

    .local v5, "exception$iv":Ljava/lang/Throwable;
    move-object/from16 v7, p0

    .local v7, "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    const/16 v17, 0x0

    .line 462
    .local v17, "$i$f$resumeUndispatchedWithException":I
    invoke-virtual {v7}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v9, v7, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v9, "countOrElement$iv$iv":Ljava/lang/Object;
    move-object/from16 v19, v0

    .local v19, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    const/16 v20, 0x0

    .line 463
    .local v20, "$i$f$withCoroutineContext":I
    move-object/from16 v1, v19

    .end local v19    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .local v1, "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    invoke-static {v1, v9}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v19, v0

    .line 464
    .local v19, "oldValue$iv$iv":Ljava/lang/Object;
    nop

    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatchedWithException$1$iv":I
    move/from16 v21, v0

    .end local v0    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatchedWithException$1$iv":I
    .local v21, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatchedWithException$1$iv":I
    :try_start_1
    iget-object v0, v7, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    move-object/from16 v22, v5

    .local v0, "$this$resumeWithStackTrace$iv$iv":Lkotlin/coroutines/Continuation;
    .local v22, "exception$iv$iv":Ljava/lang/Throwable;
    const/16 v23, 0x0

    .line 467
    .local v23, "$i$f$resumeWithStackTrace":I
    sget-object v24, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object/from16 v2, v22

    .end local v22    # "exception$iv$iv":Ljava/lang/Throwable;
    .local v2, "exception$iv$iv":Ljava/lang/Throwable;
    invoke-static {v2, v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v24, v2

    .end local v2    # "exception$iv$iv":Ljava/lang/Throwable;
    .local v24, "exception$iv$iv":Ljava/lang/Throwable;
    invoke-static/range {v22 .. v22}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 468
    nop

    .line 469
    .end local v0    # "$this$resumeWithStackTrace$iv$iv":Lkotlin/coroutines/Continuation;
    .end local v23    # "$i$f$resumeWithStackTrace":I
    .end local v24    # "exception$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v21    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatchedWithException$1$iv":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 470
    move-object/from16 v2, v19

    .end local v19    # "oldValue$iv$iv":Ljava/lang/Object;
    .local v2, "oldValue$iv$iv":Ljava/lang/Object;
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 471
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v9    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v20    # "$i$f$withCoroutineContext":I
    goto :goto_1

    .line 470
    .restart local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v9    # "countOrElement$iv$iv":Ljava/lang/Object;
    .restart local v19    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v20    # "$i$f$withCoroutineContext":I
    :catchall_0
    move-exception v0

    move-object/from16 v2, v19

    .end local v19    # "oldValue$iv$iv":Ljava/lang/Object;
    .restart local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .end local v3    # "$i$f$resumeCancellableWithException":I
    .end local v4    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v6    # "mode$iv":I
    .end local v8    # "state":Lkotlinx/coroutines/CompletedExceptionally;
    .end local v10    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v11    # "doYield$iv":Z
    .end local v12    # "$i$f$executeUnconfined":I
    .end local v13    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .end local v14    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v15    # "$i$f$runUnconfinedEventLoop":I
    .end local p1    # "exception":Ljava/lang/Throwable;
    throw v0

    .line 142
    .end local v1    # "context$iv$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "oldValue$iv$iv":Ljava/lang/Object;
    .end local v5    # "exception$iv":Ljava/lang/Throwable;
    .end local v7    # "this_$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v9    # "countOrElement$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$f$resumeUndispatchedWithException":I
    .end local v20    # "$i$f$withCoroutineContext":I
    .restart local v3    # "$i$f$resumeCancellableWithException":I
    .restart local v4    # "context":Lkotlin/coroutines/CoroutineContext;
    .restart local v6    # "mode$iv":I
    .restart local v8    # "state":Lkotlinx/coroutines/CompletedExceptionally;
    .restart local v10    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .restart local v11    # "doYield$iv":Z
    .restart local v12    # "$i$f$executeUnconfined":I
    .restart local v13    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v14    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v15    # "$i$f$runUnconfinedEventLoop":I
    .restart local p1    # "exception":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    nop

    .end local v16    # "$i$a$-executeUnconfined-DispatchedContinuation$resumeCancellableWithException$1":I
    nop

    .line 472
    :goto_2
    nop

    .line 474
    invoke-virtual {v13}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_4

    .line 472
    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    goto :goto_3

    :cond_4
    goto :goto_2

    .line 485
    :catchall_1
    move-exception v0

    .line 490
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v14, v0, v1}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x1

    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 483
    :goto_3
    invoke-virtual {v13, v1}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 484
    nop

    .line 494
    nop

    .line 495
    .end local v14    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v15    # "$i$f$runUnconfinedEventLoop":I
    nop

    .line 443
    .end local v6    # "mode$iv":I
    .end local v10    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v11    # "doYield$iv":Z
    .end local v12    # "$i$f$executeUnconfined":I
    .end local v13    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    :goto_4
    nop

    .line 143
    :goto_5
    nop

    .line 144
    return-void

    .line 484
    .restart local v6    # "mode$iv":I
    .restart local v10    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .restart local v11    # "doYield$iv":Z
    .restart local v12    # "$i$f$executeUnconfined":I
    .restart local v13    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v14    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v15    # "$i$f$runUnconfinedEventLoop":I
    :catchall_2
    move-exception v0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 483
    invoke-virtual {v13, v2}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    invoke-static {v2}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v1
.end method

.method public final resumeCancelled()Z
    .locals 4

    const/4 v0, 0x0

    .line 148
    .local v0, "$i$f$resumeCancelled":I
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    .line 149
    .local v1, "job":Lkotlinx/coroutines/Job;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 151
    const/4 v2, 0x1

    return v2

    .line 154
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public final resumeUndispatched(Ljava/lang/Object;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    .local v0, "$i$f$resumeUndispatched":I
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .local v1, "context$iv":Lkotlin/coroutines/CoroutineContext;
    iget-object v2, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v2, "countOrElement$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 496
    .local v3, "$i$f$withCoroutineContext":I
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 497
    .local v4, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 498
    const/4 v5, 0x0

    .line 160
    .local v5, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatched$1":I
    const/4 v6, 0x1

    :try_start_0
    iget-object v7, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 161
    .end local v5    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatched$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 500
    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 162
    .end local v1    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "countOrElement$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$withCoroutineContext":I
    .end local v4    # "oldValue$iv":Ljava/lang/Object;
    return-void

    .line 500
    .restart local v1    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v2    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$withCoroutineContext":I
    .restart local v4    # "oldValue$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5
.end method

.method public final resumeUndispatchedWithException(Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "exception"    # Ljava/lang/Throwable;

    const/4 v0, 0x0

    .local v0, "$i$f$resumeUndispatchedWithException":I
    const-string v1, "exception"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .local v1, "context$iv":Lkotlin/coroutines/CoroutineContext;
    iget-object v2, p0, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v2, "countOrElement$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 501
    .local v3, "$i$f$withCoroutineContext":I
    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 502
    .local v4, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 503
    const/4 v5, 0x0

    .line 167
    .local v5, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatchedWithException$1":I
    const/4 v6, 0x1

    :try_start_0
    iget-object v7, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    move-object v8, p1

    .local v7, "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .local v8, "exception$iv":Ljava/lang/Throwable;
    const/4 v9, 0x0

    .line 504
    .local v9, "$i$f$resumeWithStackTrace":I
    sget-object v10, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v8, v7}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object v10

    invoke-static {v10}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 505
    nop

    .line 168
    .end local v7    # "$this$resumeWithStackTrace$iv":Lkotlin/coroutines/Continuation;
    .end local v8    # "exception$iv":Ljava/lang/Throwable;
    .end local v9    # "$i$f$resumeWithStackTrace":I
    nop

    .end local v5    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeUndispatchedWithException$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    .line 506
    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    .line 169
    .end local v1    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v2    # "countOrElement$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$withCoroutineContext":I
    .end local v4    # "oldValue$iv":Ljava/lang/Object;
    return-void

    .line 506
    .restart local v1    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v2    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v3    # "$i$f$withCoroutineContext":I
    .restart local v4    # "oldValue$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v5

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyStart(I)V

    invoke-static {v1, v4}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->finallyEnd(I)V

    throw v5
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 17
    .param p1, "result"    # Ljava/lang/Object;

    .line 99
    move-object/from16 v1, p0

    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 100
    .local v2, "context":Lkotlin/coroutines/CoroutineContext;
    invoke-static/range {p1 .. p1}, Lkotlinx/coroutines/CompletedExceptionallyKt;->toState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 101
    .local v3, "state":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/CoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-object v3, v1, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    iput v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 104
    iget-object v0, v1, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    move-object v4, v1

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v4}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    move-object/from16 v1, p1

    goto/16 :goto_5

    .line 106
    :cond_0
    const/4 v0, 0x0

    .local v0, "mode$iv":I
    move-object/from16 v4, p0

    .local v4, "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    move v5, v0

    .line 329
    .end local v0    # "mode$iv":I
    .local v5, "mode$iv":I
    const/4 v6, 0x0

    .local v6, "doYield$iv":Z
    const/4 v7, 0x0

    .line 332
    .local v7, "$i$f$executeUnconfined":I
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->INSTANCE:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->getEventLoop$kotlinx_coroutines_core()Lkotlinx/coroutines/EventLoop;

    move-result-object v8

    .line 334
    .local v8, "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    nop

    .line 335
    invoke-virtual {v8}, Lkotlinx/coroutines/EventLoop;->isUnconfinedLoopActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    iput-object v3, v4, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 338
    iput v5, v4, Lkotlinx/coroutines/DispatchedContinuation;->resumeMode:I

    .line 339
    move-object v0, v4

    check-cast v0, Lkotlinx/coroutines/DispatchedTask;

    invoke-virtual {v8, v0}, Lkotlinx/coroutines/EventLoop;->dispatchUnconfined(Lkotlinx/coroutines/DispatchedTask;)V

    .line 340
    move-object/from16 v1, p1

    goto :goto_4

    .line 343
    :cond_1
    move-object v9, v4

    check-cast v9, Lkotlinx/coroutines/DispatchedTask;

    .local v9, "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    const/4 v10, 0x0

    .line 344
    .local v10, "$i$f$runUnconfinedEventLoop":I
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lkotlinx/coroutines/EventLoop;->incrementUseCount(Z)V

    .line 345
    nop

    .line 346
    const/4 v12, 0x0

    .line 107
    .local v12, "$i$a$-executeUnconfined-DispatchedContinuation$resumeWith$1":I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lkotlinx/coroutines/DispatchedContinuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iget-object v13, v1, Lkotlinx/coroutines/DispatchedContinuation;->countOrElement:Ljava/lang/Object;

    .local v13, "countOrElement$iv":Ljava/lang/Object;
    move-object v14, v0

    .local v14, "context$iv":Lkotlin/coroutines/CoroutineContext;
    const/4 v15, 0x0

    .line 347
    .local v15, "$i$f$withCoroutineContext":I
    invoke-static {v14, v13}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v0

    .line 348
    .local v16, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 349
    const/4 v0, 0x0

    .line 108
    .local v0, "$i$a$-withCoroutineContext-DispatchedContinuation$resumeWith$1$1":I
    :try_start_1
    iget-object v11, v1, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p1

    :try_start_2
    invoke-interface {v11, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 109
    .end local v0    # "$i$a$-withCoroutineContext-DispatchedContinuation$resumeWith$1$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    move-object/from16 v11, v16

    .end local v16    # "oldValue$iv":Ljava/lang/Object;
    .local v11, "oldValue$iv":Ljava/lang/Object;
    :try_start_3
    invoke-static {v14, v11}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 110
    .end local v11    # "oldValue$iv":Ljava/lang/Object;
    .end local v13    # "countOrElement$iv":Ljava/lang/Object;
    .end local v14    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v15    # "$i$f$withCoroutineContext":I
    nop

    .end local v12    # "$i$a$-executeUnconfined-DispatchedContinuation$resumeWith$1":I
    nop

    .line 352
    :goto_0
    nop

    .line 354
    invoke-virtual {v8}, Lkotlinx/coroutines/EventLoop;->processUnconfinedEvent()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 352
    :cond_2
    goto :goto_0

    .line 351
    .restart local v12    # "$i$a$-executeUnconfined-DispatchedContinuation$resumeWith$1":I
    .restart local v13    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v14    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v15    # "$i$f$withCoroutineContext":I
    .restart local v16    # "oldValue$iv":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p1

    :goto_1
    move-object/from16 v11, v16

    .end local v16    # "oldValue$iv":Ljava/lang/Object;
    .restart local v11    # "oldValue$iv":Ljava/lang/Object;
    invoke-static {v14, v11}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .end local v2    # "context":Lkotlin/coroutines/CoroutineContext;
    .end local v3    # "state":Ljava/lang/Object;
    .end local v4    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v5    # "mode$iv":I
    .end local v6    # "doYield$iv":Z
    .end local v7    # "$i$f$executeUnconfined":I
    .end local v8    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .end local v9    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v10    # "$i$f$runUnconfinedEventLoop":I
    .end local p1    # "result":Ljava/lang/Object;
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 365
    .end local v11    # "oldValue$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-executeUnconfined-DispatchedContinuation$resumeWith$1":I
    .end local v13    # "countOrElement$iv":Ljava/lang/Object;
    .end local v14    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v15    # "$i$f$withCoroutineContext":I
    .restart local v2    # "context":Lkotlin/coroutines/CoroutineContext;
    .restart local v3    # "state":Ljava/lang/Object;
    .restart local v4    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .restart local v5    # "mode$iv":I
    .restart local v6    # "doYield$iv":Z
    .restart local v7    # "$i$f$executeUnconfined":I
    .restart local v8    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v9    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v10    # "$i$f$runUnconfinedEventLoop":I
    .restart local p1    # "result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v1, p1

    .line 370
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    :goto_2
    const/4 v11, 0x0

    :try_start_4
    invoke-virtual {v9, v0, v11}, Lkotlinx/coroutines/DispatchedTask;->handleFatalException$kotlinx_coroutines_core(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 363
    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    :goto_3
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    .line 364
    nop

    .line 374
    nop

    .line 375
    .end local v9    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .end local v10    # "$i$f$runUnconfinedEventLoop":I
    nop

    .line 335
    .end local v4    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .end local v5    # "mode$iv":I
    .end local v6    # "doYield$iv":Z
    .end local v7    # "$i$f$executeUnconfined":I
    .end local v8    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    :goto_4
    nop

    .line 111
    :goto_5
    nop

    .line 112
    return-void

    .line 364
    .restart local v4    # "$this$executeUnconfined$iv":Lkotlinx/coroutines/DispatchedContinuation;
    .restart local v5    # "mode$iv":I
    .restart local v6    # "doYield$iv":Z
    .restart local v7    # "$i$f$executeUnconfined":I
    .restart local v8    # "eventLoop$iv":Lkotlinx/coroutines/EventLoop;
    .restart local v9    # "$this$runUnconfinedEventLoop$iv$iv":Lkotlinx/coroutines/DispatchedTask;
    .restart local v10    # "$i$f$runUnconfinedEventLoop":I
    :catchall_4
    move-exception v0

    move-object v11, v0

    .line 363
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lkotlinx/coroutines/EventLoop;->decrementUseCount(Z)V

    throw v11
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 3

    .line 89
    iget-object v0, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 90
    .local v0, "state":Ljava/lang/Object;
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .local v1, "$i$a$-assert-DispatchedContinuation$takeState$1":I
    # getter for: Lkotlinx/coroutines/DispatchedKt;->UNDEFINED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .end local v1    # "$i$a$-assert-DispatchedContinuation$takeState$1":I
    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 91
    :cond_2
    :goto_1
    # getter for: Lkotlinx/coroutines/DispatchedKt;->UNDEFINED:Lkotlinx/coroutines/internal/Symbol;
    invoke-static {}, Lkotlinx/coroutines/DispatchedKt;->access$getUNDEFINED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    iput-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->_state:Ljava/lang/Object;

    .line 92
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/DispatchedContinuation;->continuation:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
