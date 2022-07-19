.class public final Lcom/mpaas/demo/materialdesign/api/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/materialdesign/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final MMDAppTheme:I

.field public static final MMDAppTheme_AppBarOverlay:I

.field public static final MMDAppTheme_NoActionBar:I

.field public static final MMDAppTheme_NoActionBar_StatusBar:I

.field public static final MMDAppTheme_PopupOverlay:I

.field public static final MMDDialogFullscreen:I

.field public static final MMDDialogFullscreenWithTitle:I

.field public static final MMDMMDFullscreenTheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 450
    const-string v0, "style"

    const-string v1, "MMDAppTheme"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDAppTheme:I

    .line 451
    const-string v1, "MMDAppTheme_AppBarOverlay"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDAppTheme_AppBarOverlay:I

    .line 452
    const-string v1, "MMDAppTheme_NoActionBar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDAppTheme_NoActionBar:I

    .line 453
    const-string v1, "MMDAppTheme_NoActionBar_StatusBar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDAppTheme_NoActionBar_StatusBar:I

    .line 454
    const-string v1, "MMDAppTheme_PopupOverlay"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDAppTheme_PopupOverlay:I

    .line 455
    const-string v1, "MMDDialogFullscreen"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDDialogFullscreen:I

    .line 456
    const-string v1, "MMDDialogFullscreenWithTitle"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDDialogFullscreenWithTitle:I

    .line 457
    const-string v1, "MMDMMDFullscreenTheme"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/materialdesign/api/R$style;->MMDMMDFullscreenTheme:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
