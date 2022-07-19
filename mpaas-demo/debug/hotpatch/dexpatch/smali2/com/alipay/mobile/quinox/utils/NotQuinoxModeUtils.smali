.class public Lcom/alipay/mobile/quinox/utils/NotQuinoxModeUtils;
.super Ljava/lang/Object;
.source "NotQuinoxModeUtils.java"


# static fields
.field public static final NOT_QUINOX_MODE:Ljava/lang/String; = "not_quinox_mode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNotQuinoxMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 10
    const-string v0, "not_quinox_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/quinox/utils/MetaDataUtil;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
