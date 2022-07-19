.class public final Lcom/mpaas/common/ui/api/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/common/ui/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final big_font_size:I

.field public static final default_dialog_text_margin:I

.field public static final default_margin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "dimen"

    const-string v1, "big_font_size"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/common/ui/api/R$dimen;->big_font_size:I

    .line 25
    const-string v1, "default_dialog_text_margin"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/common/ui/api/R$dimen;->default_dialog_text_margin:I

    .line 26
    const-string v1, "default_margin"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/common/ui/api/R$dimen;->default_margin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
