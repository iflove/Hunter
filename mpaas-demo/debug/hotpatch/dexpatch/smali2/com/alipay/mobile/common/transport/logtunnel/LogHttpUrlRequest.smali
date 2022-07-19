.class public Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;
.super Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
.source "LogHttpUrlRequest.java"


# static fields
.field public static final OPERATION_TYPE:Ljava/lang/String; = "log_http_request"


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .line 25
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->init()V

    .line 26
    const-string/jumbo v0, "operationType"

    const-string v1, "log_http_request"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;->setUseHttpStdRetryModel(Z)V

    .line 28
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;->setTimeout(J)V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;->linkType:I

    .line 30
    return-void
.end method

.method protected initInnerBizType(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 0
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 38
    return-void
.end method

.method protected initUpMediaType(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 1
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 33
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/logtunnel/LogHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 34
    return-void
.end method
