.class public final Lcom/mpaas/nebula/adapter/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/nebula/adapter/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final AppThemeNew:I

.field public static final TransparentNoAnimationTheme:I

.field public static final h5noTitleTransBgDialogStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 150
    const-string v0, "style"

    const-string v1, "AppThemeNew_com_mpaas_nebula_adapter"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/nebula/adapter/R$style;->AppThemeNew:I

    .line 151
    const-string v1, "TransparentNoAnimationTheme_com_mpaas_nebula_adapter"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/nebula/adapter/R$style;->TransparentNoAnimationTheme:I

    .line 152
    const-string v1, "h5noTitleTransBgDialogStyle_com_mpaas_nebula_adapter"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/nebula/adapter/R$style;->h5noTitleTransBgDialogStyle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
