.class public final Lcom/alipay/mobile/beephoto/R$anim;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/beephoto/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "anim"
.end annotation


# static fields
.field public static final effect_select_pop_down:I

.field public static final effect_select_pop_up:I

.field public static final fade_in:I

.field public static final fade_out:I

.field public static final pb_default:I

.field public static final record_count_down_bar:I

.field public static final slide_down:I

.field public static final slide_up:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const-string v0, "anim"

    const-string v1, "com_alipay_mobile_beephoto_effect_select_pop_down"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$anim;->effect_select_pop_down:I

    .line 7
    const-string v1, "com_alipay_mobile_beephoto_effect_select_pop_up"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$anim;->effect_select_pop_up:I

    .line 8
    const-string v1, "fade_in"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$anim;->fade_in:I

    .line 9
    const-string v1, "fade_out"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$anim;->fade_out:I

    .line 10
    const-string/jumbo v1, "pb_default"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$anim;->pb_default:I

    .line 11
    const-string v1, "com_alipay_mobile_beephoto_record_count_down_bar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$anim;->record_count_down_bar:I

    .line 12
    const-string/jumbo v1, "slide_down"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$anim;->slide_down:I

    .line 13
    const-string/jumbo v1, "slide_up"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beephoto/R$anim;->slide_up:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
