.class public final Lcom/mpaas/ocr/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/ocr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final capture_rect_tip:I

.field public static final loadingview_loadingText:I

.field public static final scan_card:I

.field public static final scan_id_card_back:I

.field public static final scan_id_card_front:I

.field public static final tips_unable_to_flush:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 230
    const-string v0, "string"

    const-string v1, "capture_rect_tip"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/R$string;->capture_rect_tip:I

    .line 231
    const-string v1, "loadingview_loadingText"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/R$string;->loadingview_loadingText:I

    .line 232
    const-string v1, "scan_card"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/R$string;->scan_card:I

    .line 233
    const-string v1, "scan_id_card_back"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/R$string;->scan_id_card_back:I

    .line 234
    const-string v1, "scan_id_card_front"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/R$string;->scan_id_card_front:I

    .line 235
    const-string v1, "tips_unable_to_flush"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/ocr/R$string;->tips_unable_to_flush:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
