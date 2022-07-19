.class public Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5ShakePlugin.java"


# static fields
.field private static e:I

.field private static i:I

.field private static k:I


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private b:Z

.field private c:Landroid/hardware/SensorEventListener;

.field private d:J

.field private f:F

.field private g:F

.field private h:F

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x64

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e:I

    .line 46
    const/16 v0, 0x578

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i:I

    .line 52
    const/4 v0, 0x4

    sput v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->k:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->j:I

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # F

    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->f:F

    return p1
.end method

.method static synthetic a()I
    .locals 1

    .line 25
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)J
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    iget-wide v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;J)J
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # J

    .line 25
    iput-wide p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->f:F

    return v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # F

    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->g:F

    return p1
.end method

.method static synthetic b()I
    .locals 1

    .line 25
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->g:F

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;
    .param p1, "x1"    # F

    .line 25
    iput p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->h:F

    return p1
.end method

.method static synthetic c()I
    .locals 1

    .line 25
    sget v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->k:I

    return v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->h:F

    return v0
.end method

.method private d()Landroid/hardware/SensorEventListener;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->j:I

    return v0
.end method

.method private e()Landroid/hardware/SensorEventListener;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->j:I

    return v0
.end method

.method private static f()V
    .locals 4

    .line 205
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 206
    nop

    .line 207
    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x0

    .line 208
    .local v1, "vibrator":Landroid/os/Vibrator;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 209
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 211
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->j:I

    return v0
.end method

.method private g()V
    .locals 8

    .line 214
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    if-eqz v0, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 218
    nop

    .line 219
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 221
    .local v2, "sensorManager":Landroid/hardware/SensorManager;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 225
    .local v0, "sensor":Landroid/hardware/Sensor;
    const-string v4, "h5_use_watchShake_delayed"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 227
    .local v1, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    move-object v1, v4

    const-string v5, "h5_use_watchShake_is_delayed"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, "isDelayed":Ljava/lang/String;
    const-string v5, "h5_use_watchShake_is_adjust"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 230
    .local v5, "isAdjust":Ljava/lang/String;
    const-string v6, "no"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 231
    const-string v6, "yes"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 232
    const-string v6, "h5_use_watchShake_interval_time"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e:I

    .line 233
    const-string v6, "h5_use_watchShake_speed_threshold"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i:I

    .line 234
    const-string v6, "h5_use_watchShake_counts_limited"

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->k:I

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d()Landroid/hardware/SensorEventListener;

    move-result-object v6

    .local v6, "eventListener":Landroid/hardware/SensorEventListener;
    goto :goto_0

    .line 238
    .end local v6    # "eventListener":Landroid/hardware/SensorEventListener;
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e()Landroid/hardware/SensorEventListener;

    move-result-object v6

    .line 240
    .restart local v6    # "eventListener":Landroid/hardware/SensorEventListener;
    :goto_0
    const/4 v7, 0x3

    invoke-virtual {v2, v6, v0, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 241
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    .line 242
    return-void
.end method

.method private h()V
    .locals 4

    .line 245
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    if-nez v0, :cond_0

    .line 246
    return-void

    .line 248
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 249
    nop

    .line 250
    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 253
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const-string v1, "h5_use_watchShake_delayed"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "value":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d()Landroid/hardware/SensorEventListener;

    move-result-object v2

    .local v2, "eventListener":Landroid/hardware/SensorEventListener;
    goto :goto_0

    .line 257
    .end local v2    # "eventListener":Landroid/hardware/SensorEventListener;
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e()Landroid/hardware/SensorEventListener;

    move-result-object v2

    .line 259
    .restart local v2    # "eventListener":Landroid/hardware/SensorEventListener;
    :goto_0
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 260
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    .line 261
    return-void
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->h()V

    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 187
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    const-string v1, "vibrate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->f()V

    .line 190
    return v2

    .line 191
    :cond_0
    const-string v1, "watchShake"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->h()V

    .line 196
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->g()V

    .line 197
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 198
    return v2

    .line 201
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onInitialize(Lcom/alipay/mobile/h5container/api/H5CoreNode;)V
    .locals 1
    .param p1, "coreNode"    # Lcom/alipay/mobile/h5container/api/H5CoreNode;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b:Z

    .line 172
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 176
    const-string v0, "vibrate"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v0, "watchShake"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onRelease()V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->h()V

    .line 183
    return-void
.end method
