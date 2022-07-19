.class public Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;
.super Ljava/lang/Object;
.source "QuinoxlessPrivacyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getPrivacySwitcher(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;

    monitor-enter v0

    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 34
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v2

    const/4 v2, 0x0

    .line 33
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "Quinoxless"

    const-string v4, "QuinoxlessPrivacyUtil.getPrivacySwitcher get appInfo failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 36
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "privacy_switcher"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 37
    .local v2, "switcher":Z
    const-string v3, "Quinoxless"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "QuinoxlessPrivacyUtil.getPrivacySwitcher switcher:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    monitor-exit v0

    return v2

    .line 42
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "switcher":Z
    :cond_0
    goto :goto_1

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v2, "Quinoxless"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QuinoxlessPrivacyUtil.getPrivacySwitcher failed:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 43
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 28
    .end local p0    # "context":Landroid/content/Context;
    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isUserAgreed(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 14
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized sendPrivacyAgreedBroadcast(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;

    monitor-enter v0

    .line 22
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->setAgreed(Landroid/content/Context;Z)V

    .line 23
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "privacy_agreed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    .line 21
    .end local v1    # "intent":Landroid/content/Intent;
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setUserAgreedState(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "agreed"    # Z

    const-class v0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessPrivacyUtil;

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->setAgreed(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit v0

    return-void

    .line 17
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "agreed":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
