.class final Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt;->combineInternal(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Select.kt\nkotlinx/coroutines/selects/SelectKt\n+ 4 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt\n*L\n1#1,143:1\n10032#2,2:144\n174#3,4:146\n178#3,5:157\n86#4,7:150\n*E\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2\n*L\n61#1,2:144\n62#1,4:146\n62#1,5:157\n62#1,7:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003*\u00020\u0004H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "R",
        "T",
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
    c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2"
    f = "Combine.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0x92
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "size",
        "channels",
        "latestValues",
        "isClosed"
    }
    s = {
        "L$0",
        "I$0",
        "L$1",
        "L$2",
        "L$3"
    }
.end annotation


# instance fields
.field final synthetic $arrayFactory:Lkotlin/jvm/functions/Function0;

.field final synthetic $flows:[Lkotlinx/coroutines/flow/Flow;

.field final synthetic $this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic $transform:Lkotlin/jvm/functions/Function3;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

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

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$this_combineInternal:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    iget-object v4, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$arrayFactory:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$transform:Lkotlin/jvm/functions/Function3;

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;[Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iput-object v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    move-object v5, v2

    .local v5, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v6, v2

    .local v6, "isClosed":[Ljava/lang/Boolean;
    move-object v7, v2

    .local v7, "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    move v8, v4

    .local v8, "$i$f$select":I
    move v9, v4

    .local v2, "latestValues":[Ljava/lang/Object;
    .local v9, "size":I
    iget-object v10, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;

    iget-object v10, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    move-object v6, v10

    check-cast v6, [Ljava/lang/Boolean;

    iget-object v10, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    move-object v2, v10

    check-cast v2, [Ljava/lang/Object;

    iget-object v10, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    move-object v7, v10

    check-cast v7, [Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v9, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iget-object v10, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    move-object v5, v10

    check-cast v5, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v10, v1

    move-object v15, v2

    move-object v14, v5

    move-object v13, v6

    move-object v12, v7

    move v11, v9

    move-object/from16 v2, p1

    move-object v5, v0

    goto/16 :goto_9

    .line 77
    .end local v2    # "latestValues":[Ljava/lang/Object;
    .end local v5    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v6    # "isClosed":[Ljava/lang/Boolean;
    .end local v7    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "$i$f$select":I
    .end local v9    # "size":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 54
    .local v2, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    iget-object v5, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    array-length v5, v5

    .line 55
    .local v5, "size":I
    nop

    .line 56
    new-array v6, v5, [Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    .local v8, "it":I
    const/4 v9, 0x0

    .local v9, "$i$a$-<init>-CombineKt$combineInternal$2$channels$1":I
    iget-object v10, v1, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->$flows:[Lkotlinx/coroutines/flow/Flow;

    aget-object v10, v10, v8

    # invokes: Lkotlinx/coroutines/flow/internal/CombineKt;->asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-static {v2, v10}, Lkotlinx/coroutines/flow/internal/CombineKt;->access$asFairChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v8

    .end local v8    # "it":I
    .end local v9    # "$i$a$-<init>-CombineKt$combineInternal$2$channels$1":I
    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    :cond_2
    nop

    .line 57
    .local v6, "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    new-array v7, v5, [Ljava/lang/Object;

    .line 58
    .local v7, "latestValues":[Ljava/lang/Object;
    new-array v8, v5, [Ljava/lang/Boolean;

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_3

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .local v10, "it":I
    const/4 v11, 0x0

    .end local v10    # "it":I
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    move-object v10, v1

    move-object v14, v2

    move v11, v5

    move-object v12, v6

    move-object v15, v7

    move-object v13, v8

    move-object/from16 v2, p1

    move-object v5, v0

    .line 61
    .end local v5    # "size":I
    .end local v6    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "latestValues":[Ljava/lang/Object;
    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v2, "$result":Ljava/lang/Object;
    .local v10, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .local v11, "size":I
    .local v12, "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "isClosed":[Ljava/lang/Boolean;
    .local v14, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v15, "latestValues":[Ljava/lang/Object;
    :goto_2
    move-object v0, v13

    .local v0, "$this$all$iv":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 144
    .local v6, "$i$f$all":I
    array-length v7, v0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_5

    aget-object v9, v0, v8

    .local v9, "element$iv":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .local v16, "it":Z
    const/16 v17, 0x0

    .line 61
    .local v17, "$i$a$-all-CombineKt$combineInternal$2$1":I
    nop

    .end local v16    # "it":Z
    .end local v17    # "$i$a$-all-CombineKt$combineInternal$2$1":I
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 145
    :cond_5
    const/4 v0, 0x1

    .end local v0    # "$this$all$iv":[Ljava/lang/Object;
    .end local v6    # "$i$f$all":I
    :goto_4
    if-nez v0, :cond_a

    .line 62
    const/16 v16, 0x0

    .line 146
    .local v16, "$i$f$select":I
    iput-object v14, v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$0:Ljava/lang/Object;

    iput v11, v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->I$0:I

    iput-object v12, v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$1:Ljava/lang/Object;

    iput-object v15, v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$2:Ljava/lang/Object;

    iput-object v13, v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$3:Ljava/lang/Object;

    iput-object v10, v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->L$4:Ljava/lang/Object;

    iput v3, v10, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;->label:I

    move-object v9, v10

    check-cast v9, Lkotlin/coroutines/Continuation;

    .local v9, "uCont$iv":Lkotlin/coroutines/Continuation;
    const/16 v17, 0x0

    .line 147
    .local v17, "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$2$iv":I
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    invoke-direct {v0, v9}, Lkotlinx/coroutines/selects/SelectBuilderImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v8, v0

    .line 148
    .local v8, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    nop

    .line 149
    :try_start_0
    move-object v0, v8

    check-cast v0, Lkotlinx/coroutines/selects/SelectBuilder;

    .local v0, "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    const/16 v18, 0x0

    .line 63
    .local v18, "$i$a$-select-CombineKt$combineInternal$2$2":I
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v11, :cond_7

    move/from16 v19, v6

    .line 64
    .local v19, "i":I
    aget-object v6, v13, v19

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    aget-object v21, v12, v19

    new-instance v22, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v23, 0x0

    move-object/from16 v6, v22

    move/from16 v7, v19

    move-object v3, v8

    .end local v8    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .local v3, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    move-object/from16 v8, v23

    move-object/from16 v23, v9

    .end local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .local v23, "uCont$iv":Lkotlin/coroutines/Continuation;
    move-object v9, v10

    move-object/from16 v24, v10

    .end local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .local v24, "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    move v10, v11

    move/from16 v25, v11

    .end local v11    # "size":I
    .local v25, "size":I
    move-object v11, v13

    move-object/from16 v26, v12

    .end local v12    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v26, "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v27, v13

    .end local v13    # "isClosed":[Ljava/lang/Boolean;
    .local v27, "isClosed":[Ljava/lang/Boolean;
    move-object v13, v15

    :try_start_1
    invoke-direct/range {v6 .. v13}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$1;-><init>(ILkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;I[Ljava/lang/Boolean;[Lkotlinx/coroutines/channels/ReceiveChannel;[Ljava/lang/Object;)V

    check-cast v22, Lkotlin/jvm/functions/Function2;

    move-object/from16 v7, v22

    .local v7, "onReceive$iv":Lkotlin/jvm/functions/Function2;
    move-object v13, v0

    .local v13, "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .local v20, "isClosed$iv":Z
    .local v21, "channel$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/16 v22, 0x0

    .line 150
    .local v22, "$i$f$onReceive":I
    if-eqz v20, :cond_6

    move-object/from16 v30, v14

    goto :goto_6

    .line 151
    :cond_6
    invoke-interface/range {v21 .. v21}, Lkotlinx/coroutines/channels/ReceiveChannel;->getOnReceiveOrNull()Lkotlinx/coroutines/selects/SelectClause1;

    move-result-object v12

    new-instance v28, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x0

    move-object/from16 v6, v28

    move/from16 v9, v19

    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object v4, v12

    move-object/from16 v12, v27

    move-object/from16 v29, v13

    .end local v13    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .local v29, "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    move-object/from16 v13, v26

    move-object/from16 v30, v14

    .end local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v30, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v14, v15

    :try_start_2
    invoke-direct/range {v6 .. v14}, Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2$invokeSuspend$$inlined$select$lambda$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;ILkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;I[Ljava/lang/Boolean;[Lkotlinx/coroutines/channels/ReceiveChannel;[Ljava/lang/Object;)V

    move-object/from16 v6, v28

    check-cast v6, Lkotlin/jvm/functions/Function2;

    move-object/from16 v8, v29

    .end local v29    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .local v8, "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    invoke-interface {v8, v4, v6}, Lkotlinx/coroutines/selects/SelectBuilder;->invoke(Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    nop

    .line 63
    .end local v7    # "onReceive$iv":Lkotlin/jvm/functions/Function2;
    .end local v8    # "$this$onReceive$iv":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v20    # "isClosed$iv":Z
    .end local v21    # "channel$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v22    # "$i$f$onReceive":I
    :goto_6
    nop

    .end local v19    # "i":I
    add-int/lit8 v6, v19, 0x1

    move-object v8, v3

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v30

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_5

    .line 157
    .end local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v18    # "$i$a$-select-CombineKt$combineInternal$2$2":I
    :catchall_0
    move-exception v0

    goto :goto_7

    .end local v30    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :catchall_1
    move-exception v0

    move-object/from16 v30, v14

    .end local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v30    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    goto :goto_7

    .line 63
    .end local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v23    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v24    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v25    # "size":I
    .end local v26    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v27    # "isClosed":[Ljava/lang/Boolean;
    .end local v30    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .local v8, "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v11    # "size":I
    .restart local v12    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "isClosed":[Ljava/lang/Boolean;
    .restart local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v18    # "$i$a$-select-CombineKt$combineInternal$2$2":I
    :cond_7
    move-object v3, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    .line 75
    .end local v0    # "$this$select":Lkotlinx/coroutines/selects/SelectBuilder;
    .end local v8    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v11    # "size":I
    .end local v12    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "isClosed":[Ljava/lang/Boolean;
    .end local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v18    # "$i$a$-select-CombineKt$combineInternal$2$2":I
    .restart local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v23    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v24    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v25    # "size":I
    .restart local v26    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v27    # "isClosed":[Ljava/lang/Boolean;
    .restart local v30    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    goto :goto_8

    .line 157
    .end local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v23    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v24    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v25    # "size":I
    .end local v26    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v27    # "isClosed":[Ljava/lang/Boolean;
    .end local v30    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v8    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v11    # "size":I
    .restart local v12    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "isClosed":[Ljava/lang/Boolean;
    .restart local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :catchall_2
    move-exception v0

    move-object v3, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    move-object/from16 v30, v14

    .line 158
    .end local v8    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v9    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .end local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v11    # "size":I
    .end local v12    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "isClosed":[Ljava/lang/Boolean;
    .end local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v0, "e$iv":Ljava/lang/Throwable;
    .restart local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .restart local v23    # "uCont$iv":Lkotlin/coroutines/Continuation;
    .restart local v24    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v25    # "size":I
    .restart local v26    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v27    # "isClosed":[Ljava/lang/Boolean;
    .restart local v30    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_7
    invoke-virtual {v3, v0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->handleBuilderException(Ljava/lang/Throwable;)V

    .line 159
    .end local v0    # "e$iv":Ljava/lang/Throwable;
    :goto_8
    nop

    .line 160
    invoke-virtual {v3}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 146
    .end local v3    # "scope$iv":Lkotlinx/coroutines/selects/SelectBuilderImpl;
    .end local v17    # "$i$a$-suspendCoroutineUninterceptedOrReturn-SelectKt$select$2$iv":I
    .end local v23    # "uCont$iv":Lkotlin/coroutines/Continuation;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_8

    move-object/from16 v3, v24

    check-cast v3, Lkotlin/coroutines/Continuation;

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_8
    if-ne v0, v5, :cond_9

    .line 53
    return-object v5

    .line 146
    :cond_9
    move-object/from16 v10, v24

    move/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v30

    .line 161
    .end local v16    # "$i$f$select":I
    .end local v24    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .end local v25    # "size":I
    .end local v26    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v27    # "isClosed":[Ljava/lang/Boolean;
    .end local v30    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v10    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$combineInternal$2;
    .restart local v11    # "size":I
    .restart local v12    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "isClosed":[Ljava/lang/Boolean;
    .restart local v14    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_9
    nop

    .line 61
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 77
    .end local v11    # "size":I
    .end local v12    # "channels":[Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "isClosed":[Ljava/lang/Boolean;
    .end local v15    # "latestValues":[Ljava/lang/Object;
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
