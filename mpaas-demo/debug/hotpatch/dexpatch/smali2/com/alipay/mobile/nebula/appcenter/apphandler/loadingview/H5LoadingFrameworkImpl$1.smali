.class Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;
.super Ljava/lang/Object;
.source "H5LoadingFrameworkImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/loading/LoadingPageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

.field final synthetic val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createLoadingView(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alipay/mobile/framework/loading/LoadingView;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 140
    const-string v0, "H5LoadingFrameworkImpl"

    const-string v1, "createLoadingView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-class v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 142
    .local v2, "h5ApiManager":Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebula/tinypermission/H5ApiManager;->getLoadingViewFromTiny(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)Lcom/alipay/mobile/framework/loading/LoadingView;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    return-object v1
.end method

.method public getPriority()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public needShowLoadingPage(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "sourceAppId"    # Ljava/lang/String;
    .param p2, "targetAppId"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "needShowLoadingPage for targetAppId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " h5StartAppInfo.targetAppId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LoadingFrameworkImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->needShown:Z
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # setter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->needShown:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$002(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Z)Z

    .line 80
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    return v1
.end method

.method public onCancelLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "loadingPage"    # Landroid/app/Activity;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 104
    const-string v0, "H5LoadingFrameworkImpl"

    const-string/jumbo v1, "onCancelLoadingPage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->getLoadingManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->unregisterLoadingPageHandler(Lcom/alipay/mobile/framework/loading/LoadingPageHandler;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$202(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Ljava/util/Timer;)Ljava/util/Timer;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mH5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->appPrepareData:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;

    const-string v1, "cancel"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppPrepareData;->uploadPrepareLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_1
    return-void
.end method

.method public onCreateLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "loadingPage"    # Landroid/app/Activity;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    const-string v3, "66666672"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    .local v0, "enableOuter":Z
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-boolean v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->useAppX:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-boolean v3, v3, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->isUsePresetPopmenu:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 89
    .local v3, "enableInner":Z
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->tinyType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    iget-boolean v4, v4, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->enableUpDownAnimWithoutAppinfo:Z

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 90
    .local v1, "enableNoAppinfo":Z
    :cond_2
    invoke-static {p4}, Lcom/alipay/mobile/nebula/util/H5Utils;->isTinyMiniService(Landroid/os/Bundle;)Z

    move-result v2

    .line 91
    .local v2, "isMiniService":Z
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onCreateLoadingPage enableOuter "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " enableInner "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " enableNoAppinfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isMiniService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5LoadingFrameworkImpl"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz p1, :cond_4

    if-nez v2, :cond_4

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    .line 93
    invoke-static {p3, p4}, Lcom/alipay/mobile/nebula/util/H5Utils;->canTransferH5ToTinyWithAnimation(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 95
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tiny_push_up_in"

    const-string v7, "anim"

    invoke-static {v4, v6, v7, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 96
    .local v4, "animIn":I
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 97
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "tiny_fading_out"

    invoke-static {v5, v8, v7, v6}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 98
    .local v5, "animOut":I
    invoke-virtual {p1, v4, v5}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 100
    .end local v4    # "animIn":I
    .end local v5    # "animOut":I
    :cond_4
    return-void
.end method

.method public onFinishLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "loadingPage"    # Landroid/app/Activity;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 128
    const-string v0, "H5LoadingFrameworkImpl"

    const-string/jumbo v1, "onFinishLoadingPage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$202(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Ljava/util/Timer;)Ljava/util/Timer;

    .line 136
    :cond_1
    return-void
.end method

.method public onStopLoadingPage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "loadingPage"    # Landroid/app/Activity;
    .param p2, "sourceId"    # Ljava/lang/String;
    .param p3, "targetAppId"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 118
    const-string v0, "H5LoadingFrameworkImpl"

    const-string/jumbo v1, "onStopLoadingPage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # invokes: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->getLoadingManager()Lcom/alipay/mobile/framework/loading/LoadingPageManager;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Lcom/alipay/mobile/framework/loading/LoadingPageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/loading/LoadingPageManager;->unregisterLoadingPageHandler(Lcom/alipay/mobile/framework/loading/LoadingPageHandler;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    # getter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;->access$202(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingFrameworkImpl;Ljava/util/Timer;)Ljava/util/Timer;

    .line 124
    :cond_0
    return-void
.end method
