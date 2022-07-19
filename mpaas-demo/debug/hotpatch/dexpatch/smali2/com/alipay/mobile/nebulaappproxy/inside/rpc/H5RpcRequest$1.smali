.class Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;
.super Ljava/lang/Object;
.source "H5RpcRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;

.field final synthetic val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field final synthetic val$toast:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;

    .line 207
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;->val$toast:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;->val$toast:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest$1;->val$h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5RpcRequest;->showToast(Ljava/lang/String;ILcom/alipay/mobile/h5container/api/H5Page;)V

    .line 211
    return-void
.end method
