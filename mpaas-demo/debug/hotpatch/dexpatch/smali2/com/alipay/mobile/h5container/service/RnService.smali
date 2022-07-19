.class public abstract Lcom/alipay/mobile/h5container/service/RnService;
.super Lcom/alipay/mobile/nebula/wallet/H5ExternalService;
.source "RnService.java"


# static fields
.field public static final RN_BIZ_TYPE_PREFIX:Ljava/lang/String; = "rn_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/wallet/H5ExternalService;-><init>()V

    return-void
.end method

.method public static isRnBiz(Ljava/lang/String;)Z
    .locals 1
    .param p0, "bizType"    # Ljava/lang/String;

    .line 26
    if-eqz p0, :cond_0

    const-string/jumbo v0, "rn_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract addRnView(Lcom/alipay/mobile/h5container/api/H5Page;Landroidx/fragment/app/FragmentManager;)Z
.end method

.method public abstract createWebView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;
.end method

.method public abstract getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract init()V
.end method

.method public abstract removeRnView(Lcom/alipay/mobile/h5container/api/H5Page;Landroidx/fragment/app/FragmentManager;)Z
.end method
