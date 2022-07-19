.class public final Lcom/mpaas/keyboard/encryption/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/keyboard/encryption/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final layout_mpaas_safekeyboard:I

.field public static final layout_mpaas_safekeyboard_keyboardbar:I

.field public static final layout_mpaas_safekeyboard_preview:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 127
    const-string v0, "layout"

    const-string v1, "layout_mpaas_safekeyboard"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$layout;->layout_mpaas_safekeyboard:I

    .line 128
    const-string v1, "layout_mpaas_safekeyboard_keyboardbar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$layout;->layout_mpaas_safekeyboard_keyboardbar:I

    .line 129
    const-string v1, "layout_mpaas_safekeyboard_preview"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/keyboard/encryption/R$layout;->layout_mpaas_safekeyboard_preview:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
