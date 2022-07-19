.class public Lcom/alipay/mobile/common/transport/http/LiteHttpManager;
.super Ljava/lang/Object;
.source "LiteHttpManager.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/LiteHttpManager;->a:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/LiteHttpManager;->a:Landroid/content/Context;

    move-object v2, p1

    check-cast v2, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    .line 25
    .local v0, "httpWorker":Lcom/alipay/mobile/common/transport/rpc/LiteRpcHttpWorker;
    new-instance v1, Lcom/alipay/mobile/common/transport/concurrent/SyncFutureTask;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/transport/concurrent/SyncFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 26
    return-object v1
.end method
