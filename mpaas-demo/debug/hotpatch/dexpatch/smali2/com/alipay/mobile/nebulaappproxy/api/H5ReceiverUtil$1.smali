.class final Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;
.super Ljava/lang/Object;
.source "H5ReceiverUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 95
    const-class v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    .line 96
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    const/4 v1, 0x0

    .line 97
    .local v1, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 98
    return-void

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 101
    .local v2, "time":J
    nop

    .line 102
    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAllHighestAppInfo()Ljava/util/Map;

    move-result-object v0

    .line 104
    .local v0, "nebulaList":Ljava/util/Map;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 105
    .local v4, "nebulaAppTime":J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "nebulaList getAllHighestAppInfo cost: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v7, v4, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "H5ReceiverUtil"

    invoke-static {v7, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 108
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 109
    .local v7, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    new-instance v8, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;

    invoke-direct {v8, p0, v7, v1}, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/h5container/service/H5AppCenterService;)V

    const-string v9, "NebulaApp"

    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->executeOrdered(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 124
    .end local v7    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method
