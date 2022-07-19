.class public final Lcom/alipay/mobile/nebulaappproxy/R$color;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "color"
.end annotation


# static fields
.field public static final default_menu_bg:I

.field public static final recent_use_app_area_bg:I

.field public static final tiny_menu_action_background_color:I

.field public static final tiny_menu_action_text_color:I

.field public static final tiny_menu_item_bg:I

.field public static final tiny_menu_item_text_color:I

.field public static final transparent:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "color"

    const-string v1, "default_menu_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->default_menu_bg:I

    .line 11
    const-string/jumbo v1, "recent_use_app_area_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->recent_use_app_area_bg:I

    .line 12
    const-string/jumbo v1, "tiny_menu_action_background_color"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->tiny_menu_action_background_color:I

    .line 13
    const-string/jumbo v1, "tiny_menu_action_text_color"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->tiny_menu_action_text_color:I

    .line 14
    const-string/jumbo v1, "tiny_menu_item_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->tiny_menu_item_bg:I

    .line 15
    const-string/jumbo v1, "tiny_menu_item_text_color"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/nebulaappproxy/R$color;->tiny_menu_item_text_color:I

    .line 16
    const-string/jumbo v1, "transparent"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/nebulaappproxy/R$color;->transparent:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
