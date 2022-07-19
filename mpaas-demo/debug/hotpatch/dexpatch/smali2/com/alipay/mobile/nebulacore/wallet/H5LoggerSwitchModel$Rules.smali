.class public Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;
.super Ljava/lang/Object;
.source "H5LoggerSwitchModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rules"
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;Ljava/lang/String;I)V
    .locals 0
    .param p1, "range"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;
    .param p2, "output"    # Ljava/lang/String;
    .param p3, "rate"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    .line 74
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->b:Ljava/lang/String;

    .line 75
    iput p3, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->c:I

    .line 76
    return-void
.end method


# virtual methods
.method public getOutput()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getRange()Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->c:I

    return v0
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0
    .param p1, "output"    # Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->b:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setRange(Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;)V
    .locals 0
    .param p1, "range"    # Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->a:Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$RangeBean;

    .line 92
    return-void
.end method

.method public setRate(I)V
    .locals 0
    .param p1, "rate"    # I

    .line 83
    iput p1, p0, Lcom/alipay/mobile/nebulacore/wallet/H5LoggerSwitchModel$Rules;->c:I

    .line 84
    return-void
.end method
