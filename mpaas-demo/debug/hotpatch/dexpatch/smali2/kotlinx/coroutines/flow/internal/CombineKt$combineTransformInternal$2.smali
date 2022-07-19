.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineTransformInternal(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2\n+ 2 Select.kt\nkotlinx/coroutines/selects/SelectKt\n+ 3 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n1#1,143:1\n174#2,4:144\n178#2,5:162\n86#3,7:148\n86#3,7:155\n*E\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2\n*L\n28#1,4:144\n28#1,5:162\n28#1,7:148\n28#1,7:155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004*\u00020\u0005H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T1",
        "T2",
        "R",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineTransformInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x90
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "firstChannel",
        "secondChannel",
        "firstValue",
        "secondValue",
        "firstIsClosed",
        "secondIsClosed"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "L$6"
    }
.end annotation


# instance fields
.field final synthetic $first:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $second:Lkotlinx/coroutines/flow/Flow;

.field final synthetic $this_combineTransformInternal:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $transform:Lkotlin/jvm/functions/Function4;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$this_combineTransformInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$first:Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$second:Lkotlinx/coroutines/flow/Flow;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$transform:Lkotlin/jvm/functions/Function4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$this_combineTransformInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$first:Lkotlinx/coroutines/flow/Flow;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$second:Lkotlinx/coroutines/flow/Flow;

    iget-object v5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$transform:Lkotlin/jvm/functions/Function4;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iput-object v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 20
    iget v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    move-object v2, v5

    .local v2, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v6, v5

    .local v6, "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object v7, v5

    .local v7, "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v8, v5

    .local v4, "$i$f$select":I
    .local v8, "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v9, v5

    .local v9, "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v10, v5

    .local v5, "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v10, "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$7:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$6:Ljava/lang/Object;

    move-object v8, v11

    check-cast v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$5:Ljava/lang/Object;

    move-object v10, v11

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$4:Ljava/lang/Object;

    move-object v6, v11

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$3:Ljava/lang/Object;

    move-object v5, v11

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$2:Ljava/lang/Object;

    move-object v7, v11

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$1:Ljava/lang/Object;

    move-object v9, v11

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$0:Ljava/lang/Object;

    move-object v2, v11

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v0

    move-object v15, v5

    move-object v14, v6

    move-object v13, v7

    move-object v12, v8

    move-object v11, v9

    move-object v9, v1

    move-object v5, v2

    move-object/from16 v2, p1

    goto/16 :goto_6

    .line 44
    .end local v2    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v4    # "$i$f$select":I
    .end local v5    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v9    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 21
    .restart local v2    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    iget-object v6, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$first:Lkotlinx/coroutines/flow/Flow;

    # invokes: Lkotlinx/coroutines/flow/internal/CombineKt;->asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-static {v2, v6}, Lkotlinx/coroutines/flow/internal/CombineKt;->access$asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v6

    .line 22
    .local v6, "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v7, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->$second:Lkotlinx/coroutines/flow/Flow;

    # invokes: Lkotlinx/coroutines/flow/internal/CombineKt;->asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-static {v2, v7}, Lkotlinx/coroutines/flow/internal/CombineKt;->access$asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v7

    .line 23
    .restart local v7    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v5, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 24
    .local v8, "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v5, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v5, v9

    .line 25
    .local v5, "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    new-instance v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v4, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 26
    .local v9, "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iput-boolean v4, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    move-object v4, v10

    move-object v12, v4

    move-object v14, v5

    move-object v11, v6

    move-object v13, v7

    move-object v15, v8

    move-object v10, v9

    move-object v4, v0

    move-object v9, v1

    move-object v5, v2

    move-object/from16 v2, p1

    .line 27
    .end local v6    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    .local v5, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v9, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .restart local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v11, "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v12, "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v13, "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v14, "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v15, "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_0
    iget-boolean v0, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v12, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 44
    .end local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v11    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v13    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v15    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 28
    .restart local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v11    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v12    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v13    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v14    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v15    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :cond_3
    :goto_1
    const/16 v16, 0x0

    .line 144
    .local v16, "$i$f$select":I
    iput-object v5, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$0:Ljava/lang/Object;

    iput-object v11, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$1:Ljava/lang/Object;

    iput-object v13, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$2:Ljava/lang/Object;

    iput-object v15, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$3:Ljava/lang/Object;

    iput-object v14, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$4:Ljava/lang/Object;

    iput-object v10, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$5:Ljava/lang/Object;

    iput-object v12, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$6:Ljava/lang/Object;

    iput-object v9, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->L$7:Ljava/lang/Object;

    iput v3, v9, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;->label:I

    move-object v8, v9

    check-cast v8, Lkotlin/coroutines/Continuation;

    .local v8, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v17, 0x0

    .line 145
    .local v17, "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$2$iv":I
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v0, v8}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v7, v0

    .line 146
    .local v7, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    nop

    .line 147
    :try_start_0
    move-object v0, v7

    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilder;

    .local v0, "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    const/16 v18, 0x0

    .line 29
    .local v18, "$i$a$-select-CombineKt$combineTransformInternal$2$1":I
    iget-boolean v6, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v19, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v20, 0x0

    move/from16 v21, v6

    move-object/from16 v6, v19

    move-object v3, v7

    .end local v7    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .local v3, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    move-object/from16 v7, v20

    move-object/from16 v20, v8

    .end local v8    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v20, "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object v8, v9

    move-object/from16 v22, v9

    .end local v9    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .local v22, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    move-object v9, v10

    move-object/from16 v23, v10

    .end local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v23, "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v10, v11

    move-object/from16 v24, v11

    .end local v11    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v24, "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v11, v15

    move-object/from16 p1, v12

    .end local v12    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local p1, "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object v12, v14

    move-object/from16 v25, v13

    .end local v13    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v25, "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v13, p1

    move-object/from16 v26, v14

    .end local v14    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v26, "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v14, v25

    :try_start_1
    invoke-direct/range {v6 .. v14}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    check-cast v19, Lkotlin/jvm/functions/Function2;

    move-object/from16 v7, v19

    .local v7, "onReceive$iv":Lkotlin/jvm/functions/Function2;
    move-object v14, v0

    .local v14, "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    move/from16 v19, v21

    .local v19, "isClosed$iv":Z
    move-object/from16 v21, v24

    .local v21, "channel$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/16 v27, 0x0

    .line 148
    .local v27, "$i$f$onReceive":I
    if-eqz v19, :cond_4

    move-object/from16 v31, v15

    goto :goto_2

    .line 149
    :cond_4
    invoke-interface/range {v21 .. v21}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v13

    new-instance v28, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v8, 0x0

    move-object/from16 v6, v28

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object v12, v15

    move-object/from16 v29, v13

    move-object/from16 v13, v26

    move-object/from16 v30, v14

    .end local v14    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .local v30, "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    move-object/from16 v14, p1

    move-object/from16 v31, v15

    .end local v15    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v31, "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    move-object/from16 v15, v25

    :try_start_2
    invoke-direct/range {v6 .. v15}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    move-object/from16 v6, v28

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 v9, v29

    move-object/from16 v8, v30

    .end local v30    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .local v8, "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    invoke-interface {v8, v9, v6}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 154
    nop

    .line 36
    .end local v7    # "onReceive$iv":Lkotlin/jvm/functions/Function2;
    .end local v8    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v19    # "isClosed$iv":Z
    .end local v21    # "channel$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v27    # "$i$f$onReceive":I
    :goto_2
    move-object/from16 v15, p1

    .end local p1    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v15, "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    :try_start_3
    iget-boolean v14, v15, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v19, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3;

    const/4 v7, 0x0

    move-object/from16 v6, v19

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v31

    move-object/from16 v12, v26

    move-object v13, v15

    move/from16 v21, v14

    move-object/from16 v14, v25

    invoke-direct/range {v6 .. v14}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$3;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    check-cast v19, Lkotlin/jvm/functions/Function2;

    move-object/from16 v7, v19

    .restart local v7    # "onReceive$iv":Lkotlin/jvm/functions/Function2;
    move-object v14, v0

    .restart local v14    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    move/from16 v19, v21

    .restart local v19    # "isClosed$iv":Z
    move-object/from16 v21, v25

    .restart local v21    # "channel$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/16 v27, 0x0

    .line 155
    .restart local v27    # "$i$f$onReceive":I
    if-eqz v19, :cond_5

    move-object/from16 v29, v15

    goto :goto_3

    .line 156
    :cond_5
    invoke-interface/range {v21 .. v21}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v13

    new-instance v28, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$4;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v8, 0x0

    move-object/from16 v6, v28

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v31

    move-object/from16 v32, v13

    move-object/from16 v13, v26

    move-object/from16 v33, v14

    .end local v14    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .local v33, "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    move-object v14, v15

    move-object/from16 v29, v15

    .end local v15    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .local v29, "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    move-object/from16 v15, v25

    :try_start_4
    invoke-direct/range {v6 .. v15}, Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2$invokeSuspend$$inlined$select$lambda$4;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlinx/coroutines/channels/ReceiveChannel;)V

    move-object/from16 v6, v28

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 v9, v32

    move-object/from16 v8, v33

    .end local v33    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .restart local v8    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    invoke-interface {v8, v9, v6}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    nop

    .line 42
    .end local v7    # "onReceive$iv":Lkotlin/jvm/functions/Function2;
    .end local v8    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v19    # "isClosed$iv":Z
    .end local v21    # "channel$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v27    # "$i$f$onReceive":I
    :goto_3
    nop

    .end local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v18    # "$i$a$-select-CombineKt$combineTransformInternal$2$1":I
    goto :goto_5

    .line 162
    :catchall_0
    move-exception v0

    goto :goto_4

    .end local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v15    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    :catchall_1
    move-exception v0

    move-object/from16 v29, v15

    .end local v15    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    goto :goto_4

    .end local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local p1    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    :catchall_2
    move-exception v0

    move-object/from16 v29, p1

    .end local p1    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    goto :goto_4

    .end local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v31    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v15, "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local p1    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    :catchall_3
    move-exception v0

    move-object/from16 v29, p1

    move-object/from16 v31, v15

    .end local v15    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local p1    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v31    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    goto :goto_4

    .end local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v20    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v22    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .end local v23    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v24    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v25    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v26    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v31    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v7, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .local v8, "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v9    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .restart local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v11    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v12    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v13    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v14, "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v15    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :catchall_4
    move-exception v0

    move-object v3, v7

    move-object/from16 v20, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v29, v12

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v31, v15

    .line 163
    .end local v7    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v8    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v9    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .end local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v11    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v13    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v15    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v20    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v22    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .restart local v23    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v24    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v25    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v26    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v31    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_4
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 164
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 165
    invoke-virtual {v3}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 144
    .end local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v17    # "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$2$iv":I
    .end local v20    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_6

    move-object/from16 v3, v22

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    if-ne v0, v4, :cond_7

    .line 20
    return-object v4

    .line 144
    :cond_7
    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v12, v29

    move-object/from16 v15, v31

    .line 166
    .end local v16    # "$i$f$select":I
    .end local v22    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .end local v23    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v24    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v25    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v26    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .end local v29    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .end local v31    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v9    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineTransformInternal$2;
    .restart local v10    # "firstIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v11    # "firstChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v12    # "secondIsClosed":Lkotlin/jvm/internal/Ref$BooleanRef;
    .restart local v13    # "secondChannel":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v14    # "secondValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    .restart local v15    # "firstValue":Lkotlin/jvm/internal/Ref$ObjectRef;
    :goto_6
    nop

    .line 27
    const/4 v3, 0x1

    goto/16 :goto_0
.end method
