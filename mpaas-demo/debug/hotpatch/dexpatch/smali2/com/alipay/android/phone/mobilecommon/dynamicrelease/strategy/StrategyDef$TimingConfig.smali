.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;
.super Ljava/lang/Object;
.source "StrategyDef.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimingConfig"
.end annotation


# instance fields
.field public delay:J

.field public downloadDelay:J

.field public maxRetry:I

.field public types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->types:Ljava/util/List;

    .line 19
    return-void
.end method

.method public varargs constructor <init>(JJI[Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)V
    .locals 5
    .param p1, "delay"    # J
    .param p3, "downloadDelay"    # J
    .param p5, "maxRetry"    # I
    .param p6, "types"    # [Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->types:Ljava/util/List;

    .line 22
    iput-wide p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->delay:J

    .line 23
    iput-wide p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->downloadDelay:J

    .line 24
    iput p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->maxRetry:I

    .line 25
    if-eqz p6, :cond_0

    .line 26
    array-length v0, p6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p6, v1

    .line 27
    .local v2, "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyDef$TimingConfig;->types:Ljava/util/List;

    invoke-virtual {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .end local v2    # "type":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
