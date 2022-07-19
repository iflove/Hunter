.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;
.super Ljava/lang/Object;
.source "H5LoggerSwitchModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;,
        Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;,
        Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getDefaultRule()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    return-object v0
.end method

.method public getSingleRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->b:Ljava/util/List;

    return-object v0
.end method

.method public setDefaultRule(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;)V
    .locals 0
    .param p1, "defaultRule"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 23
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;

    .line 24
    return-void
.end method

.method public setSingleRules(Ljava/util/List;)V
    .locals 0
    .param p1, "singleRules"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RulesBean;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;->b:Ljava/util/List;

    .line 32
    return-void
.end method
