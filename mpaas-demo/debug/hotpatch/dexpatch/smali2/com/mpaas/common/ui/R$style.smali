.class public final Lcom/mpaas/common/ui/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/common/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final dialog_with_no_title_style_trans_bg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const-string v0, "style"

    const-string v1, "dialog_with_no_title_style_trans_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/common/ui/R$style;->dialog_with_no_title_style_trans_bg:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
