.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;
.super Ljava/lang/Object;
.source "H5AppUpdateProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "H5OpenPlatResultRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl;

.field private b:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;

.field private c:Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl;Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl;
    .param p2, "appErrorRpcListen"    # Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;
    .param p3, "rpcAppModle"    # Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;

    .line 124
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;

    .line 125
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 133
    invoke-interface {v0, v2, v2}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;->getResultCallback(ZZ)V

    return-void

    .line 136
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;

    .line 137
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;->getErrorCode()I

    move-result v0

    const v1, 0x30e6d

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    move v0, v2

    .line 138
    .local v0, "isLimit":Z
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "rpcAppModle.getErrorCode() :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;

    .line 139
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppUpdateProviderImpl$H5OpenPlatResultRunnable;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/modle/RpcAppModle;->isSuccess()Z

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5AppErrorRpcListen;->getResultCallback(ZZ)V

    .line 142
    .end local v0    # "isLimit":Z
    return-void
.end method
