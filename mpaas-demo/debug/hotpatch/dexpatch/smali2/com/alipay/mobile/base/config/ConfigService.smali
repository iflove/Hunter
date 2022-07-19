.class public abstract Lcom/alipay/mobile/base/config/ConfigService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;,
        Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;,
        Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;,
        Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;,
        Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
.end method

.method public abstract getAbtestInfo()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfig(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfig(Ljava/lang/String;Lcom/alipay/mobile/base/config/ConfigService$ConfigLoadCallBack;)V
.end method

.method public abstract getConfigForAB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getConfigSyncReporter()Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;
.end method

.method public abstract getResponseTime()J
.end method

.method public abstract isRegistered(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)Z
.end method

.method public abstract loadConfig()V
.end method

.method public abstract loadConfigImmediately(J)V
.end method

.method public abstract preloadKeys(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract refreshAfterLogin(Ljava/lang/String;)V
.end method

.method public abstract registerSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
.end method

.method public abstract removeConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)V
.end method

.method public abstract saveConfig(Lcom/alipay/mobile/base/config/model/PLData;)Ljava/lang/String;
.end method

.method public abstract saveConfig(Lcom/alipay/mobile/base/config/model/PLData;ZZ)Ljava/lang/String;
.end method

.method public abstract saveConfigs(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setConfigSyncReporter(Lcom/alipay/mobile/base/config/ConfigService$ConfigSyncReporter;)V
.end method

.method public abstract unregisterSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
.end method
