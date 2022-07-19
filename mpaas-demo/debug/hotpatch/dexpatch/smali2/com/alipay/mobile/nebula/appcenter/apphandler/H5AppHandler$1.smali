.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;
.super Ljava/util/HashSet;
.source "H5AppHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 305
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 306
    const-string v0, "enableKeepAlive"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->add(Ljava/lang/Object;)Z

    .line 307
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    const/4 v1, 0x0

    .line 308
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "h5_enableTransparentInOfflinePkg"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    const-string/jumbo v2, "transparent"

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$1;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v0    # "value":Ljava/lang/String;
    .end local v1    # "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    :cond_0
    return-void
.end method
