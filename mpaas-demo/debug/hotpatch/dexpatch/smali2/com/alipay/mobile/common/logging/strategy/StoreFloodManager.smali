.class public Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;
.super Ljava/lang/Object;
.source "StoreFloodManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StoreFloodManager"

.field private static instance:Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;


# instance fields
.field private delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->instance:Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    .line 37
    return-void
.end method

.method private getFloodRate(Ljava/lang/String;)I
    .locals 3
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 229
    return v1

    .line 231
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getLogStrategyInfos()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v2, 0x0

    .line 232
    .local v2, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 233
    return v1

    .line 235
    :cond_1
    iget-boolean v0, v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isDelayUploadCategory:Z

    if-nez v0, :cond_2

    .line 236
    return v1

    .line 238
    :cond_2
    iget v0, v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->floodRate:I

    .line 240
    return v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;
    .locals 2

    .line 22
    sget-object v0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->instance:Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    if-eqz v0, :cond_0

    .line 23
    return-object v0

    .line 25
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->instance:Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    if-eqz v1, :cond_1

    .line 27
    monitor-exit v0

    return-object v1

    .line 29
    :cond_1
    new-instance v1, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->instance:Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;

    .line 30
    monitor-exit v0

    .line 31
    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isHitStoreFlood(Ljava/lang/String;)Z
    .locals 8
    .param p1, "logCategory"    # Ljava/lang/String;

    const-string v0, "StoreFloodManager"

    .line 203
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    return v1

    .line 206
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getLogStrategyInfos()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;

    const/4 v3, 0x0

    .line 207
    .local v3, "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    move-object v3, v2

    if-nez v2, :cond_1

    .line 209
    return v1

    .line 211
    :cond_1
    iget-boolean v2, v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->isDelayUploadCategory:Z

    if-nez v2, :cond_2

    .line 213
    return v1

    .line 215
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, "deviceId":Ljava/lang/String;
    iget v4, v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->floodRate:I

    invoke-static {v4, v2}, Lcom/alipay/mobile/common/logging/strategy/SimplingUtils;->isHitStoreFlood(ILjava/lang/String;)Z

    move-result v4

    .line 217
    .local v4, "hitStoreFlood":Z
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isHitStoreFlood,logCategory:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",hitStoreFlood:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",floodRate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;->floodRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    return v4

    .line 220
    .end local v2    # "deviceId":Ljava/lang/String;
    .end local v3    # "strategyInfo":Lcom/alipay/mobile/common/logging/strategy/LogStrategyInfo;
    .end local v4    # "hitStoreFlood":Z
    :catchall_0
    move-exception v2

    .line 221
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isHitStoreFlood ex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v2    # "ex":Ljava/lang/Throwable;
    return v1
.end method

.method private isLogSendCheckStoreFlood(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "logCategoryFilter"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 100
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 101
    .local v2, "loginfo":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 102
    return-object v1

    .line 104
    :cond_0
    const/4 v0, 0x2

    aget-object v0, v2, v0

    .line 105
    .local v0, "logCategory":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    return-object v1

    .line 110
    :cond_1
    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->isUploadByDelayTask(Landroid/os/Bundle;)Z

    move-result v3

    const-string v4, "StoreFloodManager"

    if-eqz v3, :cond_2

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "UploadByDelayTask,fileName:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",logCategoryFilter:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",bundle:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-object v0

    .line 117
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDelayUploadCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    return-object v0

    .line 122
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->isHitStoreFlood(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    .line 123
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    :try_start_0
    const-string v3, "flood"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a()Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->d()Ljava/io/File;

    move-result-object v3

    .line 130
    .local v5, "uploadDir":Ljava/io/File;
    move-object v5, v3

    if-eqz v3, :cond_4

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_flood"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "floodFileName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v6, "originalFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v7, "floodFile":Ljava/io/File;
    invoke-static {v6, v7}, Lcom/alipay/mobile/common/logging/util/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "hit dealy upload,rename from:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",to :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v4, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v3    # "floodFileName":Ljava/lang/String;
    .end local v5    # "uploadDir":Ljava/io/File;
    .end local v6    # "originalFile":Ljava/io/File;
    .end local v7    # "floodFile":Ljava/io/File;
    :cond_4
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v3

    .line 139
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isSendCheckStoreFlood ex:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v3    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 157
    :cond_5
    return-object v0

    .line 145
    :cond_6
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 146
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->getFloodRate(Ljava/lang/String;)I

    move-result v1

    move v3, v5

    .line 147
    .local v3, "floodRate":I
    move v3, v1

    if-ltz v1, :cond_8

    .line 148
    if-nez p3, :cond_7

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    .line 151
    :cond_7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "floodRate"

    invoke-virtual {p3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "add to header,floodRate:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",logCategory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v3    # "floodRate":I
    :cond_8
    return-object v0
.end method

.method private isLogSendForFloodDischarge(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "logCategoryFilter"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 165
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 166
    .local v2, "loginfo":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 167
    return-object v1

    .line 169
    :cond_0
    const/4 v0, 0x2

    aget-object v0, v2, v0

    .line 170
    .local v0, "logCategory":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    return-object v1

    .line 175
    :cond_1
    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->isUploadByDelayTask(Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 176
    return-object v0

    .line 180
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->getInstance()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->isDelayUploadCategory(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "isSendForFloodDischarge,logCategory:"

    const-string v5, "StoreFloodManager"

    if-eqz v3, :cond_3

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",allow upload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0

    .line 184
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",not upload"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object v1
.end method

.method private isServer503Delay(Ljava/lang/String;)Z
    .locals 4
    .param p1, "logCategory"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->f()Z

    move-result v0

    const/4 v1, 0x0

    .line 51
    .local v1, "shouldDelayByServer503":Z
    move v1, v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "logCategory:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",shouldDelayByServer503:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StoreFloodManager"

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return v1
.end method

.method private isUploadByDelayTask(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v0, "event"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 193
    .local v1, "event":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "floodDischarge"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    return v0

    .line 197
    .end local v1    # "event":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getDelayUploadConfig()Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    return-object v0
.end method

.method public isLogSendFloodFilter(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "logCategoryFilter"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .line 60
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 61
    .local v2, "loginfo":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 62
    return-object v1

    .line 64
    :cond_0
    const/4 v0, 0x2

    aget-object v0, v2, v0

    .line 65
    .local v0, "logCategory":Ljava/lang/String;
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    return-object v1

    .line 70
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->a()Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;

    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/GlobalLogConfigService;->c()Z

    move-result v3

    const-string v4, "StoreFloodManager"

    if-nez v3, :cond_2

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "isSendForFloodDischarge config disable"

    invoke-interface {v1, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0

    .line 76
    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->isServer503Delay(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 77
    return-object v1

    .line 81
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->isLogSendCheckStoreFlood(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v1

    .line 82
    .local v5, "result":Ljava/lang/String;
    const-string v6, "logCategory:"

    if-nez v3, :cond_4

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",not allow upload,storing flood."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-object v1

    .line 88
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->isLogSendForFloodDischarge(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 89
    move-object v5, v3

    if-nez v3, :cond_5

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",not allow upload in floodDischarge"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-object v1

    .line 93
    :cond_5
    return-object v5
.end method

.method public updateServer503Timestamp()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a()V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/strategy/StoreFloodManager;->delayUploadConfig:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a(J)V

    .line 47
    return-void
.end method
