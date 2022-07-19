.class public Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;
.super Lcom/alipay/mobile/nebulacore/ui/H5Activity;
.source "H5MainProcTinyActivity.java"


# instance fields
.field private c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

.field private volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;-><init>()V

    .line 18
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->d:Z

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->a()V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->putRunningTinyActivity(Ljava/lang/String;Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method public finish()V
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->d:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->onDestroy(Landroid/app/Activity;)V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->d:Z

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->finish()V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->afterCreate(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->d:Z

    if-nez v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->onDestroy(Landroid/app/Activity;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->d:Z

    .line 71
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onDestroy()V

    .line 72
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 36
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    const-string v0, "H5MainProcTinyActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onResume()V

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->removeDestroyRunnable()V

    .line 32
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .line 60
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->onUserLeaveHint()V

    .line 61
    const-string v0, "H5KeepAliveUtil"

    const-string v1, "onUserLeaveHint, schedule destroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->getH5Session()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->onUserLeaveHint(Lcom/alipay/mobile/h5container/api/H5Session;)V

    .line 63
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->beforeStartActivity(Landroid/content/Intent;)V

    .line 49
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startActivity(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5MainProcTinyActivity;->c:Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5KeepAliveActivityDelegate;->beforeStartActivity(Landroid/content/Intent;)V

    .line 55
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 56
    return-void
.end method
