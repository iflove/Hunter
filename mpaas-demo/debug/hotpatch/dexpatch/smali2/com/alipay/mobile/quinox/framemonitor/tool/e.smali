.class public final Lcom/alipay/mobile/quinox/framemonitor/tool/e;
.super Ljava/lang/Throwable;
.source "StackTraceThrowable.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1, "detailedMessage"    # Ljava/lang/String;
    .param p2, "stackTraceElements"    # [Ljava/lang/StackTraceElement;

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/quinox/framemonitor/tool/e;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 8
    return-void
.end method
