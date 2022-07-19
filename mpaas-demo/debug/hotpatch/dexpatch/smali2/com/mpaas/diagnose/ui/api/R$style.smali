.class public final Lcom/mpaas/diagnose/ui/api/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/diagnose/ui/api/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final noTitleTransBgDialogStyle:I

.field public static final permission_style:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-string v0, "style"

    const-string v1, "noTitleTransBgDialogStyle_com_mpaas_diagnose_ui"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/diagnose/ui/api/R$style;->noTitleTransBgDialogStyle:I

    .line 67
    const-string v1, "permission_style"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/diagnose/ui/api/R$style;->permission_style:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
