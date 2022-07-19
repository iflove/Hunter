.class public final Lcom/alipay/mobile/android/security/upgrade/R$style;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation


# static fields
.field public static final AppBaseTheme:I

.field public static final AppTheme:I

.field public static final text_20:I

.field public static final text_light_gray_20:I

.field public static final updateCommonDialogTheme:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 99
    const-string/jumbo v0, "style"

    const-string v1, "AppBaseTheme_com_alipay_mobile_android_security_upgrade"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$style;->AppBaseTheme:I

    .line 100
    const-string v1, "AppTheme_com_alipay_mobile_android_security_upgrade"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$style;->AppTheme:I

    .line 101
    const-string/jumbo v1, "text_20"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$style;->text_20:I

    .line 102
    const-string/jumbo v1, "text_light_gray_20"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$style;->text_light_gray_20:I

    .line 103
    const-string/jumbo v1, "updateCommonDialogTheme"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/android/security/upgrade/R$style;->updateCommonDialogTheme:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
