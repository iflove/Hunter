.class public Lcom/alipay/mobile/antui/api/AntUIHelper;
.super Ljava/lang/Object;
.source "AntUIHelper.java"


# static fields
.field public static textSizeGearGetter:Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTextSizeGearGetter()Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;
    .locals 1

    .line 10
    sget-object v0, Lcom/alipay/mobile/antui/api/AntUIHelper;->textSizeGearGetter:Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    return-object v0
.end method

.method public static setTextSizeGearGetter(Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;)V
    .locals 0
    .param p0, "textSizeGearGetter"    # Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    .line 14
    sput-object p0, Lcom/alipay/mobile/antui/api/AntUIHelper;->textSizeGearGetter:Lcom/alipay/mobile/antui/api/AUTextSizeGearGetter;

    .line 15
    return-void
.end method
