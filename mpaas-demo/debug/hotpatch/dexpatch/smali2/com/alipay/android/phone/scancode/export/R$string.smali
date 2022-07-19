.class public final Lcom/alipay/android/phone/scancode/export/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/scancode/export/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static final album:I

.field public static final camera_no_permission:I

.field public static final camera_open_error:I

.field public static final close_page:I

.field public static final close_torch:I

.field public static final dummy_qr_barcode_tip:I

.field public static final open_torch:I

.field public static final read_sdcard_no_permission:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    const-string/jumbo v0, "string"

    const-string v1, "album"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$string;->album:I

    .line 53
    const-string v1, "camera_no_permission"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$string;->camera_no_permission:I

    .line 54
    const-string v1, "camera_open_error"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$string;->camera_open_error:I

    .line 55
    const-string v1, "close_page"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$string;->close_page:I

    .line 56
    const-string v1, "close_torch"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$string;->close_torch:I

    .line 57
    const-string v1, "dummy_qr_barcode_tip"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$string;->dummy_qr_barcode_tip:I

    .line 58
    const-string/jumbo v1, "open_torch"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$string;->open_torch:I

    .line 59
    const-string/jumbo v1, "read_sdcard_no_permission"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/scancode/export/R$string;->read_sdcard_no_permission:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
