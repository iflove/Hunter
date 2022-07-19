.class public Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsActivity;
.super Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;
.source "H5BugMeSettingsActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5DevSettingsActivity"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsActivity;->a:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 22
    invoke-super {p0, p1}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    sget v0, Lcom/alipay/mobile/nebula/R$layout;->activity_h5_bugme_setting:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsActivity;->setContentView(I)V

    .line 25
    new-instance v0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;-><init>()V

    .line 26
    .local v0, "h5BugMeSettingsFragment":Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "h5_bug_me_debug_switch"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsActivity;->a:Z

    .line 30
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebula/R$id;->fragment_content:I

    .line 32
    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 33
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 37
    const-string v0, "h5_bug_me_debug_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    .local v1, "debugSwitch":Z
    move v1, v0

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/dev/ui/H5BugMeSettingsActivity;->a:Z

    if-eq v0, v2, :cond_0

    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v0

    const/4 v2, 0x0

    .line 40
    .local v2, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getBugMeManager()Lcom/alipay/mobile/nebula/dev/H5BugMeManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/dev/H5BugMeManager;->onBugMeSwitched(Z)V

    .line 45
    .end local v2    # "service":Lcom/alipay/mobile/h5container/service/H5Service;
    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletBaseActivity;->onDestroy()V

    .line 46
    return-void
.end method
