.class public Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;
.super Lcom/alipay/mobile/framework/service/StepDetectService;
.source "StepDetectServiceImpl.java"


# instance fields
.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

.field private sensor:Landroid/hardware/Sensor;

.field private sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/StepDetectService;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    return-void
.end method


# virtual methods
.method public getSteps(Landroid/content/Context;)J
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_stepsCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "stepsCount"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 35
    return-wide v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Bundle;

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    .line 74
    :cond_0
    return-void
.end method

.method public resetSteps(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_stepsCount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 22
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 23
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const-string/jumbo v2, "stepsCount"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 24
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void
.end method

.method public stepDetectStart(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensor:Landroid/hardware/Sensor;

    .line 47
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    const v1, 0x10000001

    const-string v2, "Jackie"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 50
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 51
    new-instance v0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 54
    :cond_0
    return-void
.end method

.method public stepDetectStop(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/stepdetect/impl/StepDetectServiceImpl;->sdsi:Lcom/alipay/mobile/base/stepdetect/impl/StepDetector;

    .line 64
    :cond_0
    return-void
.end method
