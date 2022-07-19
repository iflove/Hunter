.class public Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;
.super Ljava/lang/Object;
.source "PlatformFlavor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$a;,
        Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 26
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;->a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;->a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;

    if-nez v1, :cond_0

    .line 29
    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;->b(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;->a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;

    .line 31
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor;->a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 38
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$a;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$a;-><init>(B)V

    return-object v1

    .line 40
    :cond_0
    nop

    .line 41
    const-string/jumbo v1, "monitor_IPlatformFlavor_enable"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/alipay/tianyan/mobilesdk/TianyanLoggingStatus;->getConfigValueByKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "cf":Ljava/lang/String;
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    new-instance v2, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$a;

    invoke-direct {v2, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$a;-><init>(B)V

    return-object v2

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 48
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->d()Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->a()I

    move-result v2

    .line 49
    .local v2, "os":I
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->d()Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->b()I

    move-result v3

    .line 50
    .local v3, "manufacturer":I
    const/4 v4, 0x1

    if-ne v4, v2, :cond_2

    if-ne v4, v3, :cond_2

    .line 52
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->d()Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->c()Z

    move-result v4

    if-nez v4, :cond_2

    .line 53
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/XiaomiPlatformFlavor;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/XiaomiPlatformFlavor;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 55
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v3, :cond_3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ne v4, v5, :cond_3

    .line 57
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 59
    :cond_3
    new-instance v4, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$a;

    invoke-direct {v4, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$a;-><init>(B)V

    return-object v4
.end method
