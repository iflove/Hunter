.class Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;
.super Ljava/lang/Object;
.source "AlipayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingResponse"
.end annotation


# instance fields
.field errorCode:I

.field errorMsg:Ljava/lang/String;

.field response:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;ILjava/lang/String;)V
    .locals 0
    .param p2, "errorCode"    # I
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 2032
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->response:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 2033
    iput p2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->errorCode:I

    .line 2034
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->errorMsg:Ljava/lang/String;

    .line 2035
    return-void
.end method

.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V
    .locals 0
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 2028
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->response:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 2029
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->response:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 2030
    return-void
.end method


# virtual methods
.method public setEventHandler(Lcom/uc/webview/export/internal/interfaces/EventHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/uc/webview/export/internal/interfaces/EventHandler;

    .line 2038
    if-eqz p1, :cond_1

    .line 2039
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->response:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->response:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->response:Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    # invokes: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponse(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V

    goto :goto_0

    .line 2043
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    iget v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->errorCode:I

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;->errorMsg:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    .line 2047
    :cond_1
    :goto_0
    return-void
.end method
