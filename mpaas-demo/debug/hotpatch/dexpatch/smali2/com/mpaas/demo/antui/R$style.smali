.class public final Lcom/mpaas/demo/antui/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/antui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final AppThemeNew:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 328
    const-string v0, "style"

    const-string v1, "AppThemeNew_com_mpaas_demo_antui"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/antui/R$style;->AppThemeNew:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
