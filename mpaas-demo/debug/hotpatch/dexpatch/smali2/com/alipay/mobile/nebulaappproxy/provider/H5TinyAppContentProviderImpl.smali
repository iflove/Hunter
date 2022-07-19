.class public Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppContentProviderImpl;
.super Ljava/lang/Object;
.source "H5TinyAppContentProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "appId"    # Ljava/lang/String;

    move-object/from16 v1, p0

    const-string v2, "H5TinyAppContentProvide"

    .line 68
    :try_start_0
    const-string v0, "GET"

    .line 70
    .local v0, "method":Ljava/lang/String;
    new-instance v3, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;-><init>(Landroid/content/Context;)V

    .line 72
    .local v3, "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    new-instance v4, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    invoke-direct {v4, v1}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v6, v5

    .line 73
    .local v6, "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    move-object v6, v4

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v6, v5}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setReqData([B)V

    .line 75
    const-wide/32 v7, 0xea60

    invoke-virtual {v6, v7, v8}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setTimeout(J)V

    .line 76
    const/4 v4, 0x2

    iput v4, v6, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 79
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v5

    .line 80
    .local v7, "cookieStr":Ljava/lang/String;
    move-object v7, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 81
    const-string v4, "Cookie"

    invoke-virtual {v6, v4, v7}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "add cookie:"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , for h5HttpUrlRequest"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    nop

    .line 87
    invoke-virtual {v3, v6}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->enqueue(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)Ljava/util/concurrent/Future;

    move-result-object v4

    .line 88
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;

    move-object v8, v5

    .line 89
    .local v8, "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    move-object v8, v4

    if-eqz v4, :cond_3

    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 90
    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    .line 91
    array-length v9, v4

    const/4 v10, 0x0

    move-object v11, v5

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v9, :cond_2

    aget-object v13, v4, v12

    .line 92
    .local v5, "header":Lorg/apache/http/Header;
    move-object v5, v13

    invoke-interface {v13}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    .line 93
    .local v11, "headerName":Ljava/lang/String;
    move-object v11, v13

    if-eqz v13, :cond_1

    .line 94
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 95
    .local v13, "headerValue":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "name:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " - value:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string/jumbo v14, "set-cookie"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 99
    invoke-static {v1, v13}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "insert cookie:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " , for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .end local v5    # "header":Lorg/apache/http/Header;
    .end local v11    # "headerName":Ljava/lang/String;
    .end local v13    # "headerValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v8}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v10}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->toByteArray(Ljava/io/InputStream;Z)[B

    move-result-object v4

    .line 107
    .local v4, "bytes":[B
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p1

    :try_start_1
    invoke-virtual {v5, v9, v4}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->put(Ljava/lang/String;[B)V

    .line 108
    const-string v5, "downloadAppConfigJson...put bytes"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v4    # "bytes":[B
    return-void

    .line 89
    :cond_3
    move-object/from16 v9, p1

    .line 110
    const-string v4, "downloadAppConfigJson...response error"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .end local v0    # "method":Ljava/lang/String;
    .end local v3    # "h5NetworkManager":Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;
    .end local v6    # "h5HttpUrlRequest":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;
    .end local v7    # "cookieStr":Ljava/lang/String;
    .end local v8    # "httpUrlResponse":Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v9, p1

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "downloadAppConfigJson...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method public getSnapshotData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "pageUrl"    # Ljava/lang/String;
    .param p3, "homepageUrl"    # Ljava/lang/String;

    .line 155
    invoke-static {p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getTemplateAppId(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "instanceAppId"    # Ljava/lang/String;
    .param p2, "startupParams"    # Landroid/os/Bundle;

    .line 135
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getInstance()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getTemplateAppId(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handlerOnAppConfig(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 41
    const-string v0, "appConfigJson"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 42
    .local v2, "appConfigJsonUrl":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isDebug()Z

    move-result v0

    const-string v3, "H5TinyAppContentProvide"

    if-nez v0, :cond_0

    .line 46
    const-string v0, "handlerOnAppConfig...non-debug-mode"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 50
    :cond_0
    const-string v0, "appId"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v1, "appId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "handlerOnAppConfig...app-id-null"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 56
    :cond_1
    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/H5TinyAppContentProviderImpl;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v1    # "appId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public isSnapshotEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public mergeTemplateConfigIfNeed(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "startupParams"    # Landroid/os/Bundle;
    .param p3, "resPkg"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 140
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->getInstance()Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/nebulaappproxy/template/TemplateTinyApp;->dynamicMergeTemplateConfig(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public shouldInterceptRequest(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "url"    # Ljava/lang/String;

    .line 126
    invoke-static {p1, p2}, Lcom/alipay/mobile/aompfilemanager/utils/io/TinyAppFileUtils;->shouldInterceptRequest(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 127
    .local v2, "res":Landroid/webkit/WebResourceResponse;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 128
    return-object v2

    .line 130
    :cond_0
    return-object v1
.end method

.method public startSyncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
    .locals 0
    .param p1, "startAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p2, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .param p3, "copyParam"    # Landroid/os/Bundle;
    .param p4, "currentNbVersion"    # Ljava/lang/String;
    .param p5, "h5AppProvider"    # Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 120
    invoke-static {p1, p2, p3, p4, p5}, Lcom/alipay/mobile/nebulaappproxy/appmanager/TinyAppManagerProcess;->a(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V

    .line 121
    return-void
.end method

.method public triggerSaveSnapshotData(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p2, "homepageUrl"    # Ljava/lang/String;

    .line 160
    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/snapshot/SnapshotProvider;->a(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 161
    return-void
.end method
