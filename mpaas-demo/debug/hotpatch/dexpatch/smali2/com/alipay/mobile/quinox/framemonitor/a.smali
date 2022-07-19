.class public final Lcom/alipay/mobile/quinox/framemonitor/a;
.super Lcom/alipay/mobile/quinox/framemonitor/i;
.source "ANRTimeOuter.java"


# instance fields
.field a:J

.field private c:Lcom/alipay/mobile/quinox/framemonitor/f;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/framemonitor/f;)V
    .locals 2
    .param p1, "jerkMonitor"    # Lcom/alipay/mobile/quinox/framemonitor/f;

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/quinox/framemonitor/i;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/quinox/framemonitor/a;->a:J

    .line 19
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/a;->c:Lcom/alipay/mobile/quinox/framemonitor/f;

    .line 20
    const-string v0, "JerkMonitor"

    const-string v1, "ANR timeout threshold: 1000"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method final a()V
    .locals 8

    .line 25
    const-string v0, "JerkMonitor"

    const-string v1, "timeout"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/a;->c:Lcom/alipay/mobile/quinox/framemonitor/f;

    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 28
    .local v1, "start":J
    iget-object v3, p0, Lcom/alipay/mobile/quinox/framemonitor/a;->c:Lcom/alipay/mobile/quinox/framemonitor/f;

    iget-wide v4, p0, Lcom/alipay/mobile/quinox/framemonitor/a;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alipay/mobile/quinox/framemonitor/f;->a(JJ)V

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 30
    .local v3, "end":J
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "notifyBlockEvent cost time: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v6, v3, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .end local v1    # "start":J
    .end local v3    # "end":J
    :cond_0
    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/alipay/mobile/quinox/framemonitor/i;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 11
    invoke-super {p0}, Lcom/alipay/mobile/quinox/framemonitor/i;->c()V

    return-void
.end method
