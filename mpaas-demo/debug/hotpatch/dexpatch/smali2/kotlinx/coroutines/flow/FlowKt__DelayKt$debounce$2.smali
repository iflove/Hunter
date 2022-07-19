.class final Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Delay.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/FlowKt__DelayKt;->debounce(Lkotlinx/coroutines/flow/Flow;J)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,136:1\n174#2,9:137\n*E\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2\n*L\n51#1,9:137\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlinx/coroutines/CoroutineScope;",
        "downstream",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounce$2"
    f = "Delay.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x89
    }
    m = "invokeSuspend"
    n = {
        "$this$scopedFlow",
        "downstream",
        "values",
        "lastValue"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $this_debounce:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $timeoutMillis:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field private p$0:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/Flow;JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->$this_debounce:Lkotlinx/coroutines/flow/Flow;

    iput-wide p2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->$timeoutMillis:J

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$create"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downstream"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;

    iget-object v1, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->$this_debounce:Lkotlinx/coroutines/flow/Flow;

    iget-wide v2, p0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->$timeoutMillis:J

    invoke-direct {v0, v1, v2, v3, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;-><init>(Lkotlinx/coroutines/flow/Flow;JLkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, v0, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->p$0:Lkotlinx/coroutines/flow/FlowCollector;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->create(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 44
    iget v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    move-object v2, v4

    .local v2, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    move-object v5, v4

    .local v5, "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v6, v4

    .local v6, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v7, 0x0

    .local v4, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "$i$f$select":I
    iget-object v8, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;

    iget-object v8, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$3:Ljava/lang/Object;

    move-object v4, v8

    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$2:Ljava/lang/Object;

    move-object v5, v8

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$1:Ljava/lang/Object;

    move-object v6, v8

    check-cast v6, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v8, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$0:Ljava/lang/Object;

    move-object v2, v8

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v1

    move-object v14, v4

    move-object v15, v5

    move-object v13, v6

    move-object v4, v0

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_4

    .line 71
    .end local v2    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v5    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local v7    # "$i$f$select":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .restart local v2    # "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    iget-object v11, v1, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->p$0:Lkotlinx/coroutines/flow/FlowCollector;

    .line 46
    .local v11, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    const/4 v6, 0x0

    const/4 v7, -0x1

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$values$1;

    invoke-direct {v5, v1, v4}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$values$1;-><init>(Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;Lkotlin/coroutines/Continuation;)V

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v5, v2

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/channels/ProduceKt;->produce$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v5

    .line 49
    .restart local v5    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v4, v6

    move-object v12, v1

    move-object v14, v4

    move-object v15, v5

    move-object v13, v11

    move-object v4, v0

    move-object v5, v2

    move-object/from16 v2, p1

    .line 50
    .end local v11    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .end local p0    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    .local v5, "$this$scopedFlow":Lkotlinx/coroutines/CoroutineScope;
    .local v12, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .local v13, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v14, "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v15, "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_0
    iget-object v0, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v6, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->DONE:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v6, :cond_5

    .line 51
    const/16 v16, 0x0

    .line 137
    .local v16, "$i$f$select":I
    iput-object v5, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$0:Ljava/lang/Object;

    iput-object v13, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$1:Ljava/lang/Object;

    iput-object v15, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$2:Ljava/lang/Object;

    iput-object v14, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$3:Ljava/lang/Object;

    iput-object v12, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->L$4:Ljava/lang/Object;

    iput v3, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->label:I

    move-object v11, v12

    check-cast v11, Lkotlin/coroutines/Continuation;

    .local v11, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v17, 0x0

    .line 138
    .local v17, "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$2$iv":I
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v0, v11}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v10, v0

    .line 139
    .local v10, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    nop

    .line 140
    :try_start_0
    move-object v0, v10

    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilder;

    .local v0, "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    const/16 v18, 0x0

    .line 53
    .local v18, "$i$a$-select-FlowKt__DelayKt$debounce$2$1":I
    invoke-interface {v15}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v9

    new-instance v19, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v7, 0x0

    move-object/from16 v6, v19

    move-object v8, v12

    move-object v3, v9

    move-object v9, v15

    move-object/from16 v20, v10

    .end local v10    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .local v20, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    move-object v10, v14

    move-object/from16 v21, v11

    .end local v11    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v21, "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object v11, v13

    :try_start_1
    invoke-direct/range {v6 .. v11}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;)V

    move-object/from16 v6, v19

    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v3, v6}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V

    .line 62
    iget-object v7, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v7, :cond_2

    .local v7, "value":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 64
    .local v3, "$i$a$-let-FlowKt__DelayKt$debounce$2$1$2":I
    iget-wide v10, v12, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;->$timeoutMillis:J

    new-instance v19, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x0

    move-object/from16 v6, v19

    move-object v9, v0

    move-wide/from16 v22, v10

    move-object v10, v12

    move-object v11, v15

    move-object/from16 v24, v12

    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .local v24, "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    move-object v12, v14

    move-object/from16 v25, v13

    .end local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v25, "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :try_start_2
    invoke-direct/range {v6 .. v13}, Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2$invokeSuspend$$inlined$select$lambda$2;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/selects/SelectBuilder;Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/flow/FlowCollector;)V

    move-object/from16 v6, v19

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-wide/from16 v8, v22

    invoke-interface {v0, v8, v9, v6}, Lkotlinx/coroutines/selects/SelectBuilder;->onTimeout(JLkotlin/jvm/functions/Function1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    .end local v3    # "$i$a$-let-FlowKt__DelayKt$debounce$2$1$2":I
    .end local v7    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 141
    .end local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v18    # "$i$a$-select-FlowKt__DelayKt$debounce$2$1":I
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 62
    .end local v24    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local v25    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .restart local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .restart local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v18    # "$i$a$-select-FlowKt__DelayKt$debounce$2$1":I
    :cond_2
    move-object/from16 v24, v12

    move-object/from16 v25, v13

    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v24    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .restart local v25    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_1
    nop

    .line 69
    .end local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v18    # "$i$a$-select-FlowKt__DelayKt$debounce$2$1":I
    move-object/from16 v3, v20

    goto :goto_3

    .line 141
    .end local v24    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local v25    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .restart local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :catchall_1
    move-exception v0

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v24    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .restart local v25    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    goto :goto_2

    .end local v20    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v24    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local v25    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v10    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v11    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .restart local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    .line 142
    .end local v10    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v11    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v20    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v24    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .restart local v25    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_2
    move-object/from16 v3, v20

    .end local v20    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .local v3, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 143
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :goto_3
    nop

    .line 144
    invoke-virtual {v3}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 137
    .end local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v17    # "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$2$iv":I
    .end local v21    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_3

    move-object/from16 v3, v24

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne v0, v4, :cond_4

    .line 44
    return-object v4

    .line 137
    :cond_4
    move-object/from16 v12, v24

    move-object/from16 v13, v25

    .line 145
    .end local v16    # "$i$f$select":I
    .end local v24    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .end local v25    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    .restart local v12    # "this":Lkotlinx/coroutines/flow/FlowKt__DelayKt$debounce$2;
    .restart local v13    # "downstream":Lkotlinx/coroutines/flow/FlowCollector;
    :goto_4
    nop

    .line 50
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 71
    .end local v14    # "lastValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v15    # "values":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
