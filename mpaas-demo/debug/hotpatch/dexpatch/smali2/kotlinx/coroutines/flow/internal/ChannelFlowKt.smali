.class public final Lkotlinx/coroutines/flow/internal/ChannelFlowKt;
.super Ljava/lang/Object;
.source "ChannelFlow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n+ 2 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,171:1\n43#2,5:172\n*E\n*S KotlinDebug\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlowKt\n*L\n164#1,5:172\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a[\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001\"\u0004\u0008\u0001\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\"\u0010\u0007\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00082\u0006\u0010\n\u001a\u0002H\u0002H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000b\u001a\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\r\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u000eH\u0000\u001a&\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u0010\"\u0004\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0004H\u0002\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "withContextUndispatched",
        "T",
        "V",
        "newContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "countOrElement",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "value",
        "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "asChannelFlow",
        "Lkotlinx/coroutines/flow/internal/ChannelFlow;",
        "Lkotlinx/coroutines/flow/Flow;",
        "withUndispatchedContextCollector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emitContext",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final synthetic access$withUndispatchedContextCollector(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;
    .locals 1
    .param p0, "$this$access_u24withUndispatchedContextCollector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "emitContext"    # Lkotlin/coroutines/CoroutineContext;

    .line 1
    invoke-static {p0, p1}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->withUndispatchedContextCollector(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;

    move-result-object v0

    return-object v0
.end method

.method public static final asChannelFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlow;
    .locals 7
    .param p0, "$this$asChannelFlow"    # Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;)",
            "Lkotlinx/coroutines/flow/internal/ChannelFlow<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "$this$asChannelFlow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    instance-of v0, p0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v0, Lkotlinx/coroutines/flow/internal/ChannelFlow;

    :goto_1
    return-object v0
.end method

.method static final synthetic withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .param p0, "newContext"    # Lkotlin/coroutines/CoroutineContext;
    .param p1, "countOrElement"    # Ljava/lang/Object;
    .param p2, "block"    # Lkotlin/jvm/functions/Function2;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-TV;-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TV;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 164
    move-object/from16 v8, p2

    move-object/from16 v3, p4

    .local v3, "uCont":Lkotlin/coroutines/Continuation;
    const/4 v9, 0x0

    .line 165
    .local v9, "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    move-object/from16 v10, p1

    .local v10, "countOrElement$iv":Ljava/lang/Object;
    move-object v11, p0

    .local v11, "context$iv":Lkotlin/coroutines/CoroutineContext;
    const/4 v12, 0x0

    .line 172
    .local v12, "$i$f$withCoroutineContext":I
    invoke-static {v11, v10}, Lkotlinx/coroutines/internal/ThreadContextKt;->updateThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 173
    .local v13, "oldValue$iv":Ljava/lang/Object;
    nop

    .line 174
    const/4 v0, 0x0

    .line 166
    .local v0, "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    :try_start_0
    new-instance v14, Lkotlinx/coroutines/flow/internal/ChannelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;

    move-object v1, v14

    move-object v2, p0

    move-object v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt$withContextUndispatched$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;)V

    check-cast v14, Lkotlin/coroutines/Continuation;

    if-eqz v8, :cond_1

    const/4 v1, 0x2

    invoke-static {v8, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p3

    :try_start_1
    invoke-interface {v1, v2, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .end local v0    # "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    nop

    .line 176
    invoke-static {v11, v13}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    .line 169
    .end local v10    # "countOrElement$iv":Ljava/lang/Object;
    .end local v11    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v12    # "$i$f$withCoroutineContext":I
    .end local v13    # "oldValue$iv":Ljava/lang/Object;
    nop

    .line 164
    .end local v3    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_0

    invoke-static/range {p4 .. p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    .line 170
    :cond_0
    return-object v1

    .line 166
    .restart local v0    # "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    .restart local v3    # "uCont":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    .restart local v10    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v11    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v12    # "$i$f$withCoroutineContext":I
    .restart local v13    # "oldValue$iv":Ljava/lang/Object;
    :cond_1
    move-object/from16 v2, p3

    :try_start_2
    new-instance v1, Lkotlin/TypeCastException;

    const-string v4, "null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?"

    invoke-direct {v1, v4}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    .end local v3    # "uCont":Lkotlin/coroutines/Continuation;
    .end local v9    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    .end local v10    # "countOrElement$iv":Ljava/lang/Object;
    .end local v11    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .end local v12    # "$i$f$withCoroutineContext":I
    .end local v13    # "oldValue$iv":Ljava/lang/Object;
    .end local p0    # "newContext":Lkotlin/coroutines/CoroutineContext;
    .end local p1    # "countOrElement":Ljava/lang/Object;
    .end local p2    # "block":Lkotlin/jvm/functions/Function2;
    .end local p3    # "value":Ljava/lang/Object;
    .end local p4    # "$completion":Lkotlin/coroutines/Continuation;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .end local v0    # "$i$a$-withCoroutineContext-ChannelFlowKt$withContextUndispatched$2$1":I
    .restart local v3    # "uCont":Lkotlin/coroutines/Continuation;
    .restart local v9    # "$i$a$-suspendCoroutineUninterceptedOrReturn-ChannelFlowKt$withContextUndispatched$2":I
    .restart local v10    # "countOrElement$iv":Ljava/lang/Object;
    .restart local v11    # "context$iv":Lkotlin/coroutines/CoroutineContext;
    .restart local v12    # "$i$f$withCoroutineContext":I
    .restart local v13    # "oldValue$iv":Ljava/lang/Object;
    .restart local p0    # "newContext":Lkotlin/coroutines/CoroutineContext;
    .restart local p1    # "countOrElement":Ljava/lang/Object;
    .restart local p2    # "block":Lkotlin/jvm/functions/Function2;
    .restart local p3    # "value":Ljava/lang/Object;
    .restart local p4    # "$completion":Lkotlin/coroutines/Continuation;
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, p3

    :goto_0
    invoke-static {v11, v13}, Lkotlinx/coroutines/internal/ThreadContextKt;->restoreThreadContext(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    throw v0
.end method

.method static synthetic withContextUndispatched$default(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 161
    invoke-static {p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->threadContextElements(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/internal/ChannelFlowKt;->withContextUndispatched(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final withUndispatchedContextCollector(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/FlowCollector;
    .locals 1
    .param p0, "$this$withUndispatchedContextCollector"    # Lkotlinx/coroutines/flow/FlowCollector;
    .param p1, "emitContext"    # Lkotlin/coroutines/CoroutineContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "TT;>;"
        }
    .end annotation

    .line 140
    nop

    .line 142
    instance-of v0, p0, Lkotlinx/coroutines/flow/internal/SendingCollector;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lkotlinx/coroutines/flow/internal/NopCollector;

    if-eqz v0, :cond_1

    :goto_0
    move-object v0, p0

    goto :goto_1

    .line 144
    :cond_1
    new-instance v0, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/internal/UndispatchedContextCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 140
    :goto_1
    nop

    .line 145
    return-object v0
.end method
