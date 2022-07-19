.class final Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->setSyncOffline(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

.field final synthetic val$copyParam:Landroid/os/Bundle;

.field final synthetic val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

.field final synthetic val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

.field final synthetic val$loadingType:Ljava/lang/String;

.field final synthetic val$offMode:Ljava/lang/String;

.field final synthetic val$syncOffline:Ljava/lang/String;

.field final synthetic val$syncUpdate:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$syncUpdate:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$copyParam:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iput-object p6, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$syncOffline:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$loadingType:Ljava/lang/String;

    iput-object p8, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$url:Ljava/lang/String;

    iput-object p9, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$offMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZ)V
    .locals 17
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    .line 1328
    move-object/from16 v0, p0

    move/from16 v1, p1

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallEndTime(J)V

    .line 1329
    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "install result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1330
    if-eqz v1, :cond_0

    .line 1331
    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$syncUpdate:Ljava/lang/String;

    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$copyParam:Landroid/os/Bundle;

    iget-object v8, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v9, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$syncOffline:Ljava/lang/String;

    iget-object v10, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$loadingType:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v4 .. v10}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1336
    :cond_0
    iget-object v11, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$url:Ljava/lang/String;

    iget-object v12, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$finalH5LoadingManager1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v13, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v15, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$11;->val$offMode:Ljava/lang/String;

    const-string v14, "10003"

    move-object/from16 v16, v2

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineFail(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    invoke-static/range {v11 .. v16}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1400(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 1339
    return-void
.end method
