.class public Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "H5PushBizApp.java"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;->a:Landroid/os/Bundle;

    .line 30
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->getH5BridgeContext()Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    .local v1, "h5BridgeContext":Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 58
    const/16 v0, 0xb

    .line 59
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->h5_user_cacel_operation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(ILjava/lang/String;)V

    .line 62
    :cond_0
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizUtil;->setH5BridgeContext(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;->destroy(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method

.method protected onStart()V
    .locals 4

    .line 34
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 35
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/mobile/h5container/api/H5Bundle;

    invoke-direct {v0}, Lcom/alipay/mobile/h5container/api/H5Bundle;-><init>()V

    .line 37
    .local v1, "h5Bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    move-object v1, v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/pushbiz/H5PushBizApp;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/h5container/api/H5Bundle;->setParams(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {v2, p0, v1}, Lcom/alipay/mobile/h5container/service/H5Service;->startPage(Lcom/alipay/mobile/framework/app/MicroApplication;Lcom/alipay/mobile/h5container/api/H5Bundle;)V

    .line 41
    .end local v1    # "h5Bundle":Lcom/alipay/mobile/h5container/api/H5Bundle;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 52
    return-void
.end method
