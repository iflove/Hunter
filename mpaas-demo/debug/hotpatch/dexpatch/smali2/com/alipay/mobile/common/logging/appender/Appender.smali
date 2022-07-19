.class public abstract Lcom/alipay/mobile/common/logging/appender/Appender;
.super Ljava/lang/Object;
.source "Appender.java"


# instance fields
.field protected a:Lcom/alipay/mobile/common/logging/api/LogContext;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/logging/api/LogContext;Ljava/lang/String;)V
    .locals 1
    .param p1, "logContext"    # Lcom/alipay/mobile/common/logging/api/LogContext;
    .param p2, "logCategory"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->a:Lcom/alipay/mobile/common/logging/api/LogContext;

    .line 56
    iput-object p2, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->b:Ljava/lang/String;

    .line 57
    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->c:Landroid/content/Context;

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getProcessTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->d:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
.end method

.method protected abstract a(Z)V
.end method

.method protected abstract a(Ljava/lang/String;Z)Z
.end method

.method protected abstract a([BI)Z
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/appender/Appender;->b:Ljava/lang/String;

    return-object v0
.end method
