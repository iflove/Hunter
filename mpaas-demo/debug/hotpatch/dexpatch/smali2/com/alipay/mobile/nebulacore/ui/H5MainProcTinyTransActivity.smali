.class public Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;
.super Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;
.source "H5MainProcTinyTransActivity.java"


# instance fields
.field private c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->d:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 38
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->a()V

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->putRunningTinyActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method public finish()V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->d:Z

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->onDestroy(Landroid/app/Activity;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->d:Z

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->finish()V

    .line 76
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 20
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->afterCreate(Landroid/app/Activity;)V

    .line 22
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->d:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->onDestroy(Landroid/app/Activity;)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->d:Z

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->onDestroy()V

    .line 67
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 33
    const-string v0, "H5MainProcTinyActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->onResume()V

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->removeDestroyRunnable()V

    .line 28
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->onUserLeaveHint()V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->getH5Session()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->onUserLeaveHint(Lcom/alipay/mobile/h5container/api/H5Session;)V

    .line 58
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->beforeStartActivity(Landroid/content/Intent;)V

    .line 45
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyTransActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->beforeStartActivity(Landroid/content/Intent;)V

    .line 51
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5TransActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 52
    return-void
.end method
