.class public interface abstract Lcom/alipay/mobile/nebulax/engine/api/worker/WorkerProcessor;
.super Ljava/lang/Object;
.source "WorkerProcessor.java"


# virtual methods
.method public abstract handleMsgFromJs(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/nebulax/engine/api/worker/JSCallListener;)V
.end method

.method public abstract jsapiCall(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract postMessage(Lcom/alibaba/fastjson/JSONObject;)V
.end method

.method public abstract release()V
.end method

.method public abstract workerjsLoad(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
.end method
