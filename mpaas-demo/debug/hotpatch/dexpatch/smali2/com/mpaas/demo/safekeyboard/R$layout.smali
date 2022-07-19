.class public final Lcom/mpaas/demo/safekeyboard/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/safekeyboard/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final activity_main:I

.field public static final activity_poc:I

.field public static final keyboard_all:I

.field public static final layout_keyboard:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    const-string v0, "layout"

    const-string v1, "com_mpaas_demo_safekeyboard_activity_main"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/safekeyboard/R$layout;->activity_main:I

    .line 46
    const-string v1, "activity_poc"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/safekeyboard/R$layout;->activity_poc:I

    .line 47
    const-string v1, "keyboard_all"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/safekeyboard/R$layout;->keyboard_all:I

    .line 48
    const-string v1, "layout_keyboard"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/safekeyboard/R$layout;->layout_keyboard:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
