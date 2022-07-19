.class public Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
.super Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;
.source "H5HttpUrlResponse.java"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Lorg/apache/http/StatusLine;

.field protected httpResponse:Lorg/apache/http/HttpResponse;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .param p1, "header"    # Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "inputStream"    # Ljava/io/InputStream;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    .line 30
    iput-object p4, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->a:Ljava/io/InputStream;

    .line 31
    return-void
.end method


# virtual methods
.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->b:Lorg/apache/http/StatusLine;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    const-string v1, "H5HttpUrlResponse"

    if-nez v0, :cond_0

    .line 55
    const-string v0, "httpResponse is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 60
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const/4 v2, 0x0

    .line 61
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 62
    return-void

    .line 64
    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 65
    const-string v0, "enter release()"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    return-void

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "release fail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 51
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .locals 0
    .param p1, "statusLine"    # Lorg/apache/http/StatusLine;

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->b:Lorg/apache/http/StatusLine;

    .line 39
    return-void
.end method
