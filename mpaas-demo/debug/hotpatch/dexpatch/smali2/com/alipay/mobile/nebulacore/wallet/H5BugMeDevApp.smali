.class public Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "H5BugMeDevApp.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BugMeDevApp"


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "scheme"    # Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 71
    .local v2, "schemeUri":Landroid/net/Uri;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "H5TinyAppDebugMode schemeUri : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5BugMeDevApp"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 78
    .local v1, "h5EnvProvider":Lcom/alipay/mobile/nebula/provider/H5EnvProvider;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->goToSchemeService(Ljava/lang/String;)Z

    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->a:Landroid/os/Bundle;

    .line 40
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 95
    const-string v0, "H5BugMeDevApp"

    const-string v1, "H5BugMeDevApp onDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 85
    const-string v0, "H5BugMeDevApp"

    const-string v1, "H5BugMeDevApp onRestart"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onStart()V
    .locals 10

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5BugMeDevApp"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->a:Landroid/os/Bundle;

    const-string v1, "token"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "tokenValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->a:Landroid/os/Bundle;

    const-string v3, "scheme"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "schemeValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->a:Landroid/os/Bundle;

    const-string v5, "enableBugme"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "enableBugme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 51
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->destroy(Landroid/os/Bundle;)V

    .line 52
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5TinyAppDebugMode;->enableTinyAppDebugMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->destroy(Landroid/os/Bundle;)V

    .line 58
    return-void

    .line 61
    :cond_1
    new-instance v6, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/alipay/mobile/nebulacore/wallet/H5DevAppActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v7, "intent":Landroid/content/Intent;
    move-object v7, v6

    const/high16 v8, 0x10000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v7, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    invoke-virtual {v7, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5BugMeDevApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v7}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 90
    const-string v0, "H5BugMeDevApp"

    const-string v1, "H5BugMeDevApp onStop"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method
