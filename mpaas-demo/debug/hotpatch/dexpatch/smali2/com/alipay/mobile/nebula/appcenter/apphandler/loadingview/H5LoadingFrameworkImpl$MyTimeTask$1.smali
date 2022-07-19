.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;
.super Ljava/lang/Object;
.source "H5LoadingFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    .line 384
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "timeout "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->timeout:I
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->access$700(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->type:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->access$800(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " nbUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mNbUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$900(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LoadingFrameworkImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->isPageDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    const-string/jumbo v0, "pageDestroy, not run timeTask"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mPageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mPageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    move-result-object v0

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    .line 395
    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mPageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    move-result-object v0

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 396
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pageStatus: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mPageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    move-result-object v2

    iget v2, v2, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " not run timeout"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    return-void

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->type:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->access$800(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->isSyncType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    if-eqz v0, :cond_3

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string v3, "finish"

    const-string v4, "10010"

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->enableUseDegradeInMainPkg()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 409
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 410
    .local v0, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appInfo:Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-object v5, v3

    .line 412
    .local v5, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    move-object v5, v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    const-string v4, "h5_timeoutGetAppInfo4Degrade"

    invoke-static {v4}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "YES"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 413
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v5

    .line 415
    :cond_4
    if-eqz v5, :cond_6

    .line 416
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->getInstallVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "installVersion":Ljava/lang/String;
    iget-object v6, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->extend_info_jo:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 418
    const-string v7, "downgradeVersion"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "downgradeVersion":Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eq v1, v7, :cond_5

    .line 420
    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 422
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v1

    iput-object v4, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->nebulaVersion:Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v1

    .line 424
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingManager()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v2

    .line 423
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 425
    iget-object v1, v5, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    const-string/jumbo v2, "ready"

    invoke-static {v1, v4, v2}, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->logMainPkgDegrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void

    .line 431
    .end local v0    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v4    # "installVersion":Ljava/lang/String;
    .end local v5    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v6    # "downgradeVersion":Ljava/lang/String;
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mNbUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$900(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->sendToWebFail(Ljava/lang/String;)V

    return-void

    .line 434
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mPageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mPageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$1000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    move-result-object v0

    iput v2, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 437
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mNbUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$900(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitPageAndOpenUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    return-void

    .line 445
    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    if-eqz v0, :cond_a

    .line 446
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string v2, "is_local"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 449
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "11 MyTimeTask#run launch_cost maybe start:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tiny_launch_cost"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    const-string/jumbo v3, "perf_open_app_time"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 454
    .end local v0    # "time":J
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$MyTimeTask;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    .line 455
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingManager()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;

    move-result-object v1

    .line 454
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->exitAndStartApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 457
    return-void
.end method
