.class public abstract Lcom/alipay/mobile/h5container/service/UcService;
.super Lcom/alipay/mobile/nebula/wallet/H5ExternalService;
.source "UcService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/wallet/H5ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createWebView(Landroid/content/Context;Z)Lcom/alipay/mobile/nebula/webview/APWebView;
.end method

.method public createWebViewForNebulaX(Landroid/content/Context;ZZ)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enableHA"    # Z
    .param p3, "usedForEmbed"    # Z

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract getUcVersion()Ljava/lang/String;
.end method

.method public abstract init(Z)Z
.end method

.method public abstract initUC7zSo()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
