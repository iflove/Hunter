.class public final Lcom/mpaas/demo/sharedres/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/sharedres/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final item_root_menupopupwindow:I

.field public static final root_menupopupwindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "layout"

    const-string v1, "item_root_menupopupwindow"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$layout;->item_root_menupopupwindow:I

    .line 39
    const-string v1, "root_menupopupwindow"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/sharedres/R$layout;->root_menupopupwindow:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
