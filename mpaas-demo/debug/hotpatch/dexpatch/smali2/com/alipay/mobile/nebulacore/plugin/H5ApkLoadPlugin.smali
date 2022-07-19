.class public Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ApkLoadPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ApkLoadPlugin"


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "isNeed":Z
    const-string v1, "h5_loadSecPage"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 103
    .local v3, "needLoadSecPage":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const-string v1, "no"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    .line 111
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "https://ds.alipay.com/error/securityLink.htm?url="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    .line 113
    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 114
    .local v2, "nextUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v2    # "nextUrl":Ljava/lang/String;
    return-void

    .line 115
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 116
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error: Unsupported encoding exception on "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "H5ApkLoadPlugin"

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    return-void
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 12
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 54
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PageShouldLoadUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 56
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v3, "url"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    .line 57
    .local v4, "url":Ljava/lang/String;
    move-object v4, v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v3

    .line 58
    .local v5, "path":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v6, ".apk"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getLastTouch()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 63
    .local v6, "delta":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "apk file url "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "H5ApkLoadPlugin"

    invoke-static {v8, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const-string v9, "historySize"

    invoke-static {v1, v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    .line 66
    .local v1, "historySize":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "historySize "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " delta "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-wide/16 v9, 0x190

    cmp-long v11, v6, v9

    if-gez v11, :cond_1

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "user trigger apk download delta "

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return v2

    .line 75
    :cond_1
    if-gtz v1, :cond_2

    .line 76
    const-string v3, "skip first apk download url"

    invoke-static {v8, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return v2

    .line 80
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v8

    .line 81
    .local v3, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v3, v8

    if-eqz v8, :cond_3

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/h5container/service/H5Service;->isAliDomain(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 83
    return v2

    .line 87
    :cond_3
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->getNewDomainSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 88
    .local v8, "domainSuffix":Ljava/lang/String;
    const-string v9, "h5_302_download_apk_whiteList"

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    .local v9, "regexArray":Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5DomainUtil;->isSomeDomainInternal(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 90
    if-eqz v10, :cond_4

    .line 91
    return v2

    .line 94
    :cond_4
    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->a(Ljava/lang/String;)V

    .line 95
    const/4 v2, 0x1

    return v2

    .line 59
    .end local v1    # "historySize":I
    .end local v3    # "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    .end local v6    # "delta":J
    .end local v8    # "domainSuffix":Ljava/lang/String;
    .end local v9    # "regexArray":Ljava/lang/String;
    :cond_5
    :goto_0
    return v2

    .line 97
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "path":Ljava/lang/String;
    :cond_6
    return v2
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 40
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 49
    const-string v0, "h5PageShouldLoadUrl"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ApkLoadPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 45
    return-void
.end method
