.class public Lcom/alipay/mobile/android/security/upgrade/AliUpgradeApiFactory;
.super Ljava/lang/Object;
.source "AliUpgradeApiFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AliAuth_AlipaySsoAPIFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpgradeApi()Lcom/alipay/mobile/android/security/upgrade/service/IAliUpgradeAPI;
    .locals 3

    .line 17
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "AliAuth_AlipaySsoAPIFactory"

    const-string v2, "createSsoApi normal"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/AliUpgradeAPIImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/AliUpgradeAPIImpl;-><init>()V

    return-object v0
.end method
