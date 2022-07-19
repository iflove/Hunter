.class public final Lcom/alipay/mobile/beehive/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/beehive/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final activity_multilevel_select:I

.field public static final popup_filter_grid_layout:I

.field public static final popup_grid_item:I

.field public static final popup_seperator_line:I

.field public static final rpc_full_page_notice_view:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 73
    const-string v0, "layout"

    const-string v1, "activity_multilevel_select"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beehive/R$layout;->activity_multilevel_select:I

    .line 74
    const-string/jumbo v1, "popup_filter_grid_layout"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beehive/R$layout;->popup_filter_grid_layout:I

    .line 75
    const-string/jumbo v1, "popup_grid_item"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beehive/R$layout;->popup_grid_item:I

    .line 76
    const-string/jumbo v1, "popup_seperator_line"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/beehive/R$layout;->popup_seperator_line:I

    .line 77
    const-string/jumbo v1, "rpc_full_page_notice_view"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beehive/R$layout;->rpc_full_page_notice_view:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
