.class public final Lcom/alipay/mobile/beehive/R$drawable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/beehive/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "drawable"
.end annotation


# static fields
.field public static final popup_grid_item_color:I

.field public static final popup_list_cate_item_bg:I

.field public static final popup_list_cate_item_bg_selected:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-string v0, "drawable"

    const-string/jumbo v1, "popup_grid_item_color"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beehive/R$drawable;->popup_grid_item_color:I

    .line 61
    const-string/jumbo v1, "popup_list_cate_item_bg"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beehive/R$drawable;->popup_list_cate_item_bg:I

    .line 62
    const-string/jumbo v1, "popup_list_cate_item_bg_selected"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beehive/R$drawable;->popup_list_cate_item_bg_selected:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
