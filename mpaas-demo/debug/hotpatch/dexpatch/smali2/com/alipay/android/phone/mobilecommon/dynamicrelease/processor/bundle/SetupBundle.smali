.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/SetupBundle;
.super Ljava/lang/Object;
.source "SetupBundle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupBundle(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/SetupBundle$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/SetupBundle$1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V

    .line 44
    return-void
.end method
