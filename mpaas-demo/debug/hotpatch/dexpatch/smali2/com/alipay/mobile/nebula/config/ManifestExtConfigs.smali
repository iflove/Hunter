.class public Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;
.super Ljava/lang/Object;
.source "ManifestExtConfigs.java"


# static fields
.field private static final NEBULA_ANDROID_META_ENABLE:Ljava/lang/String; = "nebula.android.meta.enable"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;


# instance fields
.field private tagets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->sInstance:Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->tagets:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;
    .locals 1

    .line 24
    sget-object v0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->sInstance:Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;

    return-object v0
.end method

.method private static getPackageName()Ljava/lang/String;
    .locals 1

    .line 98
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private manifestExtConfigsBean()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "beans":Ljava/util/List;
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->readTagetsFromAndroidManifest()Ljava/util/List;

    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-static {v2}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->nebulaMetaInfoConfigX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "metaInfoConfigX":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "metaInfoConfigX"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;)V

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    invoke-static {v2}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->form(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    .end local v2    # "metaInfoConfigX":Ljava/lang/String;
    goto :goto_0

    .line 81
    :cond_1
    return-object v0
.end method

.method public static nebulaMetaInfoConfigX(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 103
    return-object v1

    .line 106
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 107
    const-string/jumbo v2, "nebulaMetaInfo"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulax/common/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    return-object v1
.end method

.method private readTagetsFromAndroidManifest()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "targets":Ljava/util/List;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 44
    invoke-static {}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 46
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object v3, v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 49
    :cond_0
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 50
    .local v2, "metaData":Landroid/os/Bundle;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 53
    :cond_1
    const-string/jumbo v1, "nebula.android.meta.enable"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 56
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 57
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    const-string/jumbo v6, "v1.mpaas.meta.info.nebula"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 61
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    nop

    .end local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v0
.end method

.method private tagets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->tagets:Ljava/util/List;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;

    monitor-enter v0

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->tagets:Ljava/util/List;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->tagets:Ljava/util/List;

    .line 33
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->manifestExtConfigsBean()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->tagets:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getExtensions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "list":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->tagets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;

    .line 119
    .local v2, "taget":Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;
    move-object v2, v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getExtensionClass()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    invoke-static {v2}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->extension(Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;)Lcom/alipay/mobile/nebulax/kernel/extension/registry/ExtensionMetaInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "taget":Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;
    :cond_0
    goto :goto_0

    .line 123
    :cond_1
    return-object v0
.end method

.method public getH5Plugins()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "plugins":Ljava/util/List;
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->tagets()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;

    .line 87
    .local v2, "taget":Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;
    move-object v2, v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->getExtensionClass()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    invoke-static {v2}, Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;->h5plugin(Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;)Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    move-result-object v3

    .line 89
    .local v3, "object":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    sget-object v4, Lcom/alipay/mobile/nebula/config/ManifestExtConfigs;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getH5Plugins"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v2    # "taget":Lcom/alipay/mobile/nebula/config/ManifestExtConfigsBean;
    .end local v3    # "object":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    :cond_0
    goto :goto_0

    .line 93
    :cond_1
    return-object v0
.end method
