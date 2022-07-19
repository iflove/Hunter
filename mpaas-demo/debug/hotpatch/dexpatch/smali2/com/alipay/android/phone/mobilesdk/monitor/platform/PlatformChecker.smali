.class public final Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;
.super Ljava/lang/Object;
.source "PlatformChecker.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->b:I

    .line 26
    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->c:I

    .line 29
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->e()V

    .line 30
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->f()V

    .line 31
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v2, v0

    .line 61
    .local v2, "clazz":Ljava/lang/Class;
    move-object v2, v1

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 62
    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v7

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 63
    .end local v2    # "clazz":Ljava/lang/Class;
    :catchall_0
    move-exception v1

    .line 64
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "PlatformChecker"

    const-string v4, "can\'t get value from system props"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-object v0
.end method

.method public static c()Z
    .locals 2

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static d()Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;
    .locals 1

    .line 82
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->a:Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;

    return-object v0
.end method

.method private e()V
    .locals 4

    .line 35
    :try_start_0
    const-string/jumbo v0, "ro.miui.ui.version.code"

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "miuiCode":Ljava/lang/String;
    const-string/jumbo v1, "ro.miui.ui.version.name"

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "miuiName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    const/4 v2, 0x1

    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .end local v0    # "miuiCode":Ljava/lang/String;
    .end local v1    # "miuiName":Ljava/lang/String;
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "PlatformChecker"

    const-string v3, "checkOS"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private f()V
    .locals 4

    .line 47
    :try_start_0
    const-string/jumbo v0, "xiaomi"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->c:I

    return-void

    .line 49
    :cond_0
    const-string/jumbo v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "PlatformChecker"

    const-string v3, "checkManufacturer"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->c:I

    return v0
.end method
