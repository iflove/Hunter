.class public Lcom/alipay/mobile/nebulax/engine/a/d/g;
.super Lcom/alipay/mobile/nebulax/engine/common/c/c;
.source "WebExitPerform.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private c:Landroid/os/Bundle;

.field private d:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private e:Lcom/alipay/mobile/h5container/api/H5Page;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .line 45
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulax/engine/common/c/c;-><init>(Lcom/alipay/mobile/nebulax/engine/api/bridge/NXBridge;)V

    .line 28
    const-string p3, "NebulaXEngine.WebExitPerform"

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->a:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 47
    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->c:Landroid/os/Bundle;

    .line 48
    invoke-interface {p4}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 49
    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/a/d/g;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object p0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulax/engine/a/d/g;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->f:Z

    return p0
.end method


# virtual methods
.method protected a(Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V
    .locals 14

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->f:Z

    if-eqz v0, :cond_0

    .line 55
    return-void

    .line 57
    :cond_0
    nop

    .line 58
    const-string v0, "h5_logNewBlankScreenConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_5

    .line 60
    const-string v2, "enable"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    const-string v3, "appId"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    sget-object v4, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 63
    const-string v4, "script"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    .line 65
    :cond_1
    const-string v4, "testFilter"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 66
    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 67
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 68
    iget-object v7, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getStart()J

    move-result-wide v7

    .line 69
    sub-long v9, v4, v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    int-to-long v11, v0

    cmp-long v13, v9, v11

    if-gez v13, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 70
    :goto_1
    iget-object v10, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->a:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "check dsl currentTime : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " startTime : "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " filterTime : "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " filter : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 73
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 74
    const-string v0, "yes"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 75
    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v9, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 78
    iput-boolean v6, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->f:Z

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget-object v1, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->dslJs:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/g$1;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/g;Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 99
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulax/engine/a/d/g$2;-><init>(Lcom/alipay/mobile/nebulax/engine/a/d/g;Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 109
    :cond_4
    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;->afterProcess(Z)V

    .line 111
    :goto_2
    goto :goto_3

    .line 112
    :cond_5
    invoke-interface {p1, v1}, Lcom/alipay/mobile/nebulax/engine/api/model/ExitCallback;->afterProcess(Z)V

    .line 114
    :goto_3
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->e:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 119
    return-void
.end method

.method public a()Z
    .locals 4

    .line 132
    const-string v0, "h5_isCollectDestroyJsApi"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    if-eqz v2, :cond_1

    .line 134
    const-string v2, "enable"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v3, "appId"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->d:Lcom/alipay/mobile/h5container/api/H5PageData;

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5PageData;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isAppIdMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_0
    return v1

    .line 142
    :cond_1
    return v1
.end method

.method public b()Z
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->c:Landroid/os/Bundle;

    const-string v1, "isTinyApp"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->isCloseCheckDsl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/g;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 124
    :goto_0
    return v2

    .line 127
    :cond_1
    return v2
.end method
