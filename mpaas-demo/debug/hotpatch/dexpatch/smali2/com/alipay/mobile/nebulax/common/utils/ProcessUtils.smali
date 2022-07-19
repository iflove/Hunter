.class public Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# static fields
.field public static final ACTIVITY_THREAD:Ljava/lang/String; = "android.app.ActivityThread"

.field public static final CURRENT_ACTIVITY_THREAD:Ljava/lang/String; = "currentActivityThread"

.field public static final GET_PROCESS_NAME:Ljava/lang/String; = "getProcessName"

.field private static currentProcessName:Ljava/lang/String;

.field private static isLiteProcess:Ljava/lang/Boolean;

.field private static isMainProcess:Ljava/lang/Boolean;

.field public static usingNebulaX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->usingNebulaX:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .line 24
    const-class v0, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0}, Lcom/alipay/mobile/nebulax/common/service/NXEnvironmentService;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 4

    .line 39
    const-string v0, "NebulaXKernel"

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->currentProcessName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->currentProcessName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :cond_0
    :try_start_1
    const-string v1, "android.app.ActivityThread"

    const-string v2, "currentActivityThread"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/ReflectUtils;->invokeMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 45
    const-string v2, "getProcessName"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/ReflectUtils;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->currentProcessName:Ljava/lang/String;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProcessName from ActivityThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->currentProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    :try_start_2
    const-string v2, "getProcessName error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->currentProcessName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 52
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 58
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 59
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 60
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_2

    .line 61
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object v2, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->currentProcessName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 63
    :cond_2
    goto :goto_1

    .line 67
    :cond_3
    goto :goto_2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string v1, "getProcessName error"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_2
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->currentProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public static isMainProcess()Z
    .locals 2

    .line 80
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isMainProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 81
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 83
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isMainProcess:Ljava/lang/Boolean;

    .line 86
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isMainProcess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isTinyProcess()Z
    .locals 2

    .line 93
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isLiteProcess:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 94
    invoke-static {}, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isLiteProcess:Ljava/lang/Boolean;

    .line 98
    :cond_1
    sget-object v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->isLiteProcess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isUsingNebulaX()Z
    .locals 1

    .line 73
    sget-boolean v0, Lcom/alipay/mobile/nebulax/common/utils/ProcessUtils;->usingNebulaX:Z

    return v0
.end method
