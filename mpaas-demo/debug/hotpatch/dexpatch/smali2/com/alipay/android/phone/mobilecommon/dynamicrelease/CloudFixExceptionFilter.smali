.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/CloudFixExceptionFilter;
.super Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;
.source "ExceptionFilterValve.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .line 29
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->throwableToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "log":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->getInstance()Lcom/alipay/euler/andfix/AlipayAndfixManager;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Lcom/alipay/euler/andfix/AlipayAndfixManager;->filter(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
