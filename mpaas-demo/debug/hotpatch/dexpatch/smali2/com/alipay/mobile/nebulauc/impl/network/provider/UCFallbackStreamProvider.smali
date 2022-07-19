.class public Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;
.super Ljava/lang/Object;
.source "UCFallbackStreamProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$H5RequestAdapter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5UCFallbackStreamProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .line 38
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .end local p1    # "url":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 43
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    invoke-direct {v2, v1}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    new-instance v3, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 45
    .local v3, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setAsyncMonitorLog(Z)V

    .line 47
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/network/AlipaySpdyDowngrade;->getSwitchControl()Z

    move-result v5

    const-string v6, "H5UCFallbackStreamProvider"

    if-nez v5, :cond_1

    .line 48
    const-string v5, "formatRequest !useSpdyFromJS return"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setCapture(Z)V

    .line 53
    :cond_1
    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->enqueue(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 55
    .local v4, "future":Ljava/util/concurrent/Future;
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 56
    .local v5, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    const/4 v7, 0x0

    .line 57
    .local v7, "gzip":Z
    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toMultimap()Ljava/util/Map;

    move-result-object v8

    .line 58
    .local v8, "responseHeaders":Ljava/util/Map;
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const-string v11, " "

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 59
    .local v10, "key":Ljava/lang/String;
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 60
    .local v12, "valueList":Ljava/util/List;
    const-string v13, "Content-Encoding"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    .line 61
    .local v13, "contentEncoding":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 62
    .local v15, "value":Ljava/lang/String;
    move-object/from16 p1, v1

    .end local v1    # "context":Landroid/content/Context;
    .local p1, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .local v16, "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    const-string v2, "handleResponse headers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz v13, :cond_2

    const-string v1, "gzip"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const/4 v7, 0x1

    .line 66
    .end local v15    # "value":Ljava/lang/String;
    :cond_2
    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto :goto_1

    .line 61
    .end local v16    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    :cond_3
    move-object/from16 p1, v1

    move-object/from16 v16, v2

    .line 67
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .end local v10    # "key":Ljava/lang/String;
    .end local v12    # "valueList":Ljava/util/List;
    .end local v13    # "contentEncoding":Z
    .restart local v16    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_0

    .line 68
    .end local v16    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    :cond_4
    move-object/from16 p1, v1

    move-object/from16 v16, v2

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .restart local v16    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .restart local p1    # "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponse gzip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 71
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v7, :cond_5

    .line 72
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v2

    .line 74
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFallbackInputStream success "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getCode()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-object v1
.end method

.method public httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJZ)Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
    .locals 22
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "headers"    # Ljava/util/Map;
    .param p4, "requestData"    # [B
    .param p5, "timeout"    # J
    .param p7, "useSpdy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BJZ)",
            "Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    new-instance v1, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    move-object/from16 v3, p2

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 85
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setAsyncMonitorLog(Z)V

    .line 86
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, " "

    const-string v8, "H5UCFallbackStreamProvider"

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 87
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v9, p3

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 88
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v1, v6, v10}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "request headers "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v6    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_0

    .line 91
    :cond_0
    move-object/from16 v9, p3

    move-object/from16 v5, p4

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setReqData([B)V

    .line 92
    move-wide/from16 v10, p5

    invoke-virtual {v1, v10, v11}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setTimeout(J)V

    .line 93
    if-eqz p7, :cond_1

    .line 94
    iput v4, v1, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    goto :goto_1

    .line 96
    :cond_1
    const/4 v4, 0x2

    iput v4, v1, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 99
    :goto_1
    new-instance v4, Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$H5RequestAdapter;

    const/4 v6, 0x0

    move-object/from16 v12, p0

    invoke-direct {v4, v12, v6}, Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$H5RequestAdapter;-><init>(Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider;Lcom/alipay/mobile/nebulauc/impl/network/provider/UCFallbackStreamProvider$1;)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setTransportCallback(Lcom/alipay/mobile/common/transport/TransportCallback;)V

    .line 100
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->enqueue(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 102
    .local v4, "future":Ljava/util/concurrent/Future;
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    .line 103
    .local v6, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    new-instance v13, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;

    invoke-direct {v13}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;-><init>()V

    .line 104
    .local v13, "h5CustomHttpResponse":Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getCode()I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->setStatusCode(I)V

    .line 105
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 107
    const/4 v14, 0x0

    .line 108
    .local v14, "gzip":Z
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v15

    invoke-virtual {v15}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->toMultimap()Ljava/util/Map;

    move-result-object v15

    .line 109
    .local v15, "responseHeaders":Ljava/util/Map;
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    .end local v0    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .local v18, "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .line 110
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 111
    .local v17, "valueList":Ljava/util/List;
    move-object/from16 v19, v1

    .end local v1    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .local v19, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    const-string v1, "Content-Encoding"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 112
    .local v1, "contentEncoding":Z
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v2, v21

    check-cast v2, Ljava/lang/String;

    .line 113
    .local v2, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "future":Ljava/util/concurrent/Future;
    .local v21, "future":Ljava/util/concurrent/Future;
    const-string v4, "handleResponse headers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    if-eqz v1, :cond_2

    const-string v3, "gzip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    const/4 v14, 0x1

    .line 117
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, v21

    goto :goto_3

    .line 112
    .end local v21    # "future":Ljava/util/concurrent/Future;
    .restart local v4    # "future":Ljava/util/concurrent/Future;
    :cond_3
    move-object/from16 v21, v4

    .line 118
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "contentEncoding":Z
    .end local v4    # "future":Ljava/util/concurrent/Future;
    .end local v17    # "valueList":Ljava/util/List;
    .restart local v21    # "future":Ljava/util/concurrent/Future;
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    goto :goto_2

    .line 119
    .end local v18    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .end local v19    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .end local v21    # "future":Ljava/util/concurrent/Future;
    .local v0, "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .local v1, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v4    # "future":Ljava/util/concurrent/Future;
    :cond_4
    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move-object/from16 v21, v4

    .end local v0    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .end local v1    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .end local v4    # "future":Ljava/util/concurrent/Future;
    .restart local v18    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .restart local v19    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .restart local v21    # "future":Ljava/util/concurrent/Future;
    const/4 v0, 0x0

    .line 120
    .local v0, "gzipStream":Ljava/io/InputStream;
    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 121
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v14, :cond_5

    .line 122
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 124
    :cond_5
    if-eqz v0, :cond_6

    move-object v2, v0

    goto :goto_4

    :cond_6
    move-object v2, v1

    .line 125
    .local v2, "realStream":Ljava/io/InputStream;
    :goto_4
    invoke-virtual {v13, v2}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->setResStream(Ljava/io/InputStream;)V

    .line 126
    return-object v13
.end method
