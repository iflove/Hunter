.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/ExceptionFilterValve;
.super Ljava/lang/Object;
.source "ExceptionFilterValve.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 18
    const-string v0, "DynamicRelease"

    const-string v1, "Register CloudFix Exception Filter."

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 22
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/CloudFixExceptionFilter;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/CloudFixExceptionFilter;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerExceptionHandlerAgent(Lcom/alipay/mobile/framework/LauncherApplicationAgent$StandardExceptionHandlerAgent;)V

    .line 23
    return-void
.end method
