.class final Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Combine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;->collect$$forInline(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nCombine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1\n+ 2 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt\n+ 3 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,143:1\n179#2:144\n158#2,3:145\n180#2:148\n181#2:151\n165#2:152\n161#2,3:153\n16#3:149\n16#3:150\n*E\n*S KotlinDebug\n*F\n+ 1 Combine.kt\nkotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1\n*L\n123#1:144\n123#1,3:145\n123#1:148\n123#1:151\n123#1:152\n123#1,3:153\n123#1:149\n123#1:150\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004*\u00020\u0005H\u008a@\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T1",
        "T2",
        "R",
        "Lkotlinx/coroutines/CoroutineScope;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/internal/CombineKt$zipImpl$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p3, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;

    iget-object v1, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;

    invoke-direct {v0, v1, p2, v2}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;)V

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    iput-object v1, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30
    .param p1, "$result"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 103
    iget v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    const/4 v8, 0x0

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    move-object v2, v7

    .local v2, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    move-object v9, v7

    .local v9, "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v10, v8

    .local v10, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    move-object v11, v7

    .local v11, "cause$iv$iv":Ljava/lang/Throwable;
    move-object v12, v7

    .local v12, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v13, v8

    .local v13, "$i$f$consumeEach":I
    move v14, v8

    .local v14, "$i$f$consume":I
    move-object v15, v7

    .local v15, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v16, v7

    .local v16, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object/from16 v17, v7

    .local v17, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v18, v7

    .local v18, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object/from16 v19, v7

    .local v8, "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .local v19, "e$iv":Ljava/lang/Object;
    move-object/from16 v20, v7

    .local v20, "value":Ljava/lang/Object;
    iget-object v3, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$11:Ljava/lang/Object;

    .end local v20    # "value":Ljava/lang/Object;
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$10:Ljava/lang/Object;

    .end local v19    # "e$iv":Ljava/lang/Object;
    .local v4, "e$iv":Ljava/lang/Object;
    iget-object v5, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v12    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v12, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    move-object v11, v12

    check-cast v11, Ljava/lang/Throwable;

    iget-object v12, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v15    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v12, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v15, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;

    iget-object v7, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    move-object/from16 v17, v0

    .end local v17    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v0, p1

    move-object/from16 v22, v16

    move/from16 v16, v10

    move-object v10, v7

    move-object v7, v5

    move-object v5, v1

    const/4 v1, 0x4

    goto/16 :goto_5

    .line 134
    .end local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "e$iv":Ljava/lang/Object;
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .end local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v10    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "$i$f$consumeEach":I
    .end local v14    # "$i$f$consume":I
    .end local v16    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    move-object/from16 v17, v0

    const/4 v0, 0x0

    move-object v2, v0

    .restart local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    move-object v3, v0

    .local v3, "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v4, v8

    .local v4, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    move-object v5, v0

    .local v5, "cause$iv$iv":Ljava/lang/Throwable;
    move-object v6, v0

    .restart local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v13, v8

    .restart local v13    # "$i$f$consumeEach":I
    move v14, v8

    .restart local v14    # "$i$f$consume":I
    move-object v7, v0

    .local v7, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v9, v0

    .local v9, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v10, v0

    .local v10, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v11, v0

    .local v11, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v12, v0

    .restart local v8    # "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .local v12, "e$iv":Ljava/lang/Object;
    move-object v15, v0

    .local v15, "value":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$12:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v15, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$11:Ljava/lang/Object;

    iget-object v12, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$10:Ljava/lang/Object;

    move-object/from16 v16, v0

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ChannelIterator;

    move-object/from16 v18, v0

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v7, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;

    move-object/from16 v21, v0

    .end local v0    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v21, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p1

    move-object/from16 v27, v5

    move-object v5, v1

    move-object v1, v9

    move-object v9, v3

    move-object v3, v15

    move-object v15, v7

    move-object/from16 v7, v18

    move/from16 v18, v13

    move-object v13, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move/from16 v16, v4

    move-object/from16 v4, v17

    move/from16 v17, v8

    move-object/from16 v8, v21

    move/from16 v21, v14

    move-object v14, v11

    move-object/from16 v11, v27

    goto/16 :goto_4

    .end local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v3    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v8    # "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .end local v9    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "e$iv":Ljava/lang/Object;
    .end local v13    # "$i$f$consumeEach":I
    .end local v14    # "$i$f$consume":I
    .end local v15    # "value":Ljava/lang/Object;
    .end local v21    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_2
    move-object/from16 v17, v0

    const/4 v0, 0x0

    move-object v2, v0

    .restart local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    move-object v3, v0

    .restart local v3    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v4, v8

    .restart local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    move-object v5, v0

    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    move-object v6, v0

    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v13, v8

    .restart local v13    # "$i$f$consumeEach":I
    move v14, v8

    .restart local v14    # "$i$f$consume":I
    move-object v7, v0

    .restart local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v9, v0

    .restart local v9    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v10, v0

    .restart local v10    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v11, v0

    .restart local v11    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v12, v0

    .restart local v8    # "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .restart local v12    # "e$iv":Ljava/lang/Object;
    move-object v15, v0

    .restart local v15    # "value":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$11:Ljava/lang/Object;

    .end local v15    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    iget-object v12, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$10:Ljava/lang/Object;

    iget-object v15, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;

    check-cast v15, Lkotlinx/coroutines/channels/ChannelIterator;

    move-object/from16 v16, v0

    .end local v0    # "value":Ljava/lang/Object;
    .local v16, "value":Ljava/lang/Object;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v6, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    move-object v5, v6

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v7, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;

    move-object/from16 v18, v0

    .end local v0    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v18, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lkotlinx/coroutines/CoroutineScope;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p1

    move-object/from16 v27, v5

    move-object v5, v1

    move-object v1, v15

    move v15, v14

    move-object v14, v11

    move-object/from16 v11, v27

    move-object/from16 v28, v6

    move-object v6, v2

    move-object/from16 v2, v16

    move/from16 v16, v4

    move-object/from16 v4, v17

    move/from16 v17, v8

    move-object v8, v7

    move-object v7, v9

    move-object v9, v3

    move-object/from16 v3, v18

    move/from16 v18, v13

    move-object/from16 v13, v28

    goto/16 :goto_2

    .line 153
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .end local v8    # "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .end local v12    # "e$iv":Ljava/lang/Object;
    .end local v16    # "value":Ljava/lang/Object;
    .end local v18    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_0
    move-exception v0

    move-object v12, v6

    move-object/from16 v16, v9

    move-object v7, v10

    move-object/from16 v18, v11

    move-object v9, v3

    move-object v11, v5

    move-object v5, v1

    move-object/from16 v1, p1

    goto/16 :goto_7

    .line 103
    .end local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v3    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v6    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v10    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "$i$f$consumeEach":I
    .end local v14    # "$i$f$consume":I
    :cond_3
    move-object/from16 v17, v0

    const/4 v0, 0x0

    move-object v2, v0

    .restart local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    move-object v3, v0

    .restart local v3    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v4, v8

    .restart local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    move-object v5, v0

    .restart local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    move-object v6, v0

    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move v13, v8

    .restart local v13    # "$i$f$consumeEach":I
    move v14, v8

    .restart local v14    # "$i$f$consume":I
    move-object v7, v0

    .restart local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v8, v0

    .local v8, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    move-object v9, v0

    .local v9, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    move-object v10, v0

    .local v10, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    move-object v6, v11

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Throwable;

    .end local v5    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v11, "cause$iv$iv":Ljava/lang/Throwable;
    iget-object v5, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    move-object v12, v5

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v7    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v12, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v5, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;

    iget-object v7, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v9    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v7, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v9, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    move-object v2, v9

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    move-object/from16 v18, v9

    check-cast v18, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v10    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v18, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v9, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    .end local v3    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v9, "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v3, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, Lkotlinx/coroutines/CoroutineScope;

    .end local v8    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v16, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v15, v0

    move-object v8, v5

    move-object v0, v6

    move-object/from16 v10, v16

    move-object/from16 v3, v17

    move-object v5, v2

    move v6, v4

    move-object/from16 v2, p1

    move-object v4, v1

    move-object/from16 v1, v18

    goto/16 :goto_1

    .line 153
    .end local v4    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .end local v6    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_1
    move-exception v0

    move-object v5, v1

    move-object/from16 v1, p1

    goto/16 :goto_7

    .line 103
    .end local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "$i$f$consumeEach":I
    .end local v14    # "$i$f$consume":I
    .end local v16    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :cond_4
    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 104
    .local v2, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;->$flow$inlined:Lkotlinx/coroutines/flow/Flow;

    # invokes: Lkotlinx/coroutines/flow/internal/CombineKt;->asChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/internal/CombineKt;->access$asChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v9

    .line 105
    .restart local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    iget-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;

    iget-object v0, v0, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;->$flow2$inlined:Lkotlinx/coroutines/flow/Flow;

    # invokes: Lkotlinx/coroutines/flow/internal/CombineKt;->asChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;
    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/internal/CombineKt;->access$asChannel(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v18

    .line 117
    .restart local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    if-eqz v18, :cond_10

    move-object/from16 v0, v18

    check-cast v0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v3, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1;

    invoke-direct {v3, v9}, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v3}, Lkotlinx/coroutines/channels/SendChannel;->invokeOnClose(Lkotlin/jvm/functions/Function1;)V

    .line 121
    invoke-interface/range {v18 .. v18}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3

    .line 122
    .local v3, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    nop

    .line 123
    move-object v7, v9

    .restart local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v13, 0x0

    .line 144
    .restart local v13    # "$i$f$consumeEach":I
    move-object v12, v7

    .restart local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v14, 0x0

    .line 145
    .restart local v14    # "$i$f$consume":I
    const/4 v0, 0x0

    :try_start_4
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;
    :try_end_4
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_d

    move-object v11, v4

    .line 146
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .line 147
    move-object v4, v12

    .local v4, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    const/4 v5, 0x0

    .line 148
    .local v5, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    :try_start_5
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    move-object v0, v1

    move-object v10, v2

    move-object v8, v7

    move-object/from16 v15, v18

    move-object/from16 v2, p1

    move-object v7, v6

    move v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v17

    .end local v3    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p0    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v1, "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .local v2, "$result":Ljava/lang/Object;
    .local v4, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v5, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v8, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v10, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v15, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_0
    :try_start_6
    iput-object v10, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    iput-object v15, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    iput-object v4, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    move-object/from16 p1, v2

    const/4 v2, 0x1

    .end local v2    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    :try_start_7
    iput v2, v1, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->label:I

    invoke-interface {v7, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-ne v2, v3, :cond_5

    .line 103
    return-object v3

    .line 148
    :cond_5
    move-object/from16 v27, v8

    move-object v8, v0

    move-object v0, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v15

    move-object v15, v7

    move-object/from16 v7, v27

    .line 103
    .end local v8    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v15    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v0    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v1, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v4, "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .local v5, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_1
    :try_start_8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v15}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .local v2, "e$iv":Ljava/lang/Object;
    move-object/from16 v16, v2

    .local v16, "value":Ljava/lang/Object;
    const/16 v17, 0x0

    .line 124
    .local v17, "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    iput-object v10, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    iput-object v9, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    iput-object v5, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    iput-object v8, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    iput-object v12, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    iput-object v11, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    iput-object v15, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$10:Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    .end local v16    # "value":Ljava/lang/Object;
    .local v0, "value":Ljava/lang/Object;
    .local v18, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    iput-object v0, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$11:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v0, 0x2

    .end local v0    # "value":Ljava/lang/Object;
    .restart local v16    # "value":Ljava/lang/Object;
    iput v0, v4, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->label:I

    invoke-interface {v5, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->hasNext(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-ne v0, v3, :cond_6

    .line 103
    return-object v3

    .line 124
    :cond_6
    move/from16 v27, v14

    move-object v14, v1

    move-object v1, v15

    move/from16 v15, v27

    move-object/from16 v28, v12

    move-object v12, v2

    move-object/from16 v2, v16

    move/from16 v16, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, v18

    move/from16 v18, v13

    move-object/from16 v13, v28

    move-object/from16 v29, v10

    move-object v10, v7

    move-object/from16 v7, v29

    .line 103
    .end local v1    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v4    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .local v2, "value":Ljava/lang/Object;
    .local v3, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v5, "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .local v6, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v7, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v10, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v12, "e$iv":Ljava/lang/Object;
    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v14, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v15, "$i$f$consume":I
    .local v16, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v18, "$i$f$consumeEach":I
    :goto_2
    :try_start_9
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 125
    move-object/from16 v2, p1

    move-object v0, v8

    move-object v8, v10

    move-object v10, v7

    move-object v7, v1

    const/4 v1, 0x4

    move-object/from16 v27, v6

    move-object v6, v3

    move-object v3, v4

    move-object/from16 v4, v27

    move/from16 v28, v15

    move-object v15, v14

    move/from16 v14, v28

    goto/16 :goto_6

    .line 127
    :cond_7
    iget-object v0, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move/from16 v21, v15

    .end local v15    # "$i$f$consume":I
    .local v21, "$i$f$consume":I
    :try_start_a
    iget-object v15, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->this$0:Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;

    iget-object v15, v15, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1;->$transform$inlined:Lkotlin/jvm/functions/Function3;

    sget-object v22, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    move-object/from16 v23, v22

    .local v23, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    const/16 v22, 0x0

    .line 149
    .local v22, "$i$f$unbox":I
    move-object/from16 v24, v4

    move-object/from16 v4, v23

    .end local v23    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .local v4, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    if-ne v2, v4, :cond_8

    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    move-object v4, v2

    .line 127
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v22    # "$i$f$unbox":I
    :goto_3
    sget-object v22, Lkotlinx/coroutines/flow/internal/NullSurrogateKt;->NULL:Lkotlinx/coroutines/internal/Symbol;

    invoke-interface {v6}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v25, v23

    .local v25, "value$iv":Ljava/lang/Object;
    move-object/from16 v23, v22

    .restart local v23    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    const/16 v22, 0x0

    .line 150
    .restart local v22    # "$i$f$unbox":I
    move-object/from16 v26, v4

    move-object/from16 v4, v25

    move-object/from16 v27, v23

    move-object/from16 v23, v15

    move-object/from16 v15, v27

    .end local v23    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v25    # "value$iv":Ljava/lang/Object;
    .local v4, "value$iv":Ljava/lang/Object;
    .local v15, "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    if-ne v4, v15, :cond_9

    const/4 v4, 0x0

    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v15    # "this_$iv":Lkotlinx/coroutines/internal/Symbol;
    .end local v22    # "$i$f$unbox":I
    :cond_9
    iput-object v7, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    iput-object v9, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    iput-object v14, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    iput-object v6, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    iput-object v10, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    iput-object v8, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    iput-object v13, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    iput-object v11, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    iput-object v3, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;

    iput-object v12, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$10:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$11:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$12:Ljava/lang/Object;

    const/4 v15, 0x3

    iput v15, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->label:I

    move-object/from16 v22, v0

    move-object/from16 v15, v23

    move-object/from16 v0, v26

    invoke-interface {v15, v0, v4, v5}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object/from16 v4, v24

    if-ne v0, v4, :cond_a

    .line 103
    return-object v4

    .line 150
    :cond_a
    move-object v15, v8

    move-object v8, v3

    move-object v3, v2

    move-object/from16 v2, v22

    move-object/from16 v27, v7

    move-object v7, v1

    move-object/from16 v1, v27

    .line 103
    .end local v2    # "value":Ljava/lang/Object;
    .end local v7    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v1, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v3, "value":Ljava/lang/Object;
    .local v8, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_4
    :try_start_b
    iput-object v1, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$0:Ljava/lang/Object;

    iput-object v9, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$1:Ljava/lang/Object;

    iput-object v14, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$2:Ljava/lang/Object;

    iput-object v6, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$3:Ljava/lang/Object;

    iput-object v10, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$4:Ljava/lang/Object;

    iput-object v15, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$5:Ljava/lang/Object;

    iput-object v13, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$6:Ljava/lang/Object;

    iput-object v11, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$7:Ljava/lang/Object;

    iput-object v8, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$8:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$9:Ljava/lang/Object;

    iput-object v12, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$10:Ljava/lang/Object;

    iput-object v3, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->L$11:Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-object/from16 v22, v1

    const/4 v1, 0x4

    .end local v1    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v22, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :try_start_c
    iput v1, v5, Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;->label:I

    .line 127
    invoke-interface {v2, v0, v5}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-ne v0, v4, :cond_b

    .line 103
    return-object v4

    .line 127
    :cond_b
    move-object/from16 v0, p1

    move-object v2, v6

    move-object v6, v8

    move/from16 v8, v17

    move-object/from16 v17, v4

    move-object v4, v12

    move-object v12, v13

    move/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v21

    .line 128
    .end local v17    # "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .end local v21    # "$i$f$consume":I
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "$result":Ljava/lang/Object;
    .local v2, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v4, "e$iv":Ljava/lang/Object;
    .local v6, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v8, "$i$a$-consumeEach-CombineKt$zipImpl$1$1$2":I
    .local v12, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "$i$f$consumeEach":I
    .local v14, "$i$f$consume":I
    .local v18, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :goto_5
    move-object v8, v10

    move-object/from16 v3, v17

    move-object/from16 v10, v22

    move-object/from16 v27, v2

    move-object v2, v0

    move-object v0, v15

    move-object/from16 v15, v18

    move/from16 v18, v13

    move-object v13, v12

    move-object v12, v4

    move-object/from16 v4, v27

    .end local v0    # "$result":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v22    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v2, "$result":Ljava/lang/Object;
    .local v4, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v8, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v10, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v12, "e$iv":Ljava/lang/Object;
    .local v13, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v15, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v18, "$i$f$consumeEach":I
    :goto_6
    move-object v1, v5

    move-object v5, v6

    move-object v12, v13

    move/from16 v6, v16

    move/from16 v13, v18

    .end local v12    # "e$iv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 153
    .end local v2    # "$result":Ljava/lang/Object;
    .end local v4    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v8    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v15    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v16    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v6, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v10, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v14, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v21    # "$i$f$consume":I
    .restart local v22    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_2
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v7, v10

    move-object v12, v13

    move/from16 v13, v18

    move-object/from16 v16, v22

    move-object/from16 v18, v14

    move/from16 v14, v21

    goto/16 :goto_7

    .end local v22    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v1    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v1, p1

    move-object v2, v6

    move-object v7, v10

    move-object v12, v13

    move/from16 v13, v18

    move-object/from16 v16, v22

    move-object/from16 v18, v14

    move/from16 v14, v21

    .end local v1    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v22    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    goto/16 :goto_7

    .end local v22    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v7    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :catchall_4
    move-exception v0

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v16, v7

    move-object v7, v10

    move-object v12, v13

    move/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v21

    goto/16 :goto_7

    .end local v21    # "$i$f$consume":I
    .local v15, "$i$f$consume":I
    :catchall_5
    move-exception v0

    move/from16 v21, v15

    move-object/from16 v1, p1

    move-object v2, v6

    move-object/from16 v16, v7

    move-object v7, v10

    move-object v12, v13

    move/from16 v13, v18

    move-object/from16 v18, v14

    move/from16 v14, v21

    .end local v15    # "$i$f$consume":I
    .restart local v21    # "$i$f$consume":I
    goto/16 :goto_7

    .line 103
    .end local v18    # "$i$f$consumeEach":I
    .end local v21    # "$i$f$consume":I
    .local v0, "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v1, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v4, "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .local v5, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v6, "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    .local v7, "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v10, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v12, "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v13, "$i$f$consumeEach":I
    .local v14, "$i$f$consume":I
    :cond_c
    move-object/from16 v18, v0

    .line 151
    .end local v0    # "$this$consume$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v6    # "$i$a$-consume-ChannelsKt__Channels_commonKt$consumeEach$4$iv":I
    :try_start_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 152
    :try_start_e
    invoke-static {v12, v11}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V
    :try_end_e
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 151
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v14    # "$i$f$consume":I
    nop

    .line 132
    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "$i$f$consumeEach":I
    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->isClosedForReceive()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>()V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 133
    :cond_d
    move-object/from16 v1, p1

    goto/16 :goto_a

    :catchall_6
    move-exception v0

    move-object v3, v5

    move-object v2, v10

    move-object v5, v0

    move-object v0, v1

    move-object/from16 v1, p1

    goto/16 :goto_8

    .line 129
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v3, v5

    move-object v2, v10

    move-object/from16 v1, p1

    goto/16 :goto_9

    .line 153
    .restart local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$i$f$consumeEach":I
    .restart local v14    # "$i$f$consume":I
    :catchall_7
    move-exception v0

    move-object/from16 v18, v1

    move-object v2, v5

    move-object/from16 v16, v10

    move-object/from16 v1, p1

    move-object v5, v4

    goto :goto_7

    .end local v5    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v1, "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .local v4, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v8    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v15, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_8
    move-exception v0

    move-object v5, v1

    move-object v2, v4

    move-object v7, v8

    move-object/from16 v16, v10

    move-object/from16 v18, v15

    move-object/from16 v1, p1

    goto :goto_7

    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v2    # "$result":Ljava/lang/Object;
    :catchall_9
    move-exception v0

    move-object/from16 p1, v2

    move-object v5, v1

    move-object v2, v4

    move-object v7, v8

    move-object/from16 v16, v10

    move-object/from16 v18, v15

    move-object/from16 v1, p1

    .end local v2    # "$result":Ljava/lang/Object;
    .restart local p1    # "$result":Ljava/lang/Object;
    goto :goto_7

    .end local v1    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .end local v4    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v8    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v10    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v15    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v2, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v3, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .local v18, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_a
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v2

    move-object v2, v3

    .line 154
    .end local v3    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "e$iv$iv":Ljava/lang/Throwable;
    .local v1, "$result":Ljava/lang/Object;
    .local v2, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .local v5, "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .local v16, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_7
    move-object v3, v0

    .line 155
    .end local v11    # "cause$iv$iv":Ljava/lang/Throwable;
    .local v3, "cause$iv$iv":Ljava/lang/Throwable;
    nop

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v5    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "$i$f$consumeEach":I
    .end local v14    # "$i$f$consume":I
    .end local v16    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .end local v0    # "e$iv$iv":Ljava/lang/Throwable;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .restart local v5    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .restart local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v13    # "$i$f$consumeEach":I
    .restart local v14    # "$i$f$consume":I
    .restart local v16    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_b
    move-exception v0

    move-object v4, v0

    .line 152
    :try_start_10
    invoke-static {v12, v3}, Lkotlinx/coroutines/channels/ChannelsKt;->cancelConsumed(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)V

    .end local v1    # "$result":Ljava/lang/Object;
    .end local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v5    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .end local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v16    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    throw v4
    :try_end_10
    .catch Lkotlinx/coroutines/flow/internal/AbortFlowException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 133
    .end local v3    # "cause$iv$iv":Ljava/lang/Throwable;
    .end local v7    # "$this$consumeEach$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v12    # "$this$consume$iv$iv":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v13    # "$i$f$consumeEach":I
    .end local v14    # "$i$f$consume":I
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v2    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local v5    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .restart local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v16    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    :catchall_c
    move-exception v0

    move-object v3, v2

    move-object v4, v5

    move-object/from16 v2, v16

    move-object v5, v0

    move-object/from16 v0, v18

    goto :goto_8

    .line 129
    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v4, v5

    move-object/from16 v2, v16

    move-object/from16 v0, v18

    goto :goto_9

    .line 133
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v5    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .end local v16    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v2, "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .local v3, "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catchall_d
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v1, p1

    move-object v5, v0

    move-object/from16 v0, v18

    .line 132
    .end local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$result":Ljava/lang/Object;
    .local v0, "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v1    # "$result":Ljava/lang/Object;
    .local v4, "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    :goto_8
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->isClosedForReceive()Z

    move-result v6

    if-nez v6, :cond_e

    new-instance v6, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {v6}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>()V

    check-cast v6, Ljava/util/concurrent/CancellationException;

    invoke-interface {v0, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_e
    throw v5

    .line 129
    .end local v0    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .restart local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$result":Ljava/lang/Object;
    :catch_2
    move-exception v0

    move-object/from16 v4, p0

    move-object/from16 v1, p1

    move-object/from16 v0, v18

    .line 132
    .end local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local p1    # "$result":Ljava/lang/Object;
    .restart local v0    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v1    # "$result":Ljava/lang/Object;
    .restart local v4    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    :goto_9
    invoke-interface {v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->isClosedForReceive()Z

    move-result v5

    if-nez v5, :cond_f

    new-instance v5, Lkotlinx/coroutines/flow/internal/AbortFlowException;

    invoke-direct {v5}, Lkotlinx/coroutines/flow/internal/AbortFlowException;-><init>()V

    check-cast v5, Ljava/util/concurrent/CancellationException;

    invoke-interface {v0, v5}, Lkotlinx/coroutines/channels/ReceiveChannel;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 133
    :cond_f
    move-object v10, v2

    .line 134
    .end local v0    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .end local v2    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .end local v3    # "otherIterator":Lkotlinx/coroutines/channels/ChannelIterator;
    .end local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v10    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 117
    .end local v1    # "$result":Ljava/lang/Object;
    .end local v4    # "this":Lkotlinx/coroutines/flow/internal/CombineKt$zipImpl$$inlined$unsafeFlow$1$lambda$1;
    .end local v10    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v2    # "$this$coroutineScope":Lkotlinx/coroutines/CoroutineScope;
    .restart local v9    # "first":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local v18    # "second":Lkotlinx/coroutines/channels/ReceiveChannel;
    .restart local p1    # "$result":Ljava/lang/Object;
    :cond_10
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.channels.SendChannel<*>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
