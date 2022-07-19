.class Lcom/alipay/mobile/common/rpc/RpcInvoker$2;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/rpc/RpcInvoker;->postHandle(Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;[Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/transport/InnerRpcInvokeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$proxy:Ljava/lang/Object;

.field final synthetic val$rawResult:[B


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 291
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$rawResult:[B

    iput-object p4, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iput-object p5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/alipay/mobile/common/rpc/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z
    .locals 10
    .param p1, "rpcInterceptor"    # Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .param p2, "annotation"    # Ljava/lang/annotation/Annotation;

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " Start execute postHandle. rpcInterceptor is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RpcInvoker"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$proxy:Ljava/lang/Object;

    # getter for: Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;
    invoke-static {}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->access$100()Ljava/lang/ThreadLocal;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$rawResult:[B

    iget-object v6, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$clazz:Ljava/lang/Class;

    iget-object v7, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$method:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;->val$args:[Ljava/lang/Object;

    move-object v2, p1

    move-object v9, p2

    invoke-interface/range {v2 .. v9}, Lcom/alipay/mobile/common/rpc/RpcInterceptor;->postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;[BLjava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x1

    return v0

    .line 298
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postHandle stop this call."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
.end method
