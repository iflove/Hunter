.class public Lcom/alipay/mobile/android/security/upgrade/service/impl/AliUpgradeAPIImpl;
.super Ljava/lang/Object;
.source "AliUpgradeAPIImpl.java"

# interfaces
.implements Lcom/alipay/mobile/android/security/upgrade/service/IAliUpgradeAPI;


# static fields
.field private static final TAG:Ljava/lang/String; = "AliUpgradeAPIImpl"


# instance fields
.field private mCheckVersionService:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/upgrade/service/normal/impl/CheckVersionServiceImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/AliUpgradeAPIImpl;->mCheckVersionService:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    .line 21
    return-void
.end method


# virtual methods
.method public checkHasNewVersion()I
    .locals 3

    .line 30
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliUpgradeAPIImpl"

    const-string v2, "checkHasNewVersion"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/AliUpgradeAPIImpl;->mCheckVersionService:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    invoke-interface {v0}, Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;->checkHasNewVersion()I

    move-result v0

    return v0
.end method

.method public checkUpgradeAndShowAlert(Landroid/app/Activity;)V
    .locals 3

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliUpgradeAPIImpl"

    const-string v2, "checkUpgradeAndShowAlert"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/AliUpgradeAPIImpl;->mCheckVersionService:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    invoke-static {}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getInstance()Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/android/security/upgrade/config/UpgradeConfig;->getUpgradeDialogIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;->checkNewVersion(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 26
    return-void
.end method

.method public getClientUpgradeRes()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;
    .locals 3

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliUpgradeAPIImpl"

    const-string v2, "getClientUpgradeRes"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/AliUpgradeAPIImpl;->mCheckVersionService:Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;

    invoke-interface {v0}, Lcom/alipay/mobile/upgrade/service/normal/CheckVersionService;->getClientUpgradeRes()Lcom/alipay/mobileappcommon/biz/rpc/client/upgrade/model/ClientUpgradeRes;

    move-result-object v0

    return-object v0
.end method
