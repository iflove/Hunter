.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->startPage(Lcom/alipay/mobile/h5container/api/H5Context;Lcom/alipay/mobile/h5container/api/H5Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5Context;

.field final synthetic d:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;Landroid/os/Bundle;Landroid/content/Context;Lcom/alipay/mobile/h5container/api/H5Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 702
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->d:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->c:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->commonParamParse(Landroid/os/Bundle;)V

    .line 707
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/Nebula;->commonStartActivity(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->c:Lcom/alipay/mobile/h5container/api/H5Context;

    instance-of v2, v1, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 710
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->c:Lcom/alipay/mobile/h5container/api/H5Context;

    check-cast v1, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    move-object v2, v3

    .line 711
    .local v2, "sceneParams":Landroid/os/Bundle;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 712
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ApplicationStartActivity:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 714
    .end local v2    # "sceneParams":Landroid/os/Bundle;
    :cond_0
    goto :goto_1

    .line 715
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    move-object v2, v3

    .line 716
    .local v2, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v2, v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getSceneParams()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    .line 717
    .local v3, "sceneParams":Landroid/os/Bundle;
    :goto_0
    move-object v3, v1

    if-eqz v1, :cond_3

    .line 718
    sget-object v1, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_Nebula_ApplicationStartActivity:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 722
    .end local v2    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local v3    # "sceneParams":Landroid/os/Bundle;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->c:Lcom/alipay/mobile/h5container/api/H5Context;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V

    .line 723
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->a:Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v3, "closeAllActivityAnimation"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->a:Landroid/os/Bundle;

    .line 724
    const-string v2, "startAnimation"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "noAnimation"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 725
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->c:Lcom/alipay/mobile/h5container/api/H5Context;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$4;->a:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5AnimatorUtil;->setActivityStart(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)V

    .line 727
    :cond_4
    return-void
.end method
