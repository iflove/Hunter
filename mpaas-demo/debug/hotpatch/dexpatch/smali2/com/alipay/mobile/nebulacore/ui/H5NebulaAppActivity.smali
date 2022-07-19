.class public Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "H5NebulaAppActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    const-string v0, "H5NebulaAppActivity"

    .line 36
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->setRequestedOrientation(I)V

    .line 39
    const/4 v2, 0x0

    .line 42
    .local v2, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 45
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v3

    .line 44
    .local v3, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .end local v3    # "throwable":Ljava/lang/Throwable;
    :goto_0
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->NEBULA_FALLBACK_APP_ID:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "appId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;-><init>(Landroid/app/Activity;)V

    const/4 v4, 0x0

    move-object v5, v4

    .line 51
    .local v5, "h5LoadingDialog":Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
    move-object v10, v0

    .end local v5    # "h5LoadingDialog":Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
    .local v10, "h5LoadingDialog":Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCancelable(Z)V

    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_loading_txt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 54
    new-instance v1, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;)V

    invoke-virtual {v10, v1}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 62
    invoke-virtual {v10}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->show()V

    .line 65
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 66
    .local v4, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v7, v1

    .end local v4    # "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .local v7, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;->finish()V

    .line 68
    return-void

    .line 71
    :cond_0
    move-object v9, v2

    .line 72
    .local v9, "finalBundle":Landroid/os/Bundle;
    const-string v1, "RPC"

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v11, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;

    move-object v4, v11

    move-object v5, p0

    move-object v6, v3

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity$2;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5AppProvider;Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;Landroid/os/Bundle;)V

    invoke-virtual {v1, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
