.class public Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;
.super Ljava/lang/Object;
.source "UCEmbededViewWrapper.java"

# interfaces
.implements Lcom/uc/webview/export/extension/IEmbedView;


# instance fields
.field private mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

.field private mRealView:Landroid/view/View;

.field private mWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebViewListener;Lcom/uc/webview/export/extension/EmbedViewConfig;)V
    .locals 0
    .param p1, "realView"    # Landroid/view/View;
    .param p2, "webViewListener"    # Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .param p3, "embedViewConfig"    # Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mRealView:Landroid/view/View;

    .line 26
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 27
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 28
    return-void
.end method


# virtual methods
.method public getSnapShot()Landroid/graphics/Bitmap;
    .locals 8

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCWebView onEmbedView getSnapShot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    invoke-virtual {v1}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UCWebView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v4, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 39
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v6, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v7, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 38
    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/view/UCEmbededViewWrapper;->mRealView:Landroid/view/View;

    return-object v0
.end method
