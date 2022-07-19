.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;
.super Ljava/lang/Object;
.source "H5AppHandler.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5AppInstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    .line 1266
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "isPatch"    # Z

    .line 1271
    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->prepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$000()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->setInstallEndTime(J)V

    .line 1272
    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "install onResult "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    if-eqz p1, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$finalH5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$syncUpdate:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v4, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$copyParam:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$syncOffline:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v7, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$loadingType:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->openApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v1 .. v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$url:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$finalH5LoadingManager:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v3, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v5, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;

    iget-object v6, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler$10;->val$offMode:Ljava/lang/String;

    const-string v4, "10003"

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->offlineFail(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V
    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->access$1400(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;Ljava/lang/String;)V

    .line 1291
    return-void
.end method
