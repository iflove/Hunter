.class public interface abstract Lcom/alipay/mobile/nebula/newembedview/IH5NewEmbedView;
.super Ljava/lang/Object;
.source "IH5NewEmbedView.java"


# virtual methods
.method public abstract execJavaScript(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
.end method

.method public abstract getComponentResourceDataWithUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;Lcom/alipay/mobile/h5container/api/H5Page;)V
.end method

.method public abstract getSnapshot()Landroid/graphics/Bitmap;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract onCreate(Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Page;)V
.end method

.method public abstract onEmbedViewAttachedToWebView()V
.end method

.method public abstract onEmbedViewDestory()V
.end method

.method public abstract onEmbedViewDetachedFromWebView()V
.end method

.method public abstract onEmbedViewParamChanged()V
.end method

.method public abstract onEmbedViewVisibilityChanged()V
.end method

.method public abstract onReceivedData(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end method

.method public abstract onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end method

.method public abstract onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end method

.method public abstract onWebViewDestory()V
.end method

.method public abstract onWebViewPause()V
.end method

.method public abstract onWebViewResume()V
.end method

.method public abstract triggerPreSnapshot()V
.end method
