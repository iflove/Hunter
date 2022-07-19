.class public interface abstract Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;
.super Ljava/lang/Object;
.source "H5TinyAppContentProvider.java"


# virtual methods
.method public abstract getSnapshotData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract getTemplateAppId(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method public abstract handlerOnAppConfig(Landroid/os/Bundle;)V
.end method

.method public abstract isSnapshotEnabled(Ljava/lang/String;)Z
.end method

.method public abstract mergeTemplateConfigIfNeed(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation
.end method

.method public abstract shouldInterceptRequest(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end method

.method public abstract startSyncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;)V
.end method

.method public abstract triggerSaveSnapshotData(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V
.end method
