.class public Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;
.super Ljava/lang/Object;
.source "PowerUsageInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorWrapper"
.end annotation


# instance fields
.field a:Landroid/hardware/Sensor;

.field b:Ljava/lang/reflect/Method;

.field final synthetic c:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;Landroid/hardware/Sensor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
    .param p2, "paramSensor"    # Landroid/hardware/Sensor;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->c:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a:Landroid/hardware/Sensor;

    .line 86
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b()V

    .line 88
    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "localClass":Ljava/lang/Class;
    :try_start_0
    const-string v1, "getHandle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b:Ljava/lang/reflect/Method;

    .line 94
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    .local v1, "localNoSuchMethodException":Ljava/lang/Throwable;
    const-string v2, "android_tuner"

    const-string v3, "Failed to initialize uid methods"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v1    # "localNoSuchMethodException":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 106
    .local v1, "i":I
    return v0

    .line 107
    .end local v1    # "i":I
    :catchall_0
    move-exception v0

    .line 108
    .local v0, "localException":Ljava/lang/Throwable;
    const-string v1, "android_tuner"

    const-string v2, "Failed to getHandle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0    # "localException":Ljava/lang/Throwable;
    const/16 v0, -0x3e8

    return v0
.end method
