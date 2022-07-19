.class public Lcom/alipay/mobile/framework/service/common/OrderedExecutor;
.super Ljava/lang/Object;
.source "OrderedExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;,
        Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;


# instance fields
.field private final b:Ljava/util/concurrent/Executor;

.field private c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Lcom/alipay/mobile/framework/service/common/OrderedExecutor<",
            "TK;>.Task;>;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_0

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->b:Ljava/util/concurrent/Executor;

    .line 77
    iput-object p2, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->c:Ljava/util/concurrent/Executor;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->d:Ljava/util/Map;

    .line 79
    return-void

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "executor is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->c:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->e:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    return-object p0
.end method

.method static synthetic access$300()Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;
    .locals 1

    .line 37
    sget-object v0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->a:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    return-object v0
.end method

.method public static setGlobalRunnableHandler(Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->a:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    if-nez v0, :cond_0

    .line 48
    sput-object p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->a:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public setRunnableHandler(Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->e:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    if-nez v0, :cond_0

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->e:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    .line 61
    :cond_0
    return-void
.end method

.method public submit(Ljava/lang/Object;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->e:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    .line 89
    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->a:Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;

    .line 92
    :cond_0
    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, p2}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$RunnableHandler;->handleOnSubmit(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p2

    .line 95
    :cond_1
    if-nez p2, :cond_2

    .line 96
    return-void

    .line 99
    :cond_2
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;

    .line 101
    if-nez v0, :cond_3

    .line 102
    new-instance v0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;-><init>(Lcom/alipay/mobile/framework/service/common/OrderedExecutor;)V

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/OrderedExecutor;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :cond_3
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/common/OrderedExecutor$Task;->add(Ljava/lang/Runnable;)V

    .line 106
    monitor-exit p0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
