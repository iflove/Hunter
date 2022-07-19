.class public abstract Lcom/alipay/mobile/base/config/ConfigRegisterService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "ConfigRegisterService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
.end method

.method public abstract getConfigGetListener()Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;
.end method

.method public abstract notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract registerSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
.end method

.method public abstract removeConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)V
.end method

.method public abstract setConfigGetListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;)V
.end method

.method public abstract unregisterSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
.end method
