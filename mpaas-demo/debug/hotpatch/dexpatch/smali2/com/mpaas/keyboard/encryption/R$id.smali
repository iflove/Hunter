.class public final Lcom/mpaas/keyboard/encryption/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/keyboard/encryption/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static final done:I

.field public static final icon:I

.field public static final mpaas_inner_keyboard:I

.field public static final mpaas_keyboard_bar:I

.field public static final title:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 120
    const-string v0, "id"

    const-string v1, "done"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$id;->done:I

    .line 121
    const-string v1, "icon"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$id;->icon:I

    .line 122
    const-string v1, "mpaas_inner_keyboard"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$id;->mpaas_inner_keyboard:I

    .line 123
    const-string v1, "mpaas_keyboard_bar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/keyboard/encryption/R$id;->mpaas_keyboard_bar:I

    .line 124
    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/keyboard/encryption/R$id;->title:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
