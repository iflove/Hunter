.class public Lcom/alipay/mobile/nebulauc/provider/UCHttpCacheProvider;
.super Ljava/lang/Object;
.source "UCHttpCacheProvider.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5HttpCacheProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "UCHttpCacheProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanHttpCache()J
    .locals 4

    .line 19
    sget-boolean v0, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 20
    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 21
    .local v0, "size":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 22
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 24
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanHttpCache size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UCHttpCacheProvider"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v1, 0x3

    invoke-static {v1, v3}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "cleanHttpCache CORE_EVENT_CLEAR_HTTP_CACHE"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 29
    .end local v0    # "size":Ljava/lang/Long;
    :cond_1
    return-wide v1
.end method
