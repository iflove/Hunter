.class public Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;
.super Ljava/lang/Object;
.source "UpgradeSyncManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpgradeSyncManager"

.field private static final UPGRADE_DATA:Ljava/lang/String; = "upgrade-data"

.field private static final UPGRADE_RPC:Ljava/lang/String; = "upgrade-rpc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->onPreCheckUpgradeMessage(Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->onProcessUpgradeMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;)Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object p0

    return-object p0
.end method

.method private checkUpgradeConformCondition(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)Z
    .locals 1

    .line 252
    nop

    .line 253
    iget-object v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->utdid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->checkUtdidCondition(Ljava/lang/String;)Z

    move-result v0

    .line 254
    iget-object p1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->currentVersion:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->checkVersionCondition(Ljava/lang/String;)Z

    move-result p1

    .line 255
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 256
    const/4 p1, 0x1

    goto :goto_0

    .line 258
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkUtdidCondition(Ljava/lang/String;)Z
    .locals 5

    .line 269
    nop

    .line 270
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x1

    goto :goto_0

    .line 274
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f53\u524dutdid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sync\u4e0b\u53d1\u7684utdid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u662f\u5426\u6ee1\u8db3\u540c\u4e00\u4e2a\u8bbe\u5907\u7684\u6761\u4ef6isUtdidConform= "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpgradeSyncManager"

    invoke-interface {v2, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return v1
.end method

.method private checkVersionCondition(Ljava/lang/String;)Z
    .locals 5

    .line 285
    nop

    .line 286
    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    .line 287
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const/4 v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f53\u524d\u7248\u672c\u53f7="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sync\u4e0b\u53d1\u7684\u7248\u672c\u53f7="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \u662f\u5426\u6ee1\u8db3\u540c\u4e00\u4e2a\u7248\u672cisVersionConform= "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpgradeSyncManager"

    invoke-interface {v2, v0, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return v1
.end method

.method private dealSyncRpcResult(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V
    .locals 4

    .line 321
    const-string v0, "UpgradeSyncManager"

    if-nez p1, :cond_0

    .line 322
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v1, "dealSyncRpcResult clientUpgradeRes is null"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void

    .line 325
    :cond_0
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_2

    .line 326
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkRPCDataIsValid(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)Z

    move-result v1

    .line 327
    if-nez v1, :cond_1

    .line 328
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->reprortRPCDataIsInValid()V

    .line 329
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo v1, "sync-rpc \u6570\u636e\u8fd4\u56deresponse\u5173\u952e\u6570\u636e\u4e3a\u7a7a"

    invoke-interface {p1, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void

    .line 333
    :cond_1
    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->resultStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 334
    iget-object v2, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->reportUpgradeType(ILjava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE args clientUpgradeRes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object v0

    .line 340
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->updateRpcRes(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 342
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->upgradeNowIfComformCondition()V

    .line 344
    :cond_2
    return-void
.end method

.method private getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;
    .locals 2

    .line 377
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 379
    const-class v1, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 380
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    .line 381
    return-object v0
.end method

.method private onPreCheckUpgradeMessage(Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)Z
    .locals 8

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "receive upgradeMsg sync message\uff1a%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpgradeSyncManager"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    iget-object v1, p2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object p2, p2, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sget-object v2, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string/jumbo v3, "sync_arrived"

    const-string v4, "UPGRADE-SYNC-ARRIVE-0518-01"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->isInUpgradeInterval()Z

    move-result p1

    .line 108
    return p1
.end method

.method private onProcessSyncData(Lorg/json/JSONObject;)V
    .locals 7

    .line 149
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    nop

    .line 152
    new-instance p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;

    invoke-direct {p1}, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;-><init>()V

    .line 153
    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->resultStatus:I

    .line 154
    const-string v1, "downloadURL"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->downloadURL:Ljava/lang/String;

    .line 155
    const-string/jumbo v1, "newestVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->newestVersion:Ljava/lang/String;

    .line 156
    const-string v1, "guideMemo"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->guideMemo:Ljava/lang/String;

    .line 157
    const-string v1, "fullMd5"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->fullMd5:Ljava/lang/String;

    .line 158
    const-string/jumbo v1, "upgradeVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->upgradeVersion:Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "netType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->netType:Ljava/lang/String;

    .line 160
    const-string/jumbo v1, "utdid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->utdid:Ljava/lang/String;

    .line 161
    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->userId:Ljava/lang/String;

    .line 162
    const-string v1, "currentVersion"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->currentVersion:Ljava/lang/String;

    .line 163
    const-string/jumbo v1, "syncUpgradeSleepTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->syncUpgradeSleepTime:I

    .line 164
    const-string v1, "isWifi"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->isWifi:I

    .line 165
    const-string/jumbo v1, "silentType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->silentType:I

    .line 167
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    iget-object v6, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->upgradeVersion:Ljava/lang/String;

    const-string/jumbo v2, "sync-data"

    const-string v3, "UPGRADE-SYNC-TYPE-OF-DATA-160614-01"

    const-string v4, ""

    const-string/jumbo v5, "newversion"

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->resultStatus:I

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_2

    .line 171
    invoke-static {p1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->checkSyncDataIsValid(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)Z

    move-result v0

    .line 172
    const-string v1, "UpgradeSyncManager"

    if-eqz v0, :cond_1

    .line 173
    iget v0, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->syncUpgradeSleepTime:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->setUpgradeTimeInterval(I)V

    .line 174
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->checkUpgradeConformCondition(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)Z

    move-result v0

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u662f\u5426\u6ee1\u8db3\u5347\u7ea7\u4fe1\u606f\u5b58\u50a8\u6761\u4ef6isUpgradeConformCondition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->updateSyncDataInfo(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)V

    .line 179
    :cond_0
    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->reprortSyncDataIsInValid()V

    .line 181
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string/jumbo v0, "sync-data\u5347\u7ea7\u5173\u952e\u6570\u636e\u4e3a\u7a7a"

    invoke-interface {p1, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    :goto_0
    return-void
.end method

.method private onProcessSyncRpc(Lorg/json/JSONObject;)V
    .locals 6

    .line 194
    const-string v0, "UpgradeSyncManager"

    const-string v1, "data"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    const-string p1, "delayTime"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    const-string/jumbo v2, "maxRandomTime"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    const-string/jumbo v3, "syncUpgradeSleepTime"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 199
    invoke-static {v1}, Lcom/alipay/mobile/android/security/upgrade/util/UpdateUtils;->setUpgradeTimeInterval(I)V

    .line 201
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 202
    nop

    .line 204
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    .line 207
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p1, v1

    .line 209
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5347\u7ea7rpc\u5ef6\u8fdf\u591a\u5c11\u79d2\u53d1\u9001\uff0ctotalDelayTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    goto :goto_1

    .line 211
    :catch_0
    move-exception p1

    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u8fd4\u56de\u968f\u673a\u65f6\u95f4\u6216\u8005\u5ef6\u8fdf\u65f6\u95f4\u4e0d\u80fd\u89e3\u6790\u4e3aint"

    invoke-interface {v1, v0, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    :goto_1
    new-instance p1, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    invoke-direct {p1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;->getClientUpgradeRes()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object p1

    .line 222
    sget-object v0, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;->upgradeVersion:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const-string v1, ""

    :goto_2
    move-object v5, v1

    const-string/jumbo v1, "sync-rpc"

    const-string v2, "UPGRADE-SYNC-TYPE-OF-RPC-160614-02"

    const-string v3, ""

    const-string/jumbo v4, "newversion"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->dealSyncRpcResult(Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;)V

    .line 225
    return-void
.end method

.method private declared-synchronized onProcessUpgradeMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 3

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 120
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    .line 121
    const-string/jumbo v0, "pl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string/jumbo p1, "type"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    const-string/jumbo v1, "upgrade-data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->onProcessSyncData(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 126
    :cond_0
    const-string/jumbo v1, "upgrade-rpc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 127
    invoke-direct {p0, v0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->onProcessSyncRpc(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_1
    :goto_0
    goto :goto_1

    .line 116
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 136
    :catch_0
    move-exception p1

    .line 137
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "\u5904\u7406\u5347\u7ea7\u4fe1\u606f\u5f02\u5e38"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 133
    :catch_1
    move-exception p1

    .line 134
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->reportParseUpgradeDataException(Ljava/lang/Exception;)V

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "\u5904\u7406\u5347\u7ea7\u4fe1\u606fjson\u89e3\u6790\u5f02\u5e38"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 131
    :catch_2
    move-exception p1

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "\u5904\u7406\u5347\u7ea7\u4fe1\u606frpc\u5f02\u5e38"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 140
    :goto_1
    monitor-exit p0

    return-void

    .line 116
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private reportParseUpgradeDataException(Ljava/lang/Exception;)V
    .locals 3

    .line 233
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "reportParseUpgradeDataException"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    const-string p1, "SYNC-UPGRADE-DATA"

    const-string v0, "SYNC-DATA-JSON-EXCEPTION"

    const-string v1, "160526-01"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2, v2}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private reportUpgradeType(ILjava/lang/String;)V
    .locals 7

    .line 385
    const/16 v0, 0xcc

    if-ne v0, p1, :cond_0

    .line 386
    sget-object v1, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string v2, "ever_upgrade"

    const-string v3, "EVER-UPGRADE-160323"

    const-string v4, ""

    const-string/jumbo v5, "newversion"

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_0
    if-eq v0, p1, :cond_1

    const/16 v0, 0xca

    if-ne v0, p1, :cond_2

    .line 390
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 391
    const-string/jumbo v0, "upgrade_type"

    const-string/jumbo v1, "normal_upgrade"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v0, "newversion"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object p2, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->EVENT:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string/jumbo v0, "need_upgrade"

    const-string v1, "ALL-NEED-UPGRADE-160323"

    const-string v2, ""

    invoke-static {p2, v0, v1, v2, p1}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 396
    :cond_2
    return-void
.end method

.method private reprortRPCDataIsInValid()V
    .locals 4

    .line 347
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "reprortRPCDataIsInValid()"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v0, "RPC-UPGRADE-DATA"

    const-string v1, "SYNC-RPC-RES-KEY-DATA-NULL"

    const-string v2, "160526-03"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method private reprortSyncDataIsInValid()V
    .locals 4

    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UpgradeSyncManager"

    const-string/jumbo v2, "reprortDataIsInValid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v0, "SYNC-UPGRADE-DATA"

    const-string v1, "SYNC-DATA-KEY-DATA-NULL"

    const-string v2, "160526-02"

    const-string v3, ""

    invoke-static {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateMonitorLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private updateSyncDataInfo(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)V
    .locals 4

    .line 302
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->getUpdateServices()Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;

    move-result-object v0

    .line 303
    if-eqz p1, :cond_0

    .line 304
    nop

    .line 305
    iget v1, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->resultStatus:I

    .line 306
    iget-object v2, p1, Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;->upgradeVersion:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->reportUpgradeType(ILjava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE args upgradeSyncInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UpgradeSyncManager"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/android/security/upgrade/service/UpdateServices;->update(Lcom/alipay/mobile/android/security/upgrade/info/UpgradeSyncInfo;)V

    .line 311
    invoke-direct {p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;->upgradeNowIfComformCondition()V

    .line 313
    :cond_0
    return-void
.end method

.method private upgradeNowIfComformCondition()V
    .locals 2

    .line 355
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 356
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 357
    sget-object v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$2;-><init>(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 367
    return-void
.end method


# virtual methods
.method public registUpgradeSync()V
    .locals 4

    .line 58
    const-string v0, "UpgradeSyncManager"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "init UpgradeSync"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 60
    const-class v2, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 61
    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getUpgradeSyncBizName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 62
    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/sync/UpgradeSyncManager;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    .line 86
    const-string v1, "MS-DUPGRADE"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "\u5347\u7ea7sync\u6ce8\u518c\u903b\u8f91\u6267\u884c\u5b8c\u6bd5"

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "initSyncSlilentDownload error"

    invoke-interface {v2, v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    return-void
.end method
