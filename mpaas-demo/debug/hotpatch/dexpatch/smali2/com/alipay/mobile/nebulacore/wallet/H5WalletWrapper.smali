.class public Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;
.super Ljava/lang/Object;
.source "H5WalletWrapper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WalletWrapper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/alipay/mobile/h5container/api/H5Context;)Lcom/alipay/mobile/framework/app/MicroApplication;
    .locals 5
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;

    .line 127
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 128
    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 132
    .local v2, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    instance-of v3, v1, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    if-eqz v3, :cond_1

    .line 133
    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    goto :goto_0

    .line 134
    :cond_1
    instance-of v3, v1, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v3, :cond_2

    .line 135
    move-object v3, v1

    check-cast v3, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    .line 138
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    instance-of v3, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    if-eqz v3, :cond_3

    .line 139
    move-object v3, p0

    check-cast v3, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    .line 142
    :cond_3
    if-eqz v2, :cond_4

    .line 143
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.alipay.tinybootloader.TinyBootloadApplication"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "tinyApplication"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 146
    .local v0, "field":Ljava/lang/reflect/Field;
    move-object v0, v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/framework/app/MicroApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 150
    .end local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "H5WalletWrapper"

    const-string v4, "getMicroApplication error"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    return-object v2
.end method

.method public static getClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getClass "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5WalletWrapper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 47
    .local v4, "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    move-object v4, v2

    invoke-virtual {v2, p0}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v4, p0}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v2

    .line 49
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    move-object v3, v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 56
    .end local v3    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "bundleContext":Lcom/alipay/mobile/framework/BundleContext;
    :cond_0
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    .local v2, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->isInWallet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    const-string v3, "failed to load class bundle."

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 2

    .line 32
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 33
    nop

    .line 34
    const-string v1, "android-phone-wallet-nebula"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static getRnService()Lcom/alipay/mobile/h5container/service/RnService;
    .locals 2

    .line 38
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/RnService;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/RnService;

    .line 38
    return-object v0
.end method

.method public static getSessionId(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 93
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 94
    return-object v0

    .line 97
    :cond_0
    const-string v1, "sessionId"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 98
    .local v2, "sessionId":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    return-object v2

    .line 102
    :cond_1
    instance-of v1, p0, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    if-eqz v1, :cond_3

    .line 103
    move-object v1, p0

    check-cast v1, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;

    .line 104
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/wallet/WalletContext;->getMicroApplication()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 105
    .local v0, "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    move-object v0, v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "appId":Ljava/lang/String;
    instance-of v3, v0, Lcom/alipay/mobile/nebulacore/wallet/H5Application;

    if-eqz v3, :cond_2

    .line 108
    const-string v3, "createPageSence"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5Activity"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    const-string v3, "h5_createPageSence_sessionId"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is createPage in H5App not merge appId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5WalletWrapper"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    const-string v3, "appId"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "h5session_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v0    # "app":Lcom/alipay/mobile/framework/app/MicroApplication;
    .end local v1    # "appId":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const-string v2, "h5session_default"

    .line 123
    :cond_4
    return-object v2
.end method

.method public static startActivity(Lcom/alipay/mobile/h5container/api/H5Context;Landroid/content/Intent;)V
    .locals 5
    .param p0, "h5Context"    # Lcom/alipay/mobile/h5container/api/H5Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 61
    const-string v0, "H5WalletWrapper"

    if-nez p1, :cond_0

    .line 62
    const-string v1, "invalid event parameter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/wallet/H5WalletWrapper;->a(Lcom/alipay/mobile/h5container/api/H5Context;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 68
    .local v1, "microApp":Lcom/alipay/mobile/framework/app/MicroApplication;
    if-eqz v1, :cond_1

    .line 69
    :try_start_0
    const-string v2, "microApp != null getMicroApplicationContext().startActivity"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void

    .line 75
    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "context":Landroid/content/Context;
    goto :goto_0

    .line 78
    .end local v2    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 80
    .restart local v2    # "context":Landroid/content/Context;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "context "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    instance-of v3, v2, Landroid/app/Activity;

    if-nez v3, :cond_3

    .line 82
    const/high16 v3, 0x10000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 84
    :cond_3
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v2    # "context":Landroid/content/Context;
    return-void

    .line 86
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "startActivity exception"

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    return-void
.end method
