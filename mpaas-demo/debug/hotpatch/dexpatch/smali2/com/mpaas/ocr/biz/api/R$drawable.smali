.class public final Lcom/mpaas/ocr/biz/api/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/ocr/biz/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final ic_back_normal:I

.field public static final ic_back_pressed:I

.field public static final ic_close:I

.field public static final ic_flash_off:I

.field public static final ic_flash_on:I

.field public static final selector_btn_back:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 199
    const-string v0, "drawable"

    const-string v1, "ic_back_normal"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$drawable;->ic_back_normal:I

    .line 200
    const-string v1, "ic_back_pressed"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$drawable;->ic_back_pressed:I

    .line 201
    const-string v1, "ic_close"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$drawable;->ic_close:I

    .line 202
    const-string v1, "ic_flash_off"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$drawable;->ic_flash_off:I

    .line 203
    const-string v1, "ic_flash_on"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$drawable;->ic_flash_on:I

    .line 204
    const-string v1, "com_mpaas_ocr_selector_btn_back"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/ocr/biz/api/R$drawable;->selector_btn_back:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
