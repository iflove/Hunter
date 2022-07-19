.class Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;
.super Ljava/lang/Object;
.source "H5ReceiverUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Lcom/alipay/mobile/h5container/service/H5AppCenterService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->c:Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 113
    .local v2, "extraInfo":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "preset"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    .local v0, "needPreInstall":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "preInstall by login check "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v5, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " needPreInstall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5ReceiverUtil"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v6, v6, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v4, v6, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->isInStrategy(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preInstall by login for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->b:Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v3

    .line 119
    .local v1, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    move-object v1, v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/api/H5ReceiverUtil$1$1;->a:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 120
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp()Z

    .line 122
    .end local v1    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_2
    return-void
.end method
