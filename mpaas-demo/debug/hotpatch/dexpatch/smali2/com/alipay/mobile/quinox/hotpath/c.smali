.class public final Lcom/alipay/mobile/quinox/hotpath/c;
.super Ljava/lang/Object;
.source "HotSwap.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;)Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "update"    # Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;

    .line 24
    const-string v0, "hotswap_record"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    const-string v2, "record_hotswap_time"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    move-wide v7, v3

    .line 26
    .local v7, "recordHotswapTime":J
    move-wide v7, v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_1

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide v2, v3

    .line 29
    .local v2, "lastUpdateTime":J
    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    .line 30
    const-string v0, "hotswap_resource_data"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    sget-object v0, Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;->UPGRADE:Lcom/alipay/mobile/quinox/startup/UpgradeHelper$UpgradeEnum;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 35
    .end local v2    # "lastUpdateTime":J
    :cond_0
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LauncherApplication"

    const-string v2, "PackageManager.NameNotFoundException"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :goto_0
    return-object p1
.end method
