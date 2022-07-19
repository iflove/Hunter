.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;
.super Ljava/lang/Object;
.source "StrategyDef.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
    }
.end annotation


# instance fields
.field public duration:J

.field public maxDiffSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public setOnlyWifiRequest:Z

.field public timingConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;",
            ">;"
        }
    .end annotation
.end field

.field public userTag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->maxDiffSize:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->timingConfigs:Ljava/util/Map;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;->setOnlyWifiRequest:Z

    return-void
.end method
