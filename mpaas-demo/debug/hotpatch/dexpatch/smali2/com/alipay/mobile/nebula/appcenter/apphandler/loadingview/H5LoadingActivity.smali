.class public Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "H5LoadingActivity.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5LoadingActivity"


# instance fields
.field private loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

.field private pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    return-object v0
.end method


# virtual methods
.method public getPageStatues()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v0, :cond_0

    .line 188
    iget v0, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    return v0

    .line 190
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    move-object/from16 v1, p0

    invoke-super/range {p0 .. p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    .line 47
    const/4 v2, 0x1

    iput v2, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 49
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingActivity(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    .line 50
    invoke-static/range {p0 .. p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingTypeListen(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 54
    .local v4, "intent":Landroid/content/Intent;
    move-object v4, v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->finish()V

    .line 56
    return-void

    .line 60
    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    move-object v5, v3

    .line 61
    .local v5, "bundle":Landroid/os/Bundle;
    move-object v5, v0

    const-string v6, "appName"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "appName":Ljava/lang/String;
    const-string v0, "appIcon"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "logo":Ljava/lang/String;
    const-string v0, "appId"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "appId":Ljava/lang/String;
    const-string v0, "loading_timeout"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v9

    .line 66
    .local v9, "timeout":I
    const-string v0, "loading_type"

    invoke-static {v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "type":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "appName "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " logo:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " timeout:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " type:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "H5LoadingActivity"

    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebula/util/InsideUtils;->isInside()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;

    move-object v12, v3

    .line 73
    .local v12, "provider":Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;
    move-object v12, v0

    if-eqz v0, :cond_2

    .line 74
    invoke-interface {v12}, Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;->customLoadingViewClassName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v3, "customLoadingViewClassName":Ljava/lang/String;
    move-object v3, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, "clazz":Ljava/lang/Class;
    const-class v13, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 79
    new-array v13, v2, [Ljava/lang/Class;

    const-class v14, Landroid/content/Context;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v13

    .line 80
    .local v13, "constructor":Ljava/lang/reflect/Constructor;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v15

    invoke-virtual {v13, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    iput-object v2, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v13    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_1
    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "customLoadingViewClassName":Ljava/lang/String;
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    if-nez v0, :cond_3

    .line 88
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    .line 90
    .end local v12    # "provider":Lcom/alipay/mobile/nebula/provider/H5InsideCustomProvider;
    :cond_3
    goto :goto_1

    .line 91
    :cond_4
    new-instance v0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    .line 93
    :goto_1
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;->setActivity(Landroid/app/Activity;)V

    .line 94
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;->initViewBeforeSetContent(Landroid/os/Bundle;)V

    .line 97
    :try_start_1
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->setContentView(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 102
    nop

    .line 105
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;->initViewAfterSetContent(Landroid/os/Bundle;)V

    .line 106
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;->onStart()V

    .line 108
    if-lez v9, :cond_5

    .line 109
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    if-nez v0, :cond_5

    .line 111
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    .line 112
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-direct {v2, v1, v10, v8, v9}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V

    mul-int/lit16 v3, v9, 0x3e8

    int-to-long v12, v3

    invoke-virtual {v0, v2, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 115
    return-void

    .line 113
    :catchall_1
    move-exception v0

    .line 114
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_5
    return-void

    .line 98
    :catchall_2
    move-exception v0

    .line 99
    .restart local v0    # "throwable":Ljava/lang/Throwable;
    invoke-static {v11, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->finish()V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 203
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingActivity(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    .line 204
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingManager(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingManager;)V

    .line 205
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5StartAppInfo(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 206
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingUtil;->setH5LoadingTypeListen(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingTypeListen;)V

    .line 207
    return-void
.end method

.method public onGetType(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "appId"    # Ljava/lang/String;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onGetType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " timeout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5LoadingActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    .line 214
    :try_start_0
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 215
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->timer:Ljava/util/Timer;

    .line 216
    new-instance v2, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$MyTimeTask;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;Ljava/lang/String;Ljava/lang/String;I)V

    mul-int/lit16 v3, p2, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    return-void

    .line 217
    :catchall_0
    move-exception v0

    .line 218
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public sendToWebFail()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v0, :cond_0

    .line 124
    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 126
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 138
    :cond_1
    return-void
.end method

.method public setPageStatue(I)V
    .locals 1
    .param p1, "statue"    # I

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->pageStatues:Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;

    if-eqz v0, :cond_0

    .line 196
    iput p1, v0, Lcom/alipay/mobile/nebula/appcenter/appsync/H5PageStatues;->currentPageStatues:I

    .line 198
    :cond_0
    return-void
.end method

.method public updateAppInfo(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)V
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 225
    .local v1, "info":Ljava/util/Map;
    move-object v1, v0

    const-string v2, "app"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/loadingview/H5LoadingActivity;->loadingView:Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;

    const-string/jumbo v2, "update"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;->onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V

    .line 227
    return-void
.end method
