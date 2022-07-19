.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;
.super Ljava/lang/Object;
.source "H5AppScoreList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->checkPreInstallApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .line 144
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->appCreditInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$500(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppCreditInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->initData()V
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppListWithStrategy(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 151
    .local v2, "preInstallList":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getAppCenterService()Lcom/alipay/mobile/h5container/service/H5AppCenterService;

    move-result-object v0

    move-object v3, v1

    .line 155
    .local v3, "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    move-object v3, v0

    if-nez v0, :cond_2

    .line 156
    return-void

    .line 158
    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getAppDBService()Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;

    move-result-object v0

    .line 159
    .local v1, "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    move-object v1, v0

    if-nez v0, :cond_3

    .line 160
    return-void

    .line 162
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    .local v4, "appId":Ljava/lang/String;
    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getHighestAppVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "version":Ljava/lang/String;
    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;->getAppInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v6

    .line 165
    .local v6, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/service/H5AppCenterService;->getH5App()Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;

    move-result-object v7

    .line 166
    .local v7, "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 167
    invoke-interface {v7, v6}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->setAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    .line 169
    invoke-interface {v7}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->isInstalled()Z

    move-result v8

    if-nez v8, :cond_4

    .line 170
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pre install appId : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "H5AppScoreList"

    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v7}, Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;->installApp()Z

    .line 174
    .end local v4    # "appId":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    .end local v6    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v7    # "h5BaseApp":Lcom/alipay/mobile/nebula/appcenter/H5BaseApp;
    :cond_4
    goto :goto_0

    .line 175
    :cond_5
    return-void

    .line 152
    .end local v1    # "h5AppDBService":Lcom/alipay/mobile/nebula/appcenter/H5AppDBService;
    .end local v3    # "appCenterService":Lcom/alipay/mobile/h5container/service/H5AppCenterService;
    :cond_6
    :goto_1
    return-void
.end method
