.class public final Lcom/mpaas/demo/ocr/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/ocr/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final activity_detect_maskarea:I

.field public static final activity_image:I

.field public static final activity_main:I

.field public static final common_titlebar:I

.field public static final image_layout:I

.field public static final main:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "layout"

    const-string v1, "com_mpaas_demo_ocr_activity_detect_maskarea"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/ocr/R$layout;->activity_detect_maskarea:I

    .line 49
    const-string v1, "activity_image"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/ocr/R$layout;->activity_image:I

    .line 50
    const-string v1, "com_mpaas_demo_ocr_activity_main"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/ocr/R$layout;->activity_main:I

    .line 51
    const-string v1, "com_mpaas_demo_ocr_common_titlebar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/ocr/R$layout;->common_titlebar:I

    .line 52
    const-string v1, "image_layout"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/ocr/R$layout;->image_layout:I

    .line 53
    const-string v1, "main"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/ocr/R$layout;->main:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
