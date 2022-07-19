.class Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;
.super Ljava/lang/Object;
.source "H5ShakePlugin.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d()Landroid/hardware/SensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 122
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .param p1, "intent"    # Landroid/hardware/SensorEvent;

    .line 63
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-wide v6, v4

    .line 65
    .local v6, "currentUpdateTime":J
    move-wide v6, v2

    iget-object v8, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    .line 67
    .local v4, "timeInterval":J
    move-wide v4, v2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a()I

    move-result v8

    int-to-long v8, v8

    cmp-long v10, v2, v8

    if-gez v10, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v2, v6, v7}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;J)J

    .line 74
    iget-object v2, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 75
    .local v2, "x":F
    iget-object v3, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v3, v3, v8

    .line 76
    .local v3, "y":F
    iget-object v8, v1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    .line 79
    .local v8, "z":F
    iget-object v9, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v9}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F

    move-result v9

    sub-float v9, v2, v9

    .line 80
    .local v9, "deltaX":F
    iget-object v10, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v10}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F

    move-result v10

    sub-float v10, v3, v10

    .line 81
    .local v10, "deltaY":F
    iget-object v11, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v11}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->d(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)F

    move-result v11

    sub-float v11, v8, v11

    .line 84
    .local v11, "deltaZ":F
    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v12, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F

    .line 85
    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v12, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F

    .line 86
    iget-object v12, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v12, v8}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;F)F

    .line 88
    mul-float v12, v9, v9

    mul-float v13, v10, v10

    add-float/2addr v12, v13

    mul-float v13, v11, v11

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    long-to-double v14, v4

    div-double/2addr v12, v14

    const-wide v14, 0x40c3880000000000L    # 10000.0

    mul-double v12, v12, v14

    .line 89
    .local v12, "speed":D
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "onSensorChanged x "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " y "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " z "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "H5ShakePlugin"

    invoke-static {v15, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v1, "speed "

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->b()I

    move-result v1

    move v14, v2

    .end local v2    # "x":F
    .local v14, "x":F
    int-to-double v1, v1

    cmpg-double v16, v12, v1

    if-gez v16, :cond_1

    .line 93
    return-void

    .line 95
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "counts"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I

    move-result v1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->c()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 98
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->f(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I

    .line 99
    return-void

    .line 101
    :cond_2
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->g(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)I

    .line 103
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->h(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    .line 105
    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 106
    const-string v1, "h5_use_watchShake"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "value":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 108
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto :goto_0

    .line 110
    :cond_3
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v2

    const/4 v15, 0x0

    invoke-interface {v2, v15}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 114
    :goto_0
    iget-object v2, v0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->j(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 117
    .end local v1    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method
