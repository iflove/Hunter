.class public Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;
.super Ljava/lang/Object;
.source "MpaasHttpTransportSevice.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/Transport;


# static fields
.field private static b:Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/HttpManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    .line 43
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context parameter can\'t be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    sget-object v0, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;->b:Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;

    if-eqz v0, :cond_0

    .line 26
    return-object v0

    .line 28
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;->b:Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;

    if-eqz v1, :cond_1

    .line 30
    monitor-exit v0

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;->b:Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;

    .line 33
    monitor-exit v0

    .line 34
    return-object v1

    .line 33
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 1
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

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/common/impl/MpaasHttpTransportSevice;->a:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
