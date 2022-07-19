.class public final Lcom/alipay/android/phone/scancode/export/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/scancode/export/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final activity_scan:I

.field public static final fragment_base_scan:I

.field public static final scan_title_bar:I

.field public static final view_ma_tool_top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-string v0, "layout"

    const-string v1, "com_alipay_android_phone_scancode_export_activity_scan"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$layout;->activity_scan:I

    .line 44
    const-string v1, "fragment_base_scan"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$layout;->fragment_base_scan:I

    .line 45
    const-string/jumbo v1, "scan_title_bar"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$layout;->scan_title_bar:I

    .line 46
    const-string/jumbo v1, "view_ma_tool_top"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/scancode/export/R$layout;->view_ma_tool_top:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
