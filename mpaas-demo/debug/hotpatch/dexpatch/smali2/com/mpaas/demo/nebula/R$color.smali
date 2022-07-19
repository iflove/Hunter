.class public final Lcom/mpaas/demo/nebula/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/nebula/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final h5_default_titlebar_color:I

.field public static final h5_nav_bar_bottomline:I

.field public static final h5_provider_bg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6
    const-string v0, "color"

    const-string v1, "h5_default_titlebar_color"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$color;->h5_default_titlebar_color:I

    .line 7
    const-string v1, "h5_nav_bar_bottomline"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/nebula/R$color;->h5_nav_bar_bottomline:I

    .line 8
    const-string v1, "h5_provider_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/nebula/R$color;->h5_provider_bg:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
