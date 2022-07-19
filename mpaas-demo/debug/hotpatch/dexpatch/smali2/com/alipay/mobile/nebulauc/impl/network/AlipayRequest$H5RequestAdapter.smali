.class Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;
.super Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;
.source "AlipayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H5RequestAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V
    .locals 0

    .line 1930
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
    .param p2, "x1"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;

    .line 1930
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 1934
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onCancelled(Lcom/alipay/mobile/common/transport/Request;)V

    .line 1935
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 11
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .line 1972
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    const/4 v1, 0x1

    # setter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponseGetError:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1202(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Z)Z

    .line 1973
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 1974
    .local v0, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getRequestMethod()Ljava/lang/String;

    move-result-object v10

    .line 1975
    .local v10, "requestMethod":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asyncRequest onFailed code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    if-ne p2, v1, :cond_0

    .line 1977
    const/4 p2, -0x7

    .line 1979
    :cond_0
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const-string v2, "linkType"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spdy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1981
    .local v1, "isSpdyLink":Z
    if-eqz v1, :cond_1

    .line 1982
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "spdy failed, try http"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    const-string v7, "YES"

    const-string v8, "NO"

    move-object v4, v10

    move v5, p2

    move-object v6, p3

    # invokes: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->monitorLogger(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v2 .. v9}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1300(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1985
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    const/4 v3, 0x0

    const-string v4, "YES"

    invoke-virtual {v2, v3, v4, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z

    .line 1986
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1400(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)I

    move-result v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1987
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorSpdyCode(I)V

    .line 1988
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorSpdyMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 1991
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->requestType:I
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1400(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)I

    move-result v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/util/CommonUtil;->isMainDoc(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1992
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/alipay/mobile/h5container/api/H5PageData;->setStatusCode(I)V

    .line 1993
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pageData:Lcom/alipay/mobile/h5container/api/H5PageData;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1500(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setErrorMsg(Ljava/lang/String;)V

    .line 1995
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1996
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    invoke-direct {v3, v2, p2, p3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;ILjava/lang/String;)V

    # setter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pendingResponse:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1002(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;)Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    goto :goto_0

    .line 1998
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->error(ILjava/lang/String;)V

    .line 2000
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    .line 2001
    const-string v5, "spdyRetry"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 2000
    const-string v7, "NO"

    move-object v4, v10

    move v5, p2

    move-object v6, p3

    # invokes: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->monitorLogger(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v2 .. v9}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1300(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2004
    :cond_4
    :goto_1
    return-void
.end method

.method public onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 5
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .param p2, "response"    # Lcom/alipay/mobile/common/transport/Response;

    .line 1947
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 1948
    .local v0, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1949
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->mNeedPendingResponse:Z
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$900(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1950
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V

    # setter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->pendingResponse:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1002(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;)Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$PendingResponse;

    goto :goto_1

    .line 1953
    :cond_0
    if-eqz v0, :cond_2

    .line 1956
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1957
    :catchall_0
    move-exception v1

    .line 1958
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "onPostExecute close httpUrlResponse exception "

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1959
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 1963
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # invokes: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->handleResponse(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$1100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;)V

    .line 1965
    :cond_2
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1966
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->viewId:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$800(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "AlipayRequest"

    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionEnd(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1968
    :cond_3
    return-void
.end method

.method public onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 4
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;

    .line 1939
    invoke-static {}, Lcom/alipay/mobile/nebula/data/H5Trace;->isTraceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->viewId:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$800(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "url"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$H5RequestAdapter;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "AlipayRequest"

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebula/data/H5Trace;->sessionBegin(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1942
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transport/TransportCallbackAdapter;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    .line 1943
    return-void
.end method
