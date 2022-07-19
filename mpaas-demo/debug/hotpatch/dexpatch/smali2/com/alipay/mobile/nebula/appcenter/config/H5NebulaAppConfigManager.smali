.class public Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;
.super Ljava/lang/Object;
.source "H5NebulaAppConfigManager.java"


# static fields
.field public static final DEFAULT_OUT_DATE_SECOND:I = 0x278d00

.field public static final DEFAULT_RES_INVALID_SECOND:I = 0x3f480

.field private static final TAG:Ljava/lang/String; = "H5NebulaAppConfigManager"

.field private static canUseClientConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # Ljava/lang/String;

    .line 33
    invoke-static {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->applyConfig(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 33
    sput-boolean p0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return p0
.end method

.method private static applyConfig(ZLjava/lang/String;)V
    .locals 2
    .param p0, "fromConfigChange"    # Z
    .param p1, "configStr"    # Ljava/lang/String;

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    if-eqz p0, :cond_1

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getDefaultExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    .line 72
    :goto_0
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public static enableNewConfig()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->canUseClientConfig:Z

    return v0
.end method

.method public static initConfig()V
    .locals 3

    .line 51
    const/4 v0, 0x0

    .local v0, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 52
    move-object v0, v1

    if-eqz v1, :cond_0

    .line 53
    new-instance v1, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$1;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager$1;-><init>()V

    const-string v2, "h5_nbmngconfig"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "configValue":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->applyConfig(ZLjava/lang/String;)V

    .line 63
    .end local v1    # "configValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static isNeedForceUpdate(Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 13
    .param p0, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 108
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 109
    return v0

    .line 112
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    .line 113
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 114
    return v3

    .line 117
    :cond_1
    nop

    .line 118
    const-string v1, "forcePreReqRate"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    .line 117
    invoke-static {v1, v4, v3}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->parseConfig(Ljava/lang/String;II)I

    move-result v1

    move v4, v3

    .line 123
    .local v4, "strictReqRate":I
    move v4, v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 125
    .local v5, "updateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    .line 126
    .local v7, "timeDiff":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "[isNeedForceUpdate] updateTime:"

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " timeDiff:"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long v11, v7, v9

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " strictReqRat:"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "H5NebulaAppConfigManager"

    invoke-static {v11, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    div-long v9, v7, v9

    int-to-long v11, v4

    cmp-long v1, v9, v11

    if-lez v1, :cond_2

    .line 130
    return v0

    .line 133
    .end local v5    # "updateTime":J
    .end local v7    # "timeDiff":J
    :cond_2
    return v3
.end method

.method public static isOutOfReqRate(Landroid/os/Bundle;Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;)Z
    .locals 14
    .param p0, "copyParam"    # Landroid/os/Bundle;
    .param p1, "appInfo"    # Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;

    .line 142
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 143
    return v0

    .line 146
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    .line 147
    .local v2, "provider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v2, v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 148
    return v3

    .line 152
    :cond_1
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->fromPreset:Ljava/lang/String;

    const-string/jumbo v4, "yes"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "H5NebulaAppConfigManager"

    if-eqz v1, :cond_2

    .line 154
    const-string v1, "h5_use_preset_pkg_info"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 155
    const-string v1, " appInfo is fromPreset set Timeout"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v0

    .line 161
    :cond_2
    const-string/jumbo v1, "strictReqRate"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v3

    .line 165
    .local v5, "strictReqRate":I
    move v5, v1

    if-nez v1, :cond_3

    .line 166
    nop

    .line 167
    const-string/jumbo v1, "preReqRate"

    invoke-interface {v2, v1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getConfigExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v6, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->app_channel:I

    const v7, 0x278d00

    .line 166
    invoke-static {v1, v6, v7}, Lcom/alipay/mobile/nebula/appcenter/config/H5NebulaAppConfigManager;->parseConfig(Ljava/lang/String;II)I

    move-result v5

    .line 173
    :cond_3
    if-eqz v5, :cond_4

    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 174
    iget-object v1, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppInfo;->update_app_time:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 175
    .local v6, "updateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 176
    .local v8, "timeDiff":J
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "[isOutOfReqRate] updateTime:"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " timeDiff:"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x3e8

    div-long v12, v8, v10

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " strictReqRat:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    div-long v10, v8, v10

    int-to-long v12, v5

    cmp-long v1, v10, v12

    if-lez v1, :cond_4

    .line 180
    return v0

    .line 183
    .end local v6    # "updateTime":J
    .end local v8    # "timeDiff":J
    :cond_4
    return v3
.end method

.method private static parseConfig(Ljava/lang/String;II)I
    .locals 4
    .param p0, "configObj"    # Ljava/lang/String;
    .param p1, "channel"    # I
    .param p2, "defaultTime"    # I

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "strictReqRate":I
    invoke-static {p0}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    .line 192
    .local v2, "preJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "time":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "time":Ljava/lang/String;
    :cond_0
    const-string v1, "common"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "time":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 201
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 204
    :cond_1
    move v0, p2

    .line 207
    .end local v1    # "time":Ljava/lang/String;
    :cond_2
    :goto_1
    return v0
.end method
