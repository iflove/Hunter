.class public final Lcom/alipay/mobile/tinyapp/biz/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/tinyapp/biz/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final layout_mini_program_open_setting_activity:I

.field public static final tiny_app_share_dialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-string v0, "layout"

    const-string v1, "com_alipay_mobile_tinyapp_biz_layout_mini_program_open_setting_activity"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/tinyapp/biz/R$layout;->layout_mini_program_open_setting_activity:I

    .line 86
    const-string v1, "tiny_app_share_dialog"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/tinyapp/biz/R$layout;->tiny_app_share_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
