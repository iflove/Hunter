.class public Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;
.super Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
.source "DjgHttpUrlRequest.java"


# static fields
.field public static final INNER_BIZ_TYPE_UNKNOWN:B = -0x1t

.field public static final INNER_BIZ_TYPE_UPANDRECORD:B = 0x1t

.field public static final INNER_BIZ_TYPE_UPINSECONDS:B = 0x2t

.field public static final OPERATION_TYPE:Ljava/lang/String; = "django_http_request"


# instance fields
.field protected innerBizType:Ljava/lang/Byte;

.field protected upMediaType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->upMediaType:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpForm;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "httpForm"    # Lcom/alipay/mobile/common/transport/http/HttpForm;
    .param p3, "headers"    # Ljava/util/ArrayList;
    .param p4, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/http/HttpForm;",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/HttpForm;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->upMediaType:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;ILjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .param p4, "headers"    # Ljava/util/ArrayList;
    .param p5, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;Ljava/io/InputStream;ILjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->upMediaType:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqData"    # [B
    .param p3, "headers"    # Ljava/util/ArrayList;
    .param p4, "tags"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/ArrayList<",
            "Lorg/apache/http/Header;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;[BLjava/util/ArrayList;Ljava/util/HashMap;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->upMediaType:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 3
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->upMediaType:Ljava/lang/String;

    .line 58
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->initInnerBizType(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->initUpMediaType(Lorg/apache/http/client/methods/HttpUriRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    .local v0, "ex":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ex:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DjgHttpUrlRequest"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public getInnerBizType()Ljava/lang/Byte;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    return-object v0
.end method

.method public getUpMediaType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->upMediaType:Ljava/lang/String;

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 67
    invoke-super {p0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->init()V

    .line 68
    const-string/jumbo v0, "operationType"

    const-string v1, "django_http_request"

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->addTags(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->setUseHttpStdRetryModel(Z)V

    .line 70
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->setTimeout(J)V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->linkType:I

    .line 72
    return-void
.end method

.method protected initInnerBizType(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 10
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 85
    const-string/jumbo v0, "uploadType"

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/utils/HttpClientUtils;->removeParamter(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "upType":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    move-object v2, v1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseByte error, upType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DjgHttpUrlRequest"

    invoke-static {v4, v3, v2}, Lcom/alipay/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    if-eqz v3, :cond_1

    .line 95
    return-void

    .line 99
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v2, "url":Ljava/lang/String;
    move-object v2, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "file/head"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 104
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    if-eqz v3, :cond_3

    .line 105
    return-void

    .line 109
    :cond_3
    instance-of v3, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    const/4 v4, -0x1

    if-nez v3, :cond_4

    .line 110
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 111
    return-void

    .line 114
    :cond_4
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "method":Ljava/lang/String;
    move-object v5, p1

    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 116
    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 118
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    move-object v1, v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_5

    .line 119
    const-string v5, "POST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 120
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    iput-object v5, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 123
    :cond_5
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    if-eqz v5, :cond_6

    .line 124
    return-void

    .line 127
    :cond_6
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->innerBizType:Ljava/lang/Byte;

    .line 128
    return-void
.end method

.method protected initUpMediaType(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .param p1, "httpUriRequest"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .line 132
    const-string/jumbo v0, "uploadMediaType"

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/transport/utils/HttpClientUtils;->removeParamter(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    .local v1, "upMediaType":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/alipay/mobile/common/transport/multimedia/DjgHttpUrlRequest;->upMediaType:Ljava/lang/String;

    .line 137
    return-void
.end method
