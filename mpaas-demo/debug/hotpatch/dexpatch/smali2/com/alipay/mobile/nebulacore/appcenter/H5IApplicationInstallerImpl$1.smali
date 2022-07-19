.class Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;
.super Ljava/lang/Object;
.source "H5IApplicationInstallerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->installApplication(Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

.field final synthetic d:Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;Landroid/os/Bundle;Ljava/lang/String;Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

    .line 36
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->d:Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->a:Landroid/os/Bundle;

    .line 40
    .local v0, "start":Landroid/os/Bundle;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    .line 41
    .local v2, "h5AppProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v1

    if-eqz v1, :cond_2

    .line 43
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->b:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getAppInfo(Ljava/lang/String;)Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " appId "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is install"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "H5IApplicationInstallerImpl"

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->a(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->c:Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/app/IApplicationInstaller$IApplicationInstallCallback;->installed(Z)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebulacore/ui/H5NebulaAppActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 52
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 54
    :cond_1
    sget-object v3, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl;->NEBULA_FALLBACK_APP_ID:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/H5IApplicationInstallerImpl$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 56
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method
