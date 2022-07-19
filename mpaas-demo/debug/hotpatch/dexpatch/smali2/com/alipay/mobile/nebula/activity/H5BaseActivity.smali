.class public Lcom/alipay/mobile/nebula/activity/H5BaseActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "H5BaseActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5BaseActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected replaceResources(Landroid/content/Context;)V
    .locals 10
    .param p1, "base"    # Landroid/content/Context;

    .line 27
    const-string v0, "H5BaseActivity"

    const-string/jumbo v1, "replaceResources"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 32
    .local v0, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    const/4 v1, 0x0

    .line 33
    .local v1, "name":Ljava/lang/String;
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;

    .line 34
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;

    const/4 v3, 0x0

    .line 35
    .local v3, "h5ReplaceResourceProvider":Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5ReplaceResourceProvider;->getReplaceResourcesBundleName()Ljava/lang/String;

    move-result-object v1

    .line 39
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "com-mpaas-nebula-adapter-mpaasnebulaadapter"

    const-string v5, "android-phone-wallet-nebula"

    const-string v6, "android-phone-wallet-nebulauc"

    const-string v7, "android-phone-wallet-nebulabiz"

    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v7, v6, v5, v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v2, v4}, Lcom/alipay/mobile/framework/BundleContext;->replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 44
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v6, v8, v7

    const/4 v6, 0x2

    aput-object v5, v8, v6

    const/4 v5, 0x3

    aput-object v4, v8, v5

    const/4 v4, 0x4

    aput-object v1, v8, v4

    invoke-virtual {v0, p1, v2, v8}, Lcom/alipay/mobile/framework/BundleContext;->replaceResources(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 49
    return-void
.end method
