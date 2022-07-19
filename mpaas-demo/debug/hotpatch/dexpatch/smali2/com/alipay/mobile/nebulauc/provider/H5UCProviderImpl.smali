.class public Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;
.super Ljava/lang/Object;
.source "H5UCProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5UCProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UCProviderImpl"

.field private static sUCCoreDownloadUrl:Ljava/lang/String;


# instance fields
.field private mLastExtraConfig:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;->sUCCoreDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cannotInitUC()Z
    .locals 5

    .line 31
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 32
    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 33
    const-string v2, "h5_disableUCByBuildRelease"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "disableRelease":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.os.Build.VERSION.RELEASE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5UCProviderImpl"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    if-eqz v2, :cond_0

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 37
    .end local v2    # "disableRelease":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public enableUCCorePreheadInit()Z
    .locals 1

    .line 118
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->enablePreheadInit()Z

    move-result v0

    return v0
.end method

.method public getUCCoreDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 113
    sget-object v0, Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;->sUCCoreDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUCSdkVersion()Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getWebViewCoreSoPath()Ljava/lang/String;
    .locals 9

    .line 72
    const-string v0, "libwebviewuc.so"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "h5container"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 73
    .local v2, "h5Container":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/alipay/mobile/nebulaucsdk/UcSdkConstants;->UC_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/so"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .local v3, "soDir":Ljava/io/File;
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->enablePreheadInit()Z

    move-result v4

    if-nez v4, :cond_0

    .line 75
    new-instance v0, Ljava/io/File;

    const-string v4, "/lib"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .local v0, "mainSoParentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "soPath":Ljava/lang/String;
    const-string v5, "H5UCProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getWebViewCoreSoPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-object v4

    .line 80
    .end local v0    # "mainSoParentDir":Ljava/io/File;
    .end local v4    # "soPath":Ljava/lang/String;
    :cond_0
    move-object v4, v0

    .line 82
    .local v4, "v8Name":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-static {v3, v0, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getSpecialFilePath(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "v8Path":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_1
    new-instance v7, Ljava/io/File;

    const-string v8, "uc"

    invoke-direct {v7, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    .local v7, "ucDir":Ljava/io/File;
    invoke-static {v7, v0, v5}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->getSpecialFilePath(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 90
    .end local v6    # "v8Path":Ljava/lang/String;
    .local v0, "v8Path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 91
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 93
    :cond_2
    return-object v1

    .line 94
    .end local v0    # "v8Path":Ljava/lang/String;
    .end local v2    # "h5Container":Ljava/io/File;
    .end local v3    # "soDir":Ljava/io/File;
    .end local v4    # "v8Name":Ljava/lang/String;
    .end local v7    # "ucDir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "UcPathProviderImpl"

    const-string v3, "catch exception "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-object v1
.end method

.method public notifyConfigurationChanged(Landroid/content/res/Configuration;)Z
    .locals 9
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UCProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "h5_notifyWebViewConfigurationChanged"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    .line 44
    sget-boolean v2, Lcom/alipay/mobile/h5container/api/H5Flag;->ucReady:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 45
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 46
    .local v0, "config":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "enable"

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 47
    .local v2, "enable":Z
    if-eqz v2, :cond_1

    .line 49
    :try_start_0
    const-string v4, "field"

    const-string v5, "extraConfig"

    invoke-static {v0, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "field":Ljava/lang/String;
    const-class v5, Landroid/content/res/Configuration;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 51
    .local v5, "extraConfig":Ljava/lang/Object;
    if-eqz v5, :cond_0

    .line 52
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, "extraConfigStr":Ljava/lang/String;
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;->mLastExtraConfig:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    iput-object v6, p0, Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;->mLastExtraConfig:Ljava/lang/String;

    .line 55
    const-string v7, "notify CORE_EVENT_ON_ACTIVITY_RECREATE"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    const/4 v1, 0x1

    return v1

    .line 63
    .end local v4    # "field":Ljava/lang/String;
    .end local v5    # "extraConfig":Ljava/lang/Object;
    .end local v6    # "extraConfigStr":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    return v3

    .line 66
    .end local v0    # "config":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "enable":Z
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return v3
.end method

.method public setUCCoreDownloadUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setUCCoreDownloadUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UCProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sput-object p1, Lcom/alipay/mobile/nebulauc/provider/H5UCProviderImpl;->sUCCoreDownloadUrl:Ljava/lang/String;

    .line 109
    return-void
.end method
