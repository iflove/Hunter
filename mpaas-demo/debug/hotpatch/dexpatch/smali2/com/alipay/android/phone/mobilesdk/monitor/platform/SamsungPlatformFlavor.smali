.class public Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;
.super Ljava/lang/Object;
.source "SamsungPlatformFlavor.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformFlavor$IPlatformFlavor;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/AppOpsManager;

.field private c:Ljava/lang/reflect/Method;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->d:I

    .line 22
    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->e:I

    .line 27
    :try_start_0
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->a:Landroid/content/Context;

    .line 28
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->b:Landroid/app/AppOpsManager;

    .line 29
    const-class v0, Landroid/app/AppOpsManager;

    const-string v1, "checkOp"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->c:Ljava/lang/reflect/Method;

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 31
    const-class v0, Landroid/app/AppOpsManager;

    const-string v1, "MODE_ALLOWED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 32
    .local v2, "tempField":Ljava/lang/reflect/Field;
    move-object v2, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->d:I

    .line 34
    const-class v0, Landroid/app/AppOpsManager;

    const-string v3, "MODE_ASK"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 35
    move-object v2, v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 36
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v2    # "tempField":Ljava/lang/reflect/Field;
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SamsungPlatformFlavor"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .end local v0    # "tr":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 9
    .param p1, "opCodeName"    # Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->d()Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/PlatformChecker;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 51
    return v1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->c:Ljava/lang/reflect/Method;

    const-string v2, "SamsungPlatformFlavor"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->b:Landroid/app/AppOpsManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    :try_start_0
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    move-object v4, v3

    .line 60
    .local v4, "opField":Ljava/lang/reflect/Field;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 61
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 62
    .local v0, "opCode":I
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->c:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->b:Landroid/app/AppOpsManager;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    aput-object v5, v7, v8

    .line 62
    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v5, v1

    .line 64
    .local v5, "checkResult":I
    move v5, v3

    iget v6, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->d:I

    if-eq v3, v6, :cond_3

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v2, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    return v8

    .line 66
    :cond_3
    :goto_0
    return v1

    .line 70
    .end local v0    # "opCode":I
    .end local v4    # "opField":Ljava/lang/reflect/Field;
    .end local v5    # "checkResult":I
    :catchall_0
    move-exception v0

    .line 71
    .local v0, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "invoke checkPermission failed."

    invoke-interface {v3, v2, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return v1

    .line 55
    .end local v0    # "tr":Ljava/lang/Throwable;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v3, "invoke checkPermission but env is broken."

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 45
    const-string v0, "OP_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/platform/SamsungPlatformFlavor;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
