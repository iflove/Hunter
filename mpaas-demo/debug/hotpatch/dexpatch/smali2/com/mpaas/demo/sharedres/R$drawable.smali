.class public final Lcom/mpaas/demo/sharedres/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/sharedres/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final appicon:I

.field public static final au_button_bg_for_main:I

.field public static final menu_bg:I

.field public static final titlebar_right:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-string v0, "drawable"

    const-string v1, "appicon"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$drawable;->appicon:I

    .line 26
    const-string v1, "com_mpaas_demo_sharedres_au_button_bg_for_main"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$drawable;->au_button_bg_for_main:I

    .line 27
    const-string v1, "menu_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$drawable;->menu_bg:I

    .line 28
    const-string v1, "titlebar_right"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/sharedres/R$drawable;->titlebar_right:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
