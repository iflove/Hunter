.class public final Lcom/mpaas/demo/sharedres/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/demo/sharedres/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final au_button_textcolor_white:I

.field public static final color_line:I

.field public static final color_link:I

.field public static final color_link_disabled:I

.field public static final color_link_pressed:I

.field public static final title_color:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    const-string v0, "color"

    const-string v1, "com_mpaas_demo_sharedres_au_button_textcolor_white"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$color;->au_button_textcolor_white:I

    .line 10
    const-string v1, "color_line"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$color;->color_line:I

    .line 11
    const-string v1, "color_link"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$color;->color_link:I

    .line 12
    const-string v1, "color_link_disabled"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$color;->color_link_disabled:I

    .line 13
    const-string v1, "color_link_pressed"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/mpaas/demo/sharedres/R$color;->color_link_pressed:I

    .line 14
    const-string v1, "title_color"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mpaas/demo/sharedres/R$color;->title_color:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
