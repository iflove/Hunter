.class public final Lcom/mpaas/ocr/biz/api/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/ocr/biz/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final activity_detect:I

.field public static final activity_detect_maskarea:I

.field public static final common_iconview:I

.field public static final common_titlebar:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 224
    const-string v0, "layout"

    const-string v1, "activity_detect"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$layout;->activity_detect:I

    .line 225
    const-string v1, "com_mpaas_ocr_activity_detect_maskarea"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$layout;->activity_detect_maskarea:I

    .line 226
    const-string v1, "common_iconview"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/ocr/biz/api/R$layout;->common_iconview:I

    .line 227
    const-string v1, "com_mpaas_ocr_common_titlebar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/ocr/biz/api/R$layout;->common_titlebar:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
