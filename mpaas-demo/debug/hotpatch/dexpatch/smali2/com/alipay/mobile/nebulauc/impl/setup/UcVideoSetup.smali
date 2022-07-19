.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;
.super Ljava/lang/Object;
.source "UcVideoSetup.java"


# static fields
.field private static final APOLLO_DEFAULT_DOWNLOAD_URL:Ljava/lang/String; = "https://gw.alipayobjects.com/os/basement_prod/bcefd687-d09c-40fc-8298-7e6e106336a7.zip"

.field private static final TAG:Ljava/lang/String; = "H5UcService::UcVideoSetup"

.field private static observer1:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static observer2:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static observer3:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

.field private static observer4:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer1:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 35
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$2;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$2;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer2:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 42
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$3;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$3;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer3:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .line 49
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$4;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$4;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer4:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 21
    invoke-static {p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->updateWebAudioDecodePolicy(Ljava/lang/String;)V

    return-void
.end method

.method public static initVideoControl(Landroid/content/Context;ZLjava/lang/String;ZZ)J
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useApollo"    # Z
    .param p2, "downloadUrl"    # Ljava/lang/String;
    .param p3, "downloadApolloIn4G"    # Z
    .param p4, "downloadApolloInLiteProcess"    # Z

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "ts":J
    const-string v2, "initVideoControl"

    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->beginTrace(Ljava/lang/String;)V

    .line 63
    if-eqz p1, :cond_3

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 65
    .local v3, "start":J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 66
    const-string p2, "https://gw.alipayobjects.com/os/basement_prod/bcefd687-d09c-40fc-8298-7e6e106336a7.zip"

    .line 68
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useApollo downloadUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "H5UcService::UcVideoSetup"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMainProcess()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 90
    :cond_1
    const-string v5, "lite process and downloadApolloInLiteProcess false"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    :try_start_0
    new-instance v5, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;

    invoke-direct {v5, p3, p0}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup$5;-><init>(ZLandroid/content/Context;)V

    invoke-static {p0, p2, v5}, Lcom/uc/webview/export/extension/UCCore;->updateUCPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUCPlayer cost:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v5

    .line 87
    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "download apollo exception "

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .end local v3    # "start":J
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 95
    .local v3, "configProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_4

    .line 98
    sget-object v4, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer1:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    const-string v5, "h5_ucVideoHWACCfg"

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "hwacCfgStr":Ljava/lang/String;
    const-string v5, "u4xr_video_st_list"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v5, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer2:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    const-string v6, "h5_ucVideoUseRawControl"

    invoke-interface {v3, v6, v5}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "ucVideoUseRawControl":Ljava/lang/String;
    const-string v6, "crsp_sp_rc"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v6, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer3:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    const-string v7, "h5_ucVideoDisableFloat"

    invoke-interface {v3, v7, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "ucVideoDisableFloat":Ljava/lang/String;
    const-string v7, "video_fixed_sw_hostlist"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;->configure(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v7, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->observer4:Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    const-string v8, "h5_ucApolloConfig"

    invoke-interface {v3, v8, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v7

    .line 110
    .local v7, "ucWebAudioDisableDefaultDecoder":Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/setup/UcVideoSetup;->updateWebAudioDecodePolicy(Ljava/lang/String;)V

    .line 113
    .end local v4    # "hwacCfgStr":Ljava/lang/String;
    .end local v5    # "ucVideoUseRawControl":Ljava/lang/String;
    .end local v6    # "ucVideoDisableFloat":Ljava/lang/String;
    .end local v7    # "ucWebAudioDisableDefaultDecoder":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcSetupTracing;->endTrace(Ljava/lang/String;)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    return-wide v4
.end method

.method private static updateWebAudioDecodePolicy(Ljava/lang/String;)V
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "disableDefaultDecoder":Z
    const/4 v1, 0x0

    .line 123
    .local v1, "disableFFMpegAudioDecoder":Z
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 124
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v2, :cond_0

    .line 125
    const-string v3, "YES"

    const-string v4, "webAudioDisableDefaultDecoder"

    .line 126
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 127
    const-string v3, "yes"

    const-string v4, "webAudioDisableFFMpegDecoder"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 131
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    goto :goto_0

    .line 129
    :catchall_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "H5UcService::UcVideoSetup"

    const-string v4, "updateWebAudioDecodePolicy parseObject error"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_1

    .line 134
    const-string v2, "crsp_adffso"

    const-string v3, "disable"

    invoke-static {v2, v3}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    const-string v2, "crsp_wddd"

    invoke-static {v2, v0}, Lcom/uc/webview/export/extension/UCSettings;->setGlobalBoolValue(Ljava/lang/String;Z)V

    .line 137
    return-void
.end method
