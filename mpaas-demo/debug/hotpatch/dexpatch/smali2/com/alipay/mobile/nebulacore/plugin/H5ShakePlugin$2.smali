.class Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;
.super Ljava/lang/Object;
.source "H5ShakePlugin.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->e()Landroid/hardware/SensorEventListener;
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

    .line 131
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 163
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9
    .param p1, "intent"    # Landroid/hardware/SensorEvent;

    .line 134
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    move-object v2, v1

    .line 135
    .local v2, "values":[F
    move-object v2, v0

    const/4 v3, 0x0

    aget v0, v0, v3

    .line 136
    .local v0, "x":F
    const/4 v4, 0x1

    aget v5, v2, v4

    .line 137
    .local v5, "y":F
    const/4 v6, 0x2

    aget v6, v2, v6

    .line 138
    .local v6, "z":F
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onSensorChanged x "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " y "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " z "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "H5ShakePlugin"

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41400000    # 12.0f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 141
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 142
    :cond_1
    if-nez v3, :cond_2

    .line 143
    return-void

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->h(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)V

    .line 148
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 149
    const-string v3, "h5_use_watchShake"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "value":Ljava/lang/String;
    const-string v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 151
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->i(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 156
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin$2;->a:Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;->j(Lcom/alipay/mobile/nebulacore/plugin/H5ShakePlugin;)Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 158
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method
