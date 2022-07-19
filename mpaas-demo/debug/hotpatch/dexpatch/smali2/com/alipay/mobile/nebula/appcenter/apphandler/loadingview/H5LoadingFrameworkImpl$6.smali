.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;
.super Ljava/lang/Object;
.source "H5LoadingFrameworkImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->sendToWebFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

.field final synthetic val$errorCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    .line 269
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->val$errorCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mPlayingExitAnim:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$600(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->getLoadingManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->findLoadingView(Ljava/lang/String;)Lcom/alipay/mobile/framework/loading/LoadingView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->getLoadingManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->findLoadingView(Ljava/lang/String;)Lcom/alipay/mobile/framework/loading/LoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/loading/LoadingView;->stop()V

    .line 276
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_network_poor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->val$errorCode:Ljava/lang/String;

    const-string v2, "10008"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_download_no_permission:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->val$errorCode:Ljava/lang/String;

    const-string v2, "10007"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getNebulaResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebula/R$string;->h5_download_no_enough_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    .line 285
    .local v2, "map":Ljava/util/Map;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "UPDATE_APPEARANCE_LOADING_TEXT_MULTIPLELINE"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "UPDATE_APPEARANCE_LOADING_TEXT"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v1, "UPDATE_APPEARANCE_LOADING_BOTTOM_TIP"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$6;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->setLoadingInfo(Ljava/util/Map;)V
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$400(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Ljava/util/Map;)V

    .line 291
    .end local v0    # "errorMsg":Ljava/lang/String;
    .end local v2    # "map":Ljava/util/Map;
    :cond_2
    return-void
.end method
