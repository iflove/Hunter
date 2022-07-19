.class public Lcom/alipay/mobile/quinox/preload/PreloadConfigs;
.super Ljava/lang/Object;
.source "PreloadConfigs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAutoStartDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 16
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    move-object v1, v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lcom/alipay/mobile/quinox/preload/PreloadReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    .local v0, "componentName":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    return v2

    .line 20
    :catchall_0
    move-exception v3

    .line 21
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "PreloadConfigs"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    return v2
.end method

.method public static isPreloadComponentEnable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 28
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    const-string v1, "quinox_preload_component_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
