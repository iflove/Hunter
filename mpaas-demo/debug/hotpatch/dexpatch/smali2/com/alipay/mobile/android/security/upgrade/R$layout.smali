.class public final Lcom/alipay/mobile/android/security/upgrade/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/android/security/upgrade/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static final update_common_dialog:I

.field public static final update_retry_dialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const-string v0, "layout"

    const-string/jumbo v1, "update_common_dialog"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/alipay/mobile/android/security/upgrade/R$layout;->update_common_dialog:I

    .line 64
    const-string/jumbo v1, "update_retry_dialog"

    invoke-static {v0, v1}, Lcom/mpaas/project/aar/convert/converter/FinalR;->invokeRInnerClassIntWithOutException(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/android/security/upgrade/R$layout;->update_retry_dialog:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
