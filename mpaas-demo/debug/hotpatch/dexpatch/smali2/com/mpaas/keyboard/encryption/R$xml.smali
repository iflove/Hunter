.class public final Lcom/mpaas/keyboard/encryption/R$xml;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/keyboard/encryption/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "xml"
.end annotation


# static fields
.field public static final keyboard_letter_only:I

.field public static final keyboard_num_letter:I

.field public static final keyboard_num_only:I

.field public static final keyboard_special_letter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 184
    const-string v0, "xml"

    const-string v1, "keyboard_letter_only"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$xml;->keyboard_letter_only:I

    .line 185
    const-string v1, "keyboard_num_letter"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$xml;->keyboard_num_letter:I

    .line 186
    const-string v1, "keyboard_num_only"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$xml;->keyboard_num_only:I

    .line 187
    const-string v1, "keyboard_special_letter"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/keyboard/encryption/R$xml;->keyboard_special_letter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
