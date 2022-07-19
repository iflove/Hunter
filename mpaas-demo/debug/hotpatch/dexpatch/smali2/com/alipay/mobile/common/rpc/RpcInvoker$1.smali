.class Lcom/alipay/mobile/common/rpc/RpcInvoker$1;
.super Ljava/lang/Object;
.source "RpcInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/rpc/RpcInvoker;->asyncNotifyRpcHeaderUpdateEvent(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/reflect/Method;

.field final synthetic val$response:Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/rpc/RpcInvoker;

    .line 191
    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->val$args:[Ljava/lang/Object;

    iput-object p4, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->val$response:Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 194
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcHeader;

    invoke-direct {v0}, Lcom/alipay/mobile/common/rpc/RpcHeader;-><init>()V

    const/4 v1, 0x0

    .line 195
    .local v1, "rpcHeader":Lcom/alipay/mobile/common/rpc/RpcHeader;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->val$method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->val$args:[Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/rpc/util/RpcInvokerUtil;->getOperationTypeValue(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/common/rpc/RpcHeader;->operationType:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->val$response:Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/rpc/RpcHeader;->httpUrlHeader:Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;->this$0:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    # getter for: Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Lcom/alipay/mobile/common/rpc/RpcFactory;
    invoke-static {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->access$000(Lcom/alipay/mobile/common/rpc/RpcInvoker;)Lcom/alipay/mobile/common/rpc/RpcFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->notifyRpcHeaderUpdateEvent(Lcom/alipay/mobile/common/rpc/RpcHeader;)V

    .line 199
    return-void
.end method
