.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;
.super Ljava/lang/Object;
.source "MemoryCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TRACEDEBUG_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;-><init>()V

    return-void
.end method

.method private static a(ILandroid/content/Context;)I
    .locals 5
    .param p0, "pid"    # I
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 62
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 63
    .local v1, "myMempid":[I
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    const/4 v4, 0x0

    .line 64
    .local v4, "memoryInfo":[Landroid/os/Debug$MemoryInfo;
    move-object v4, v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    .line 65
    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v2

    .line 66
    return v2
.end method

.method public static a()Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;
    .locals 1

    .line 29
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector$a;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;

    return-object v0
.end method

.method private static c()I
    .locals 4

    .line 44
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 45
    .local v0, "context":Landroid/app/Application;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;->a(ILandroid/content/Context;)I

    move-result v1

    div-int/lit16 v1, v1, 0x400
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 46
    .end local v0    # "context":Landroid/app/Application;
    :catchall_0
    move-exception v0

    .line 47
    .local v0, "tr":Ljava/lang/Throwable;
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;->c()I

    move-result v0

    const/4 v1, 0x0

    .line 35
    .local v1, "memory":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 36
    .end local v1    # "memory":I
    :catchall_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const-string v1, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object v1

    .line 33
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/MemoryCollector;
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
