.class public Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "TinyAppJSApiInterceptPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;
    }
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 67
    const-string v0, "getLocation"

    const-string v1, "getCurrentLocation"

    const-string/jumbo v2, "startAudioRecord"

    const-string/jumbo v3, "stopAudioRecord"

    const-string v4, "cancelAudioRecord"

    const-string/jumbo v5, "recordStart"

    const-string/jumbo v6, "recordStop"

    const-string/jumbo v7, "recordError"

    const-string/jumbo v8, "recordPause"

    const-string/jumbo v9, "recordResume"

    const-string v10, "connectBLEDevice"

    const-string v11, "disconnectBLEDevice"

    const-string/jumbo v12, "startBluetoothDevicesDiscovery"

    const-string/jumbo v13, "stopBluetoothDevicesDiscovery"

    const-string v14, "closeBluetoothAdapter"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 85
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_3

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "page":Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getTarget()Lcom/alipay/mobile/h5container/api/H5CoreNode;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 91
    .local v3, "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    move-object v3, v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_0

    .line 92
    move-object v1, v3

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 95
    .end local p0    # "this":Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;
    :cond_0
    if-nez v0, :cond_1

    .line 96
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_1
    const-string v1, "MINI-PROGRAM-WEB-VIEW-PAGE-TAG"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v2, "pageObj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v1, v1, Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_2

    .line 102
    move-object v1, v2

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    move-object v0, v1

    .line 105
    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local v0    # "page":Lcom/alipay/mobile/h5container/api/H5Page;
    .end local v2    # "pageObj":Ljava/lang/Object;
    .end local v3    # "target":Lcom/alipay/mobile/h5container/api/H5CoreNode;
    :cond_3
    monitor-exit p0

    return-void

    .line 87
    .end local p1    # "event":Lcom/alipay/mobile/h5container/api/H5Event;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "action"    # Ljava/lang/String;

    .line 185
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    return-void

    .line 189
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onJSApiInvokeMessage ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinyAppJSApiInterceptPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "cancelAudioRecord"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "startBluetoothDevicesDiscovery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "stopBluetoothDevicesDiscovery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    const-string v1, "disconnectBLEDevice"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "stopAudioRecord"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "getLocation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_6
    const-string v1, "getCurrentLocation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v1, "connectBLEDevice"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_8
    const-string/jumbo v1, "startAudioRecord"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_9
    const-string v1, "closeBluetoothAdapter"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    :goto_0
    const-string/jumbo v1, "record"

    const-string v2, "discoverDevice"

    const-string v3, "connectDevice"

    const-string v4, "bluetooth"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 235
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v4, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 230
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v4, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 226
    :pswitch_2
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void

    .line 222
    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v4, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void

    .line 218
    :pswitch_4
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v4, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 214
    :pswitch_5
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->removeAction(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 216
    return-void

    .line 205
    :pswitch_6
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->sendEmptyMessage(I)Z

    .line 211
    return-void

    .line 196
    :pswitch_7
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "location"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->sendEmptyMessage(I)Z

    .line 203
    return-void

    .line 241
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e481527 -> :sswitch_9
        -0x30f411fb -> :sswitch_8
        -0x29b01e39 -> :sswitch_7
        -0x23fcf5e8 -> :sswitch_6
        -0x12d622d5 -> :sswitch_5
        -0x62fd99b -> :sswitch_4
        0x9028a55 -> :sswitch_3
        0x13440a3f -> :sswitch_2
        0x5df9f9df -> :sswitch_1
        0x72ddc4ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 244
    invoke-static {p2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    goto/16 :goto_2

    .line 248
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onJSApiCompleteMessage ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinyAppJSApiInterceptPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "recordResume"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "startBluetoothDevicesDiscovery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "recordPause"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "recordError"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "recordStop"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "getLocation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v1, "getCurrentLocation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const-string v1, "connectBLEDevice"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :goto_0
    const-string v1, "bluetooth"

    const-string/jumbo v2, "record"

    const-string v3, "error"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 280
    :pswitch_0
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v2, "location"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->c:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->removeMessages(I)V

    goto :goto_1

    .line 273
    :pswitch_1
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v3, "connectDevice"

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 267
    :pswitch_2
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string v3, "discoverDevice"

    invoke-virtual {v0, v2, v1, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 263
    return-void

    .line 254
    :pswitch_4
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 256
    return-void

    .line 287
    :cond_2
    :goto_1
    return-void

    .line 245
    :cond_3
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x29b01e39 -> :sswitch_7
        -0x23fcf5e8 -> :sswitch_6
        -0x12d622d5 -> :sswitch_5
        0x2bcd57f3 -> :sswitch_4
        0x4d178037 -> :sswitch_3
        0x4daad425 -> :sswitch_2
        0x5df9f9df -> :sswitch_1
        0x6b50dfde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a()Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->d()Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .line 299
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 300
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    return v2

    .line 299
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic b()Z
    .locals 1

    .line 31
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->e()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onH5PageClosed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinyAppJSApiInterceptPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->destroy(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 168
    return-void
.end method

.method private static d()Z
    .locals 6

    .line 171
    const/4 v0, 0x0

    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 172
    move-object v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 173
    return v2

    .line 175
    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 176
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    .line 177
    .local v4, "permission":Ljava/lang/String;
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    return v2

    .line 176
    .end local v4    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private static e()Z
    .locals 3

    .line 290
    const/4 v0, 0x0

    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 291
    move-object v0, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 292
    return v2

    .line 294
    :cond_0
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v2
.end method


# virtual methods
.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 119
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    return v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "action":Ljava/lang/String;
    const-string v2, "h5PageClosed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->c()V

    .line 127
    return v0

    .line 130
    :cond_1
    const/4 v2, 0x0

    .line 131
    .local v2, "startParams":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_2

    .line 132
    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 134
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    .line 138
    :cond_3
    :goto_0
    if-eqz v2, :cond_c

    const-string v3, "isTinyApp"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_4

    .line 142
    :cond_4
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 143
    .local v5, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v5, v3

    const-string v6, "func"

    invoke-static {v3, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "func":Ljava/lang/String;
    const-string/jumbo v6, "param"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 146
    .local v4, "funcParam":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    if-nez v4, :cond_5

    goto :goto_3

    .line 150
    :cond_5
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x61d5c578

    const/4 v9, 0x1

    if-eq v7, v8, :cond_8

    const v8, 0x72d7e349

    if-eq v7, v8, :cond_7

    :cond_6
    goto :goto_1

    :cond_7
    const-string v7, "jsapiOnComplete"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    :cond_8
    const-string v7, "jsapiOnInvoke"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v6, 0x1

    :goto_1
    const-string v7, "]"

    const-string v8, "TinyAppJSApiInterceptPlugin"

    if-eqz v6, :cond_a

    if-eq v6, v9, :cond_9

    goto :goto_2

    .line 156
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onJSApiInvokeMessage ["

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onJSApiCompleteMessage ["

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 154
    nop

    .line 160
    :goto_2
    return v0

    .line 147
    :cond_b
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v0

    return v0

    .line 139
    .end local v3    # "func":Ljava/lang/String;
    .end local v4    # "funcParam":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_c
    :goto_4
    return v0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 111
    const-string v0, "jsapiOnComplete"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v0, "jsapiOnInvoke"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v0, "h5PageClosed"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 114
    invoke-super {p0, p1}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V

    .line 115
    return-void
.end method
