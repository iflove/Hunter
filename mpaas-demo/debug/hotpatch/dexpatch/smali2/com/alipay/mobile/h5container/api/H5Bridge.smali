.class public interface abstract Lcom/alipay/mobile/h5container/api/H5Bridge;
.super Ljava/lang/Object;
.source "H5Bridge.java"


# virtual methods
.method public abstract monitorBridgeLog(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
.end method

.method public abstract onRelease()V
.end method

.method public abstract sendDataWarpToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
.end method

.method public abstract sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end method

.method public abstract sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end method

.method public abstract sendToWeb(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end method

.method public abstract sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
