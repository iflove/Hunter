.class public Lcom/alipay/mobile/common/rpc/LiteRpcInvoker;
.super Lcom/alipay/mobile/common/rpc/RpcInvoker;
.source "LiteRpcInvoker.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V
    .locals 0
    .param p1, "rpcFactory"    # Lcom/alipay/mobile/common/rpc/RpcFactory;

    .line 15
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/rpc/RpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected exceptionHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcException;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;J)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "rawResult"    # [B
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "args"    # [Ljava/lang/Object;
    .param p6, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p7, "exception"    # Lcom/alipay/mobile/common/rpc/RpcException;
    .param p8, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .param p9, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            "J)V"
        }
    .end annotation

    .line 26
    return-void
.end method

.method protected postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "rawResult"    # [B
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "args"    # [Ljava/lang/Object;
    .param p6, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p7, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            ")V"
        }
    .end annotation

    .line 21
    return-void
.end method

.method protected preHandle(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
    .locals 0
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "method"    # Ljava/lang/reflect/Method;
    .param p4, "args"    # [Ljava/lang/Object;
    .param p5, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p6, "invokeContext"    # Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;",
            ")V"
        }
    .end annotation

    .line 31
    return-void
.end method
