.class public Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;
.super Ljava/lang/Object;
.source "LiteMpaasHttpTransportSevice.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/Transport;


# static fields
.field private static a:Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;->b:Landroid/content/Context;

    .line 42
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context parameter can\'t be null "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 22
    sget-object v0, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;->a:Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;

    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 26
    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;->a:Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;

    if-eqz v1, :cond_1

    .line 28
    monitor-exit v0

    return-object v1

    .line 30
    :cond_1
    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;->a:Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;

    .line 31
    monitor-exit v0

    .line 33
    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 2
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

    .line 46
    new-instance v0, Lcom/alipay/mobile/common/transport/http/LiteHttpManager;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/common/impl/LiteMpaasHttpTransportSevice;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/http/LiteHttpManager;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/LiteHttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
