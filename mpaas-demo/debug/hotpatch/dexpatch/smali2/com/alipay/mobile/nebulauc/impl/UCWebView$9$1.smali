.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/uc/webview/export/extension/IEmbedViewContainer$OnStateChangedListener;


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

    .line 1020
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->val$embedViewConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    return-void
.end method


# virtual methods
.method public onAttachedToWebView()V
    .locals 7

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCWebView onEmbedViewAttachedToWebView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 1026
    invoke-virtual {v1}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1025
    const-string v1, "H5UCWebView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v2, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 1031
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v6, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 1028
    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1035
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 7

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCWebView onEmbedViewDestroy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 1055
    invoke-virtual {v1}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    const-string v1, "H5UCWebView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v2, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 1059
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v6, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 1057
    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1063
    :cond_0
    return-void
.end method

.method public onDetachedFromWebView()V
    .locals 7

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCWebView onEmbedViewDetachedFromWebView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    .line 1041
    invoke-virtual {v1}, Lcom/uc/webview/export/extension/EmbedViewConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    const-string v1, "H5UCWebView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->this$1:Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1500(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v2, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mWidth:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v3, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mHeight:I

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget v0, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mEmbedViewID:I

    .line 1046
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v5, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$9$1;->tmpConfig:Lcom/uc/webview/export/extension/EmbedViewConfig;

    iget-object v6, v0, Lcom/uc/webview/export/extension/EmbedViewConfig;->mObjectParam:Ljava/util/Map;

    .line 1043
    invoke-interface/range {v1 .. v6}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1050
    :cond_0
    return-void
.end method
