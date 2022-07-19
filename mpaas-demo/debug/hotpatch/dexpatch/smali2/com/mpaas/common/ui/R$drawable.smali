.class public final Lcom/mpaas/common/ui/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/common/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final dialog_btn_press_radius_shape:I

.field public static final notice_dialog_btn_selector:I

.field public static final white_corner_bg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-string v0, "drawable"

    const-string v1, "dialog_btn_press_radius_shape"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/common/ui/R$drawable;->dialog_btn_press_radius_shape:I

    .line 30
    const-string v1, "notice_dialog_btn_selector"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/common/ui/R$drawable;->notice_dialog_btn_selector:I

    .line 31
    const-string v1, "white_corner_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/common/ui/R$drawable;->white_corner_bg:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
