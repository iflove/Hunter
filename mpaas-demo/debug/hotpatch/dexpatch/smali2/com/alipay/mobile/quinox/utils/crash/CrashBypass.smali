.class public Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;
.super Ljava/lang/Object;
.source "CrashBypass.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CrashBypass"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bypassCrashes(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;-><init>()V

    const/4 v1, 0x0

    .line 23
    .local v1, "crashBypass":Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;
    invoke-direct {v0, p0}, Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;->bypassGetSystemServiceCrash23(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .end local v1    # "crashBypass":Lcom/alipay/mobile/quinox/utils/crash/CrashBypass;
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    .local v0, "tr":Ljava/lang/Throwable;
    const-string v1, "CrashBypass"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private bypassGetSystemServiceCrash23(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 35
    .local v0, "start":J
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 37
    .local v2, "end":J
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bypassGetSystemServiceCrash23 time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CrashBypass"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .end local v0    # "start":J
    .end local v2    # "end":J
    :cond_0
    return-void
.end method
