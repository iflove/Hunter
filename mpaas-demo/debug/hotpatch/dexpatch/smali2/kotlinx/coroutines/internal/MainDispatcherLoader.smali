.class public final Lkotlinx/coroutines/internal/MainDispatcherLoader;
.super Ljava/lang/Object;
.source "MainDispatchers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,114:1\n1658#2,14:115\n*E\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n35#1,14:115\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/MainDispatcherLoader;",
        "",
        "()V",
        "FAST_SERVICE_LOADER_ENABLED",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "loadMainDispatcher",
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
.field private static final FAST_SERVICE_LOADER_ENABLED:Z

.field public static final INSTANCE:Lkotlinx/coroutines/internal/MainDispatcherLoader;

.field public static final dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;

    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->INSTANCE:Lkotlinx/coroutines/internal/MainDispatcherLoader;

    .line 15
    const-string v1, "kotlinx.coroutines.fast.service.loader"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->FAST_SERVICE_LOADER_ENABLED:Z

    .line 18
    invoke-direct {v0}, Lkotlinx/coroutines/internal/MainDispatcherLoader;->loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final loadMainDispatcher()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .locals 12

    .line 21
    nop

    .line 22
    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    sget-boolean v2, Lkotlinx/coroutines/internal/MainDispatcherLoader;->FAST_SERVICE_LOADER_ENABLED:Z

    if-eqz v2, :cond_0

    .line 23
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .local v2, "clz":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 24
    .local v3, "$i$a$-let-MainDispatcherLoader$loadMainDispatcher$factories$1":I
    sget-object v4, Lkotlinx/coroutines/internal/FastServiceLoader;->INSTANCE:Lkotlinx/coroutines/internal/FastServiceLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "clz.classLoader"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v2, v5}, Lkotlinx/coroutines/internal/FastServiceLoader;->load$kotlinx_coroutines_core(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v4

    .line 23
    .end local v2    # "clz":Ljava/lang/Class;
    .end local v3    # "$i$a$-let-MainDispatcherLoader$loadMainDispatcher$factories$1":I
    goto :goto_0

    .line 30
    :cond_0
    nop

    .line 33
    nop

    .line 30
    nop

    .line 33
    nop

    .line 30
    nop

    .line 33
    nop

    .line 30
    nop

    .line 31
    const-class v2, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .line 32
    const-class v3, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 30
    invoke-static {v2, v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "ServiceLoader.load(\n    \u2026             ).iterator()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v4

    .line 22
    :goto_0
    move-object v2, v4

    .line 35
    .local v2, "factories":Ljava/util/List;
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$maxBy$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 115
    .local v4, "$i$f$maxBy":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 116
    .local v5, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v1

    goto :goto_1

    .line 117
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 118
    .local v6, "maxElem$iv":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    move-object v7, v6

    check-cast v7, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .local v7, "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    const/4 v8, 0x0

    .line 35
    .local v8, "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    invoke-interface {v7}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v9

    .end local v7    # "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    .end local v8    # "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    move v7, v9

    .line 120
    .local v7, "maxValue$iv":I
    :cond_3
    nop

    .line 121
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 122
    .local v8, "e$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    .local v9, "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    const/4 v10, 0x0

    .line 35
    .local v10, "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    invoke-interface {v9}, Lkotlinx/coroutines/internal/MainDispatcherFactory;->getLoadPriority()I

    move-result v11

    .end local v9    # "it":Lkotlinx/coroutines/internal/MainDispatcherFactory;
    .end local v10    # "$i$a$-maxBy-MainDispatcherLoader$loadMainDispatcher$1":I
    move v9, v11

    .line 123
    .local v9, "v$iv":I
    if-ge v7, v9, :cond_4

    .line 124
    move-object v6, v8

    .line 125
    move v7, v9

    .line 127
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 128
    .end local v8    # "e$iv":Ljava/lang/Object;
    .end local v9    # "v$iv":I
    nop

    .end local v3    # "$this$maxBy$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$maxBy":I
    .end local v5    # "iterator$iv":Ljava/util/Iterator;
    .end local v6    # "maxElem$iv":Ljava/lang/Object;
    .end local v7    # "maxValue$iv":I
    :goto_1
    check-cast v6, Lkotlinx/coroutines/internal/MainDispatcherFactory;

    if-eqz v6, :cond_5

    .line 35
    invoke-static {v6, v2}, Lkotlinx/coroutines/internal/MainDispatchersKt;->tryCreateDispatcher(Lkotlinx/coroutines/internal/MainDispatcherFactory;Ljava/util/List;)Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_2

    .line 36
    :cond_5
    new-instance v3, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    invoke-direct {v3, v1, v1, v0, v1}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lkotlinx/coroutines/MainCoroutineDispatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "factories":Ljava/util/List;
    :goto_2
    goto :goto_3

    .line 37
    :catchall_0
    move-exception v2

    .line 39
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;

    invoke-direct {v3, v2, v1, v0, v1}, Lkotlinx/coroutines/internal/MissingMainCoroutineDispatcher;-><init>(Ljava/lang/Throwable;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Lkotlinx/coroutines/MainCoroutineDispatcher;

    .line 21
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v3
.end method
