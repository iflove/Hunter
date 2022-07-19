.class public Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerClient;
.super Lcom/uc/webview/export/ServiceWorkerClient;
.source "H5ServiceWorkerClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UcService::H5ServiceWorkerClient"


# instance fields
.field private noCache:Z

.field private provider:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;Z)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;
    .param p2, "noCache"    # Z

    .line 34
    invoke-direct {p0}, Lcom/uc/webview/export/ServiceWorkerClient;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerClient;->provider:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    .line 36
    iput-boolean p2, p0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerClient;->noCache:Z

    .line 37
    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 17
    .param p1, "webResourceRequest"    # Lcom/uc/webview/export/WebResourceRequest;

    .line 42
    move-object/from16 v0, p0

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;-><init>(Lcom/uc/webview/export/WebResourceRequest;)V

    .line 45
    .local v1, "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    iget-object v3, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerClient;->provider:Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;

    .line 46
    invoke-interface {v3, v1}, Lcom/alipay/mobile/nebula/provider/H5ServiceWorkerControllerProvider;->shouldInterceptRequest4ServiceWorker(Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    .line 48
    .local v3, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    .line 49
    .local v4, "uri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 50
    .local v5, "response":Lcom/uc/webview/export/WebResourceResponse;
    if-eqz v4, :cond_7

    .line 51
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "host":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "kylinPrefix":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 55
    new-instance v10, Lcom/uc/webview/export/WebResourceResponse;

    .line 56
    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v11

    .line 57
    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v12

    .line 58
    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v5, v10

    .line 59
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v10, "rspHeader":Ljava/util/Map;
    const-string v11, "https://alipay.kylinBridge"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 62
    const-string v11, "*"

    .line 63
    .local v11, "acao":Ljava/lang/String;
    nop

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/uc/webview/export/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v12

    .line 65
    .local v12, "reqHeader":Ljava/util/Map;
    if-eqz v12, :cond_3

    .line 66
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 67
    .local v14, "key":Ljava/lang/String;
    const-string v15, "referer"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 68
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 69
    .local v13, "referer":Ljava/lang/String;
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 70
    .local v15, "referUri":Landroid/net/Uri;
    if-eqz v15, :cond_0

    .line 71
    move-object/from16 v16, v1

    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .local v16, "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v15}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 70
    .end local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_0
    move-object/from16 v16, v1

    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    goto :goto_1

    .line 67
    .end local v13    # "referer":Ljava/lang/String;
    .end local v15    # "referUri":Landroid/net/Uri;
    .end local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_1
    move-object/from16 v16, v1

    .line 76
    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .end local v14    # "key":Ljava/lang/String;
    .restart local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    move-object/from16 v2, p1

    goto :goto_0

    .line 66
    .end local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_2
    move-object/from16 v16, v1

    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    goto :goto_1

    .line 65
    .end local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_3
    move-object/from16 v16, v1

    .line 79
    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :goto_1
    const-string v1, "Access-Control-Allow-Origin"

    invoke-interface {v10, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 60
    .end local v11    # "acao":Ljava/lang/String;
    .end local v12    # "reqHeader":Ljava/util/Map;
    .end local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_4
    move-object/from16 v16, v1

    .line 82
    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :goto_2
    iget-boolean v1, v0, Lcom/alipay/mobile/nebulauc/impl/serviceworker/H5ServiceWorkerClient;->noCache:Z

    if-eqz v1, :cond_5

    .line 83
    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_5
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 87
    invoke-virtual {v5, v10}, Lcom/uc/webview/export/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    goto :goto_3

    .line 54
    .end local v10    # "rspHeader":Ljava/util/Map;
    .end local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_6
    move-object/from16 v16, v1

    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    goto :goto_3

    .line 50
    .end local v6    # "scheme":Ljava/lang/String;
    .end local v7    # "host":Ljava/lang/String;
    .end local v8    # "kylinPrefix":Ljava/lang/String;
    .end local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_7
    move-object/from16 v16, v1

    .line 91
    .end local v1    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    .restart local v16    # "ucWebResourceRequest":Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;
    :cond_8
    :goto_3
    return-object v5
.end method
