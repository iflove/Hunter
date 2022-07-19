.class public Lcom/alipay/mobile/common/rpc/ThirdpartyRpcFactory;
.super Lcom/alipay/mobile/common/rpc/RpcFactory;
.source "ThirdpartyRpcFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ThirdpartyRpcFactory"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 0
    .param p1, "config"    # Lcom/alipay/mobile/common/rpc/Config;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;-><init>(Lcom/alipay/mobile/common/rpc/Config;)V

    .line 21
    return-void
.end method


# virtual methods
.method public addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ")V"
        }
    .end annotation

    .line 26
    const-string v0, "ThirdpartyRpcFactory"

    const-string v1, "addRpcInterceptor,do nothing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;"
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method
