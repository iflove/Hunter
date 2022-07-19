.class public final Lcom/alipay/android/phone/scancode/export/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/scancode/export/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final bar_scan_ray_view_height:I

.field public static final bar_scan_ray_view_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "dimen"

    const-string v1, "bar_scan_ray_view_height"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/android/phone/scancode/export/R$dimen;->bar_scan_ray_view_height:I

    .line 11
    const-string v1, "bar_scan_ray_view_width"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/android/phone/scancode/export/R$dimen;->bar_scan_ray_view_width:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
