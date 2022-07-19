.class public final Lcom/alipay/mobile/beephoto/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/beephoto/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final colorWhite:I

.field public static final custom_text_color:I

.field public static final custon_text_backgroud:I

.field public static final photo_background:I

.field public static final photo_foreground_pressed:I

.field public static final titlebar_btn_press:I

.field public static final titlebar_btn_trans:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const-string v0, "color"

    const-string v1, "colorWhite"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$color;->colorWhite:I

    .line 17
    const-string v1, "custom_text_color"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$color;->custom_text_color:I

    .line 18
    const-string v1, "custon_text_backgroud"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$color;->custon_text_backgroud:I

    .line 19
    const-string/jumbo v1, "photo_background"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$color;->photo_background:I

    .line 20
    const-string/jumbo v1, "photo_foreground_pressed"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$color;->photo_foreground_pressed:I

    .line 21
    const-string/jumbo v1, "titlebar_btn_press"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beephoto/R$color;->titlebar_btn_press:I

    .line 22
    const-string/jumbo v1, "titlebar_btn_trans"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beephoto/R$color;->titlebar_btn_trans:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
