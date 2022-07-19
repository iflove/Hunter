.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;
.source "CancellableContinuationImpl.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlinx/coroutines/CancellableContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 CompletionHandler.kt\nkotlinx/coroutines/CompletionHandlerKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,391:1\n129#1,10:393\n129#1,10:405\n129#1,10:419\n129#1,2:431\n131#1,8:434\n13#2:392\n22#2:433\n93#3,2:403\n277#3,2:415\n277#3,2:417\n93#3,2:429\n93#3,2:442\n93#3,2:444\n93#3,2:446\n*E\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n107#1,10:393\n114#1,10:405\n196#1,10:419\n207#1,2:431\n207#1,8:434\n88#1:392\n207#1:433\n114#1,2:403\n147#1,2:415\n157#1,2:417\n207#1,2:429\n255#1,2:442\n289#1,2:444\n312#1,2:446\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0011\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u00032\u00060\u0004j\u0002`\u0005B\u001d\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0019\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J!\u0010\u0019\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0012\u001a\u00020\u0011H\u0010\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u0010J\u0017\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0011\u0010%\u001a\u0004\u0018\u00010\u000cH\u0001\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010)\u001a\n\u0018\u00010\'j\u0004\u0018\u0001`(H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010-\u001a\u00028\u0001\"\u0004\u0008\u0001\u0010\u00012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000cH\u0010\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010.\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008.\u0010 J\u000f\u0010/\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008/\u0010 J\u001e\u00102\u001a\u00020\u000e2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020\u000e00H\u0082\u0008\u00a2\u0006\u0004\u00082\u00103J8\u00109\u001a\u00020\u000e2\'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000e04j\u0002`7H\u0016\u00a2\u0006\u0004\u00089\u0010:J8\u0010<\u001a\u00020;2\'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000e04j\u0002`7H\u0002\u00a2\u0006\u0004\u0008<\u0010=JB\u0010>\u001a\u00020\u000e2\'\u00108\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0011\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000e04j\u0002`72\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010A\u001a\u00020@H\u0014\u00a2\u0006\u0004\u0008A\u0010BJ:\u0010E\u001a\u00020\u000e2\u0006\u0010C\u001a\u00028\u00002!\u0010D\u001a\u001d\u0012\u0013\u0012\u00110\u0011\u00a2\u0006\u000c\u00085\u0012\u0008\u00086\u0012\u0004\u0008\u0008(\u0012\u0012\u0004\u0012\u00020\u000e04H\u0016\u00a2\u0006\u0004\u0008E\u0010FJ#\u0010H\u001a\u0004\u0018\u00010G2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008H\u0010IJ \u0010L\u001a\u00020\u000e2\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u00028\u00000JH\u0016\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008L\u0010\u0010J!\u0010P\u001a\u0004\u0018\u00010G2\u0006\u0010M\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0008H\u0000\u00a2\u0006\u0004\u0008N\u0010OJ\u0011\u0010R\u001a\u0004\u0018\u00010\u000cH\u0010\u00a2\u0006\u0004\u0008Q\u0010&J\u000f\u0010S\u001a\u00020@H\u0016\u00a2\u0006\u0004\u0008S\u0010BJ\u000f\u0010T\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008T\u0010UJ#\u0010T\u001a\u0004\u0018\u00010\u000c2\u0006\u0010C\u001a\u00028\u00002\u0008\u0010V\u001a\u0004\u0018\u00010\u000cH\u0016\u00a2\u0006\u0004\u0008T\u0010WJ\u0019\u0010X\u001a\u0004\u0018\u00010\u000c2\u0006\u0010M\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008X\u0010YJ\u000f\u0010Z\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008Z\u0010UJ\u001b\u0010\\\u001a\u00020\u000e*\u00020[2\u0006\u0010C\u001a\u00028\u0000H\u0016\u00a2\u0006\u0004\u0008\\\u0010]J\u001b\u0010^\u001a\u00020\u000e*\u00020[2\u0006\u0010M\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008^\u0010_R\u001e\u0010b\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00058V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008`\u0010aR\u001c\u0010d\u001a\u00020c8\u0016@\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008d\u0010e\u001a\u0004\u0008f\u0010gR\"\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00068\u0000@\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010h\u001a\u0004\u0008i\u0010jR\u0016\u0010k\u001a\u00020\u00138V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008k\u0010UR\u0016\u0010l\u001a\u00020\u00138V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008l\u0010UR\u0016\u0010m\u001a\u00020\u00138V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008m\u0010UR\u0018\u0010o\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008o\u0010pR\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u000c8@@\u0000X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008q\u0010&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006r"
    }
    d2 = {
        "Lkotlinx/coroutines/CancellableContinuationImpl;",
        "T",
        "Lkotlinx/coroutines/DispatchedTask;",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/internal/CoroutineStackFrame;",
        "Lkotlin/coroutines/Continuation;",
        "delegate",
        "",
        "resumeMode",
        "<init>",
        "(Lkotlin/coroutines/Continuation;I)V",
        "",
        "proposedUpdate",
        "",
        "alreadyResumedError",
        "(Ljava/lang/Object;)V",
        "",
        "cause",
        "",
        "cancel",
        "(Ljava/lang/Throwable;)Z",
        "state",
        "cancelResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;Ljava/lang/Throwable;)V",
        "cancelResult",
        "token",
        "completeResume",
        "mode",
        "dispatchResume",
        "(I)V",
        "disposeParentHandle",
        "()V",
        "Lkotlinx/coroutines/Job;",
        "parent",
        "getContinuationCancellationCause",
        "(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;",
        "getResult",
        "()Ljava/lang/Object;",
        "Ljava/lang/StackTraceElement;",
        "Lkotlinx/coroutines/internal/StackTraceElement;",
        "getStackTraceElement",
        "()Ljava/lang/StackTraceElement;",
        "getSuccessfulResult$kotlinx_coroutines_core",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "getSuccessfulResult",
        "initCancellability",
        "installParentCancellationHandler",
        "Lkotlin/Function0;",
        "block",
        "invokeHandlerSafely",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "Lkotlinx/coroutines/CompletionHandler;",
        "handler",
        "invokeOnCancellation",
        "(Lkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/CancelHandler;",
        "makeHandler",
        "(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;",
        "multipleHandlersError",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V",
        "",
        "nameString",
        "()Ljava/lang/String;",
        "value",
        "onCancellation",
        "resume",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V",
        "Lkotlinx/coroutines/CancelledContinuation;",
        "resumeImpl",
        "(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;",
        "Lkotlin/Result;",
        "result",
        "resumeWith",
        "exception",
        "resumeWithExceptionMode$kotlinx_coroutines_core",
        "(Ljava/lang/Throwable;I)Lkotlinx/coroutines/CancelledContinuation;",
        "resumeWithExceptionMode",
        "takeState$kotlinx_coroutines_core",
        "takeState",
        "toString",
        "tryResume",
        "()Z",
        "idempotent",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "tryResumeWithException",
        "(Ljava/lang/Throwable;)Ljava/lang/Object;",
        "trySuspend",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "resumeUndispatched",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V",
        "resumeUndispatchedWithException",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V",
        "getCallerFrame",
        "()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "callerFrame",
        "Lkotlin/coroutines/CoroutineContext;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "Lkotlin/coroutines/Continuation;",
        "getDelegate$kotlinx_coroutines_core",
        "()Lkotlin/coroutines/Continuation;",
        "isActive",
        "isCancelled",
        "isCompleted",
        "Lkotlinx/coroutines/DisposableHandle;",
        "parentHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "getState$kotlinx_coroutines_core",
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
.field private static final _decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile _decision:I

.field private volatile _state:Ljava/lang/Object;

.field private final context:Lkotlin/coroutines/CoroutineContext;

.field private final delegate:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile parentHandle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    sput-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 1
    .param p1, "delegate"    # Lkotlin/coroutines/Continuation;
    .param p2, "resumeMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    nop

    .line 24
    invoke-direct {p0, p2}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    .line 25
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .line 64
    sget-object v0, Lkotlinx/coroutines/Active;->INSTANCE:Lkotlinx/coroutines/Active;

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    return-void
.end method

.method private final alreadyResumedError(Ljava/lang/Object;)V
    .locals 2
    .param p1, "proposedUpdate"    # Ljava/lang/Object;

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final dispatchResume(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 248
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->tryResume()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 250
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/DispatchedKt;->dispatch(Lkotlinx/coroutines/DispatchedTask;I)V

    .line 251
    return-void
.end method

.method private final disposeParentHandle()V
    .locals 3

    .line 282
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    .local v0, "it":Lkotlinx/coroutines/DisposableHandle;
    const/4 v1, 0x0

    .line 283
    .local v1, "$i$a$-let-CancellableContinuationImpl$disposeParentHandle$1":I
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 284
    sget-object v2, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v2, Lkotlinx/coroutines/DisposableHandle;

    iput-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 285
    .end local v0    # "it":Lkotlinx/coroutines/DisposableHandle;
    .end local v1    # "$i$a$-let-CancellableContinuationImpl$disposeParentHandle$1":I
    nop

    .line 282
    nop

    .line 286
    :cond_0
    return-void
.end method

.method private final installParentCancellationHandler()V
    .locals 7

    .line 83
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_2

    .line 85
    .local v0, "parent":Lkotlinx/coroutines/Job;
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->start()Z

    .line 86
    nop

    .line 87
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v1, Lkotlinx/coroutines/ChildContinuation;

    invoke-direct {v1, v0, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v1, Lkotlinx/coroutines/CompletionHandlerBase;

    .local v1, "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    const/4 v4, 0x0

    .line 392
    .local v4, "$i$f$getAsHandler":I
    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .end local v1    # "$this$asHandler$iv":Lkotlinx/coroutines/CompletionHandlerBase;
    .end local v4    # "$i$f$getAsHandler":I
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 86
    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v1

    .line 90
    .local v1, "handle":Lkotlinx/coroutines/DisposableHandle;
    iput-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 92
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {v1}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    .line 94
    sget-object v2, Lkotlinx/coroutines/NonDisposableHandle;->INSTANCE:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v2, Lkotlinx/coroutines/DisposableHandle;

    iput-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->parentHandle:Lkotlinx/coroutines/DisposableHandle;

    .line 96
    :cond_1
    return-void

    .line 84
    .end local v0    # "parent":Lkotlinx/coroutines/Job;
    .end local v1    # "handle":Lkotlinx/coroutines/DisposableHandle;
    :cond_2
    return-void
.end method

.method private final invokeHandlerSafely(Lkotlin/jvm/functions/Function0;)V
    .locals 6
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    .local v0, "$i$f$invokeHandlerSafely":I
    nop

    .line 130
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    .line 133
    .local v1, "ex":Ljava/lang/Throwable;
    nop

    .line 134
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 135
    new-instance v3, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in cancellation handler for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 133
    invoke-static {v2, v3}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 137
    .end local v1    # "ex":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 138
    return-void
.end method

.method private final makeHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;
    .locals 1
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/CancelHandler;"
        }
    .end annotation

    .line 245
    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    :goto_0
    return-object v0
.end method

.method private final multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .param p2, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", already has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method private final resumeImpl(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;
    .locals 5
    .param p1, "proposedUpdate"    # Ljava/lang/Object;
    .param p2, "resumeMode"    # I

    .line 255
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 442
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 443
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 256
    .local v3, "$i$a$-loop-CancellableContinuationImpl$resumeImpl$1":I
    nop

    .line 257
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    if-eqz v4, :cond_1

    .line 258
    sget-object v4, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 259
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->disposeParentHandle()V

    .line 260
    invoke-direct {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 261
    const/4 v4, 0x0

    return-object v4

    .line 263
    :cond_1
    instance-of v4, v2, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v4, :cond_2

    .line 269
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v4}, Lkotlinx/coroutines/CancelledContinuation;->makeResumed()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CancelledContinuation;

    return-object v4

    .line 271
    :cond_2
    nop

    .line 272
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->alreadyResumedError(Ljava/lang/Object;)V

    .line 273
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$resumeImpl$1":I
    :goto_1
    nop

    .line 442
    goto :goto_0
.end method

.method private final tryResume()Z
    .locals 8

    .line 157
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 417
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 418
    iget v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .local v2, "decision":I
    const/4 v3, 0x0

    .line 158
    .local v3, "$i$a$-loop-CancellableContinuationImpl$tryResume$1":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v5, :cond_0

    .line 160
    return v4

    .line 161
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already resumed"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 159
    :cond_1
    sget-object v6, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v7, 0x2

    invoke-virtual {v6, p0, v4, v7}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    .line 163
    .end local v2    # "decision":I
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResume$1":I
    :cond_2
    nop

    .line 417
    goto :goto_0
.end method

.method private final trySuspend()Z
    .locals 7

    .line 147
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 415
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 416
    iget v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision:I

    .local v2, "decision":I
    const/4 v3, 0x0

    .line 148
    .local v3, "$i$a$-loop-CancellableContinuationImpl$trySuspend$1":I
    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 150
    return v4

    .line 151
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Already suspended"

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 149
    :cond_1
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_decision$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v6, 0x1

    invoke-virtual {v5, p0, v4, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_2

    return v6

    .line 153
    .end local v2    # "decision":I
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$trySuspend$1":I
    :cond_2
    nop

    .line 415
    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/Throwable;)Z
    .locals 13
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 114
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 403
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 404
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 115
    .local v3, "$i$a$-loop-CancellableContinuationImpl$cancel$1":I
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    .line 117
    :cond_0
    new-instance v4, Lkotlinx/coroutines/CancelledContinuation;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    instance-of v7, v2, Lkotlinx/coroutines/CancelHandler;

    invoke-direct {v4, v6, p1, v7}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 118
    .local v4, "update":Lkotlinx/coroutines/CancelledContinuation;
    sget-object v6, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v6, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 403
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$cancel$1":I
    .end local v4    # "update":Lkotlinx/coroutines/CancelledContinuation;
    goto :goto_0

    .line 120
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-CancellableContinuationImpl$cancel$1":I
    .restart local v4    # "update":Lkotlinx/coroutines/CancelledContinuation;
    :cond_1
    instance-of v6, v2, Lkotlinx/coroutines/CancelHandler;

    if-eqz v6, :cond_2

    move-object v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v7, 0x0

    .line 405
    .local v7, "$i$f$invokeHandlerSafely":I
    nop

    .line 406
    const/4 v8, 0x0

    .line 120
    .local v8, "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$cancel$1$1":I
    :try_start_0
    move-object v9, v2

    check-cast v9, Lkotlinx/coroutines/CancelHandler;

    invoke-virtual {v9, p1}, Lkotlinx/coroutines/CancelHandler;->invoke(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v8    # "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$cancel$1$1":I
    goto :goto_1

    .line 407
    :catchall_0
    move-exception v8

    .line 409
    .local v8, "ex$iv":Ljava/lang/Throwable;
    nop

    .line 410
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v9

    .line 411
    new-instance v10, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in cancellation handler for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v8}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v10, Ljava/lang/Throwable;

    .line 409
    invoke-static {v9, v10}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 413
    .end local v8    # "ex$iv":Ljava/lang/Throwable;
    :goto_1
    nop

    .line 414
    nop

    .line 122
    .end local v6    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v7    # "$i$f$invokeHandlerSafely":I
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->disposeParentHandle()V

    .line 123
    invoke-direct {p0, v5}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 124
    const/4 v5, 0x1

    return v5
.end method

.method public cancelResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "state"    # Ljava/lang/Object;
    .param p2, "cause"    # Ljava/lang/Throwable;

    const-string v0, "cause"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    instance-of v0, p1, Lkotlinx/coroutines/CompletedWithCancellation;

    if-eqz v0, :cond_0

    .line 107
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 393
    .local v1, "$i$f$invokeHandlerSafely":I
    nop

    .line 394
    const/4 v2, 0x0

    .line 108
    .local v2, "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$cancelResult$1":I
    :try_start_0
    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/CompletedWithCancellation;

    iget-object v3, v3, Lkotlinx/coroutines/CompletedWithCancellation;->onCancellation:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    nop

    .end local v2    # "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$cancelResult$1":I
    goto :goto_0

    .line 395
    :catchall_0
    move-exception v2

    .line 397
    .local v2, "ex$iv":Ljava/lang/Throwable;
    nop

    .line 398
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v3

    .line 399
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in cancellation handler for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 397
    invoke-static {v3, v4}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 401
    .end local v2    # "ex$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 111
    .end local v0    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v1    # "$i$f$invokeHandlerSafely":I
    :cond_0
    return-void
.end method

.method public completeResume(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->dispatchResume(I)V

    .line 328
    return-void
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 25
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->context:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getContinuationCancellationCause(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "parent"    # Lkotlinx/coroutines/Job;

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getDelegate$kotlinx_coroutines_core()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 5

    .line 168
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->installParentCancellationHandler()V

    .line 169
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->trySuspend()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    .line 172
    .local v0, "state":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_3

    .line 177
    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 178
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/Job;->Key:Lkotlinx/coroutines/Job$Key;

    check-cast v2, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/Job;

    .line 179
    .local v1, "job":Lkotlinx/coroutines/Job;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->getCancellationException()Ljava/util/concurrent/CancellationException;

    move-result-object v2

    .line 181
    .local v2, "cause":Ljava/util/concurrent/CancellationException;
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {p0, v0, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;->cancelResult$kotlinx_coroutines_core(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 182
    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-static {v3, v4}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object v3

    throw v3

    .line 185
    .end local v1    # "job":Lkotlinx/coroutines/Job;
    .end local v2    # "cause":Ljava/util/concurrent/CancellationException;
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 172
    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->recoverStackTrace(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    return-object v0
.end method

.method public getSuccessfulResult$kotlinx_coroutines_core(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 342
    nop

    .line 343
    instance-of v0, p1, Lkotlinx/coroutines/CompletedIdempotentResult;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedIdempotentResult;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedIdempotentResult;->result:Ljava/lang/Object;

    goto :goto_0

    .line 344
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/CompletedWithCancellation;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/CompletedWithCancellation;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedWithCancellation;->result:Ljava/lang/Object;

    goto :goto_0

    .line 345
    :cond_1
    move-object v0, p1

    .line 342
    :goto_0
    nop

    .line 346
    return-object v0
.end method

.method public synthetic initCancellability()V
    .locals 0

    .line 79
    return-void
.end method

.method public invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p1, "handler"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancelHandler;

    .line 207
    .local v1, "handleCache":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v3, 0x0

    .line 429
    .local v3, "$i$f$loop":I
    :goto_0
    nop

    .line 430
    iget-object v4, v2, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v4, "state":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 208
    .local v5, "$i$a$-loop-CancellableContinuationImpl$invokeOnCancellation$1":I
    nop

    .line 209
    instance-of v6, v4, Lkotlinx/coroutines/Active;

    if-eqz v6, :cond_2

    .line 210
    if-eqz v1, :cond_0

    move-object v6, v1

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->makeHandler(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;

    move-result-object v6

    move-object v7, v6

    .local v7, "it":Lkotlinx/coroutines/CancelHandler;
    const/4 v8, 0x0

    .local v8, "$i$a$-also-CancellableContinuationImpl$invokeOnCancellation$1$node$1":I
    move-object v1, v7

    move-object v12, v6

    move-object v6, v1

    move-object v1, v12

    .line 211
    .end local v7    # "it":Lkotlinx/coroutines/CancelHandler;
    .end local v8    # "$i$a$-also-CancellableContinuationImpl$invokeOnCancellation$1$node$1":I
    .local v1, "node":Lkotlinx/coroutines/CancelHandler;
    .local v6, "handleCache":Ljava/lang/Object;
    :goto_1
    sget-object v7, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, p0, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    return-void

    :cond_1
    move-object v1, v6

    goto :goto_2

    .line 213
    .end local v6    # "handleCache":Ljava/lang/Object;
    .local v1, "handleCache":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Lkotlinx/coroutines/CancelHandler;

    if-eqz v6, :cond_3

    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 237
    .end local v4    # "state":Ljava/lang/Object;
    .end local v5    # "$i$a$-loop-CancellableContinuationImpl$invokeOnCancellation$1":I
    :goto_2
    nop

    .line 429
    goto :goto_0

    .line 214
    .restart local v4    # "state":Ljava/lang/Object;
    .restart local v5    # "$i$a$-loop-CancellableContinuationImpl$invokeOnCancellation$1":I
    :cond_3
    instance-of v6, v4, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v6, :cond_7

    .line 220
    move-object v6, v4

    check-cast v6, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v6}, Lkotlinx/coroutines/CancelledContinuation;->makeHandled()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->multipleHandlersError(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 225
    :cond_4
    move-object v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v7, 0x0

    .line 431
    .local v7, "$i$f$invokeHandlerSafely":I
    nop

    .line 432
    const/4 v8, 0x0

    .line 225
    .local v8, "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$invokeOnCancellation$1$1":I
    :try_start_0
    instance-of v9, v4, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v9, :cond_5

    move-object v9, v0

    goto :goto_3

    :cond_5
    move-object v9, v4

    :goto_3
    check-cast v9, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v9, :cond_6

    iget-object v0, v9, Lkotlinx/coroutines/CompletedExceptionally;->cause:Ljava/lang/Throwable;

    .local v0, "cause$iv":Ljava/lang/Throwable;
    :cond_6
    move-object v9, p1

    .local v9, "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    const/4 v10, 0x0

    .line 433
    .local v10, "$i$f$invokeIt":I
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    nop

    .end local v0    # "cause$iv":Ljava/lang/Throwable;
    .end local v8    # "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$invokeOnCancellation$1$1":I
    .end local v9    # "$this$invokeIt$iv":Lkotlin/jvm/functions/Function1;
    .end local v10    # "$i$f$invokeIt":I
    goto :goto_4

    .line 434
    :catchall_0
    move-exception v0

    .line 436
    .local v0, "ex$iv":Ljava/lang/Throwable;
    nop

    .line 437
    invoke-virtual {v6}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v8

    .line 438
    new-instance v9, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in cancellation handler for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v9, Ljava/lang/Throwable;

    .line 436
    invoke-static {v8, v9}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 440
    .end local v0    # "ex$iv":Ljava/lang/Throwable;
    :goto_4
    nop

    .line 441
    nop

    .line 226
    .end local v6    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v7    # "$i$f$invokeHandlerSafely":I
    return-void

    .line 234
    :cond_7
    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/CancelledContinuation;

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected nameString()Ljava/lang/String;
    .locals 1

    .line 353
    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public resume(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "onCancellation"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onCancellation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lkotlinx/coroutines/CompletedWithCancellation;

    invoke-direct {v0, p1, p2}, Lkotlinx/coroutines/CompletedWithCancellation;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;

    move-result-object v0

    .line 194
    .local v0, "cancelled":Lkotlinx/coroutines/CancelledContinuation;
    if-eqz v0, :cond_0

    .line 196
    move-object v1, p0

    .local v1, "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v2, 0x0

    .line 419
    .local v2, "$i$f$invokeHandlerSafely":I
    nop

    .line 420
    const/4 v3, 0x0

    .line 197
    .local v3, "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$resume$1":I
    :try_start_0
    iget-object v4, v0, Lkotlinx/coroutines/CancelledContinuation;->cause:Ljava/lang/Throwable;

    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    nop

    .end local v3    # "$i$a$-invokeHandlerSafely-CancellableContinuationImpl$resume$1":I
    goto :goto_0

    .line 421
    :catchall_0
    move-exception v3

    .line 423
    .local v3, "ex$iv":Ljava/lang/Throwable;
    nop

    .line 424
    invoke-virtual {v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    .line 425
    new-instance v5, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in cancellation handler for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v5, Ljava/lang/Throwable;

    .line 423
    invoke-static {v4, v5}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->handleCoroutineException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V

    .line 427
    .end local v3    # "ex$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 200
    .end local v1    # "this_$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    .end local v2    # "$i$f$invokeHandlerSafely":I
    :cond_0
    return-void
.end method

.method public resumeUndispatched(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 3
    .param p1, "$this$resumeUndispatched"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "$this$resumeUndispatched"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/DispatchedContinuation;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/DispatchedContinuation;

    .line 332
    .local v0, "dc":Lkotlinx/coroutines/DispatchedContinuation;
    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    :goto_0
    invoke-direct {p0, p2, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;

    .line 333
    return-void
.end method

.method public resumeUndispatchedWithException(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "$this$resumeUndispatchedWithException"    # Lkotlinx/coroutines/CoroutineDispatcher;
    .param p2, "exception"    # Ljava/lang/Throwable;

    const-string v0, "$this$resumeUndispatchedWithException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/DispatchedContinuation;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/DispatchedContinuation;

    .line 337
    .local v0, "dc":Lkotlinx/coroutines/DispatchedContinuation;
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v1, p2, v3, v4, v2}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v0, :cond_1

    iget-object v2, v0, Lkotlinx/coroutines/DispatchedContinuation;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    iget v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    :goto_0
    invoke-direct {p0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;

    .line 338
    return-void
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Lkotlinx/coroutines/CompletedExceptionallyKt;->toState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeMode:I

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;

    .line 190
    return-void
.end method

.method public final resumeWithExceptionMode$kotlinx_coroutines_core(Ljava/lang/Throwable;I)Lkotlinx/coroutines/CancelledContinuation;
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "mode"    # I

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeImpl(Ljava/lang/Object;I)Lkotlinx/coroutines/CancelledContinuation;

    move-result-object v0

    return-object v0
.end method

.method public takeState$kotlinx_coroutines_core()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->nameString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->delegate:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugStringsKt;->toDebugString(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getState$kotlinx_coroutines_core()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "idempotent"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 289
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 444
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 445
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 290
    .local v3, "$i$a$-loop-CancellableContinuationImpl$tryResume$2":I
    nop

    .line 291
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    if-eqz v4, :cond_2

    .line 292
    if-nez p2, :cond_0

    move-object v4, p1

    goto :goto_1

    .line 293
    :cond_0
    new-instance v4, Lkotlinx/coroutines/CompletedIdempotentResult;

    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/NotCompleted;

    invoke-direct {v4, p2, p1, v5}, Lkotlinx/coroutines/CompletedIdempotentResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/NotCompleted;)V

    .line 292
    :goto_1
    nop

    .line 294
    .local v4, "update":Ljava/lang/Object;
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 444
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResume$2":I
    .end local v4    # "update":Ljava/lang/Object;
    goto :goto_0

    .line 295
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResume$2":I
    .restart local v4    # "update":Ljava/lang/Object;
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->disposeParentHandle()V

    .line 296
    return-object v2

    .line 298
    .end local v4    # "update":Ljava/lang/Object;
    :cond_2
    instance-of v4, v2, Lkotlinx/coroutines/CompletedIdempotentResult;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    .line 299
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CompletedIdempotentResult;

    iget-object v4, v4, Lkotlinx/coroutines/CompletedIdempotentResult;->idempotentResume:Ljava/lang/Object;

    if-ne v4, p2, :cond_6

    .line 300
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .local v4, "$i$a$-assert-CancellableContinuationImpl$tryResume$2$1":I
    move-object v5, v2

    check-cast v5, Lkotlinx/coroutines/CompletedIdempotentResult;

    iget-object v5, v5, Lkotlinx/coroutines/CompletedIdempotentResult;->result:Ljava/lang/Object;

    if-ne v5, p1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .end local v4    # "$i$a$-assert-CancellableContinuationImpl$tryResume$2$1":I
    :goto_2
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    check-cast v4, Ljava/lang/Throwable;

    throw v4

    .line 301
    :cond_5
    :goto_3
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/CompletedIdempotentResult;

    iget-object v5, v4, Lkotlinx/coroutines/CompletedIdempotentResult;->token:Lkotlinx/coroutines/NotCompleted;

    goto :goto_4

    .line 303
    :cond_6
    nop

    .line 299
    :goto_4
    return-object v5

    .line 306
    :cond_7
    return-object v5
.end method

.method public tryResumeWithException(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 8
    .param p1, "exception"    # Ljava/lang/Throwable;

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    move-object v0, p0

    .local v0, "$this$loop$iv":Lkotlinx/coroutines/CancellableContinuationImpl;
    const/4 v1, 0x0

    .line 446
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 447
    iget-object v2, v0, Lkotlinx/coroutines/CancellableContinuationImpl;->_state:Ljava/lang/Object;

    .local v2, "state":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 313
    .local v3, "$i$a$-loop-CancellableContinuationImpl$tryResumeWithException$1":I
    nop

    .line 314
    instance-of v4, v2, Lkotlinx/coroutines/NotCompleted;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 315
    new-instance v4, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-direct {v4, p1, v6, v7, v5}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 316
    .local v4, "update":Lkotlinx/coroutines/CompletedExceptionally;
    sget-object v5, Lkotlinx/coroutines/CancellableContinuationImpl;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 446
    .end local v2    # "state":Ljava/lang/Object;
    .end local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResumeWithException$1":I
    .end local v4    # "update":Lkotlinx/coroutines/CompletedExceptionally;
    goto :goto_0

    .line 317
    .restart local v2    # "state":Ljava/lang/Object;
    .restart local v3    # "$i$a$-loop-CancellableContinuationImpl$tryResumeWithException$1":I
    .restart local v4    # "update":Lkotlinx/coroutines/CompletedExceptionally;
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->disposeParentHandle()V

    .line 318
    return-object v2

    .line 320
    .end local v4    # "update":Lkotlinx/coroutines/CompletedExceptionally;
    :cond_1
    return-object v5
.end method
