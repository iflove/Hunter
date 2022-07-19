.class public final Lcom/alipay/mobile/beehive/imagebase/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/beehive/imagebase/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final Transparent:I

.field public static final popup_popupAnimation:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    const-string/jumbo v0, "style"

    const-string v1, "Transparent_com_alipay_mobile_beehive"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beehive/imagebase/R$style;->Transparent:I

    .line 107
    const-string/jumbo v1, "popup_popupAnimation"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beehive/imagebase/R$style;->popup_popupAnimation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
