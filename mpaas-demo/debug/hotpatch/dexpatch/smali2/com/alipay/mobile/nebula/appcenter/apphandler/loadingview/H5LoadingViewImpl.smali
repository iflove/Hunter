.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;
.super Ljava/lang/Object;
.source "H5LoadingViewImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;


# static fields
.field public static final LOADING_TIMEOUT:Ljava/lang/String; = "loading_timeout"

.field public static final LOADING_TYPE:Ljava/lang/String; = "loading_type"

.field private static final TAG:Ljava/lang/String; = "H5LoadingViewImpl"


# instance fields
.field private mStartLoadingTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;->mStartLoadingTime:J

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 3

    .line 62
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    .local v1, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->finish()V

    return-void

    .line 66
    :cond_0
    const-string v0, "H5LoadingViewImpl"

    const-string v2, "exit H5LoadingActivity==null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public getPageStatues()I
    .locals 2

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 102
    .local v1, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->getPageStatues()I

    move-result v0

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStartLoadingTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;->mStartLoadingTime:J

    return-wide v0
.end method

.method public isPageDestroy()Z
    .locals 2

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    .local v1, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    move-object v1, v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .locals 2

    .line 82
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 83
    .local v1, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public open(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;I)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "h5StartAppInfo"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    .param p5, "timeout"    # I

    .line 31
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    if-nez p1, :cond_0

    .line 33
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p1, v1

    .line 35
    :cond_0
    const-string v1, "loading_timeout"

    invoke-virtual {p1, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    const-string v1, "loading_type"

    invoke-virtual {p1, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v1, "appId"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 39
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    invoke-static {p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingManager(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 42
    invoke-static {p4}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5StartAppInfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingViewImpl;->mStartLoadingTime:J

    .line 44
    return-void
.end method

.method public playExitAnimation()V
    .locals 0

    .line 118
    return-void
.end method

.method public sendToWebFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 73
    .local v1, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->sendToWebFail()V

    return-void

    .line 76
    :cond_0
    const-string v0, "H5LoadingViewImpl"

    const-string/jumbo v2, "sendToWebFail H5LoadingActivity==null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setPageStatue(I)V
    .locals 2
    .param p1, "statue"    # I

    .line 110
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 111
    .local v1, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->setPageStatue(I)V

    .line 114
    :cond_0
    return-void
.end method

.method public update(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->getH5LoadingActivity()Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    move-result-object v0

    const/4 v1, 0x0

    .line 49
    .local v1, "h5LoadingActivity":Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->updateAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V

    return-void

    .line 52
    :cond_0
    const-string v0, "H5LoadingViewImpl"

    const-string v2, "exit H5LoadingActivity==null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method
