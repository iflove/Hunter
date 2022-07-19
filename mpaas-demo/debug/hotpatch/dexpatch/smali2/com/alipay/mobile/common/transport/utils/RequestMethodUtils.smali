.class public final Lcom/alipay/mobile/common/transport/utils/RequestMethodUtils;
.super Ljava/lang/Object;
.source "RequestMethodUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createHttpUriRequestByMethod(Lorg/apache/http/HttpEntity;Ljava/lang/String;Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/net/URI;

    .line 30
    const-string v0, "PUT"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    .line 32
    .local v0, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    if-eqz p0, :cond_0

    .line 33
    new-instance v1, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 35
    :cond_0
    return-object v0

    .line 36
    .end local v0    # "httpPut":Lorg/apache/http/client/methods/HttpPut;
    :cond_1
    const-string v0, "POST"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 38
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    if-eqz p0, :cond_2

    .line 39
    new-instance v1, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 41
    :cond_2
    return-object v0

    .line 42
    .end local v0    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_3
    const-string v0, "HEAD"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    new-instance v0, Lorg/apache/http/client/methods/HttpHead;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 44
    :cond_4
    const-string v0, "DELETE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 46
    :cond_5
    const-string v0, "OPTIONS"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    new-instance v0, Lorg/apache/http/client/methods/HttpOptions;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpOptions;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 48
    :cond_6
    const-string v0, "TRACE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 49
    new-instance v0, Lorg/apache/http/client/methods/HttpTrace;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpTrace;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 50
    :cond_7
    const-string v0, "GET"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object v0

    .line 54
    :cond_8
    if-eqz p0, :cond_9

    .line 55
    new-instance v0, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;

    invoke-direct {v0, p2, p1}, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 56
    .local v1, "httpPostExt":Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;
    move-object v1, v0

    new-instance v2, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/common/transport/http/ZNetworkHttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 57
    return-object v1

    .line 59
    .end local v1    # "httpPostExt":Lcom/alipay/mobile/common/transport/http/method/HttpPostExt;
    :cond_9
    new-instance v0, Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;

    invoke-direct {v0, p2, p1}, Lcom/alipay/mobile/common/transport/http/method/HttpGetExt;-><init>(Ljava/net/URI;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final getMethodByHttpUriRequest(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .line 64
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpPut;

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "PUT"

    return-object v0

    .line 68
    :cond_0
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "POST"

    return-object v0

    .line 72
    :cond_1
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpHead;

    if-eqz v0, :cond_2

    .line 73
    const-string v0, "HEAD"

    return-object v0

    .line 76
    :cond_2
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpDelete;

    if-eqz v0, :cond_3

    .line 77
    const-string v0, "DELETE"

    return-object v0

    .line 80
    :cond_3
    instance-of v0, p0, Lorg/apache/http/client/methods/HttpOptions;

    if-eqz v0, :cond_4

    .line 81
    const-string v0, "OPTIONS"

    return-object v0

    .line 84
    :cond_4
    const-string v0, "GET"

    return-object v0
.end method
