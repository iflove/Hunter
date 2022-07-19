.class public final Lcom/mpaas/demo/ocr/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/ocr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final ic_back_normal:I

.field public static final ic_back_pressed:I

.field public static final selector_btn_back:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    const-string v0, "drawable"

    const-string v1, "ic_back_normal"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/ocr/R$drawable;->ic_back_normal:I

    .line 15
    const-string v1, "ic_back_pressed"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/ocr/R$drawable;->ic_back_pressed:I

    .line 16
    const-string v1, "com_mpaas_demo_ocr_selector_btn_back"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/ocr/R$drawable;->selector_btn_back:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
