.class public final Lcom/youku/antitheftchain/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/antitheftchain/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final exclusive_watermark_height:I

.field public static final exclusive_watermark_width:I

.field public static final register_num_textsize:I

.field public static final watermark_height:I

.field public static final watermark_margin_right:I

.field public static final watermark_margin_top:I

.field public static final watermark_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    const-string v0, "dimen"

    const-string v1, "exclusive_watermark_height"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/antitheftchain/R$dimen;->exclusive_watermark_height:I

    .line 16
    const-string v1, "exclusive_watermark_width"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/antitheftchain/R$dimen;->exclusive_watermark_width:I

    .line 17
    const-string v1, "register_num_textsize"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/antitheftchain/R$dimen;->register_num_textsize:I

    .line 18
    const-string v1, "watermark_height"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/antitheftchain/R$dimen;->watermark_height:I

    .line 19
    const-string v1, "watermark_margin_right"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/antitheftchain/R$dimen;->watermark_margin_right:I

    .line 20
    const-string v1, "watermark_margin_top"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/youku/antitheftchain/R$dimen;->watermark_margin_top:I

    .line 21
    const-string v1, "watermark_width"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/youku/antitheftchain/R$dimen;->watermark_width:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
