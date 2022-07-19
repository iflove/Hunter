.class public final Lcom/alipay/mobile/android/security/upgrade/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static final activity_horizontal_margin:I

.field public static final activity_vertical_margin:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "dimen"

    const-string v1, "activity_horizontal_margin"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$dimen;->activity_horizontal_margin:I

    .line 27
    const-string v1, "activity_vertical_margin"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/android/security/upgrade/R$dimen;->activity_vertical_margin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
