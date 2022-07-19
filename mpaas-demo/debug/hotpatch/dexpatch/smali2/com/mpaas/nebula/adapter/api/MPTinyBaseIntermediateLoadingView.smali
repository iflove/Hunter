.class public Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;
.super Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;
.source "MPTinyBaseIntermediateLoadingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebula/view/H5BaseLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public initView(Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;

    .line 88
    return-void
.end method

.method public final initViewAfterSetContent(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 39
    return-void
.end method

.method public final initViewBeforeSetContent(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 53
    new-instance v0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;

    invoke-direct {v0}, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;-><init>()V

    .line 54
    .local v0, "appInfo":Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;
    const-string v1, "appId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;->appId:Ljava/lang/String;

    .line 55
    const-string v1, "appName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;->appName:Ljava/lang/String;

    .line 56
    const-string v1, "appIcon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;->appIcon:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v0}, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;->initView(Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;)V

    .line 58
    return-void
.end method

.method public onError()V
    .locals 0

    .line 92
    return-void
.end method

.method public onHandleMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    nop

    .line 69
    const-string v0, "app"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 70
    .local v0, "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;

    invoke-direct {v1}, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;-><init>()V

    .line 72
    .local v1, "info":Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->icon_url:Ljava/lang/String;

    iput-object v2, v1, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;->appIcon:Ljava/lang/String;

    .line 73
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_id:Ljava/lang/String;

    iput-object v2, v1, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;->appId:Ljava/lang/String;

    .line 74
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;->appName:Ljava/lang/String;

    .line 75
    iget-object v2, v0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->version:Ljava/lang/String;

    iput-object v2, v1, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;->version:Ljava/lang/String;

    .line 76
    new-instance v2, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$1;

    invoke-direct {v2, p0, v1}, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$1;-><init>(Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;)V

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 84
    .end local v0    # "appInfo":Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;
    .end local v1    # "info":Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 44
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 49
    return-void
.end method

.method public final sendToWebFail()V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView;->onError()V

    .line 63
    return-void
.end method

.method public update(Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/mpaas/nebula/adapter/api/MPTinyBaseIntermediateLoadingView$AppInfo;

    .line 96
    return-void
.end method
