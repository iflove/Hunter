.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/uc/webview/export/extension/IEmbedViewContainer$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->getEmbedView(Lcom/uc/webview/export/extension/EmbedViewConfig;Lcom/uc/webview/export/extension/IEmbedViewContainer;)Lcom/uc/webview/export/extension/IEmbedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

.field tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

.field final synthetic val$embedViewConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;Lcom/uc/webview/export/extension/EmbedViewConfig;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    .line 1083
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->val$embedViewConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 1093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCWebView onEmbedViewVisibilityChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 1095
    invoke-virtual {v1}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    const-string v1, "H5UCWebView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v2, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 1099
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$3;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v6, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 1097
    move v7, p1

    invoke-interface/range {v1 .. v7}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 1103
    :cond_0
    return-void
.end method
