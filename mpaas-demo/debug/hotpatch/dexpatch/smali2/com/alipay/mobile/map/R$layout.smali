.class public final Lcom/alipay/mobile/map/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/map/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final custom_callout_layout:I

.field public static final custom_callout_white_style_layout:I

.field public static final default_callout_layout:I

.field public static final marker_icon_from_view:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "layout"

    const-string v1, "custom_callout_layout"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/map/R$layout;->custom_callout_layout:I

    .line 51
    const-string v1, "custom_callout_white_style_layout"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/map/R$layout;->custom_callout_white_style_layout:I

    .line 52
    const-string v1, "default_callout_layout"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/map/R$layout;->default_callout_layout:I

    .line 53
    const-string/jumbo v1, "marker_icon_from_view"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/map/R$layout;->marker_icon_from_view:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
