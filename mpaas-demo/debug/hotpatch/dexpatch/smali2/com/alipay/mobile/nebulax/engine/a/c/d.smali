.class public Lcom/alipay/mobile/nebulax/engine/a/c/d;
.super Ljava/lang/Object;
.source "WorkerUtils.java"


# direct methods
.method public static a()Landroid/webkit/WebResourceResponse;
    .locals 6

    .line 51
    :try_start_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v1, "application/json"

    const-string v2, "UTF-8"

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const-string v4, ""

    const-string v5, "utf-8"

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object v0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "build empty webResourceResponse exception"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WorkerUtils"

    if-nez v0, :cond_5

    const-string v0, "blob"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "work load url begin:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-nez p0, :cond_1

    .line 69
    const-string p0, "engine proxy is null ,exit "

    invoke-static {v2, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v1

    .line 72
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->newBuilder()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    .line 73
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->uri(Landroid/net/Uri;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    .line 74
    invoke-interface {p0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->sourceNode(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->originUrl(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->canAsyncFallback(Z)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;->WEBTYPE_THIRD_PARTY:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->webType(I)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;

    move-result-object v0

    .line 77
    const-class v3, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    .line 78
    invoke-static {v3}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->as(Ljava/lang/Class;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object v3

    invoke-interface {p0}, Lcom/alipay/mobile/nebulax/engine/api/EngineProxy;->getNode()Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->node(Lcom/alipay/mobile/nebulax/kernel/node/Node;)Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/kernel/extension/ExtensionPoint;->create()Lcom/alipay/mobile/nebulax/kernel/extension/Extension;

    move-result-object p0

    check-cast p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext$Builder;->build()Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/ResourcesLoadPoint;->load(Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadContext;)Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;

    move-result-object p0

    .line 81
    if-eqz p0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    if-nez v0, :cond_2

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "work load url form pkg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "work load url form online:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_1
    if-eqz p0, :cond_4

    .line 87
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/api/extensions/resources/model/ResourcesLoadResponse;->webResourceResponse:Landroid/webkit/WebResourceResponse;

    return-object p0

    .line 90
    :cond_4
    return-object v1

    .line 62
    :cond_5
    :goto_2
    const-string p0, "work load url is empty or start with blob"

    invoke-static {v2, p0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-object v1
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/net/Uri;)Z
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/alipay/mobile/nebulax/engine/a/c/d;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "https://alipay.kylinBridge"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
