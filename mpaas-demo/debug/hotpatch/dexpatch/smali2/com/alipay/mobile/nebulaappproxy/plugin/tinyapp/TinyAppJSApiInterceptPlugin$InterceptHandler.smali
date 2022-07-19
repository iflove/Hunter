.class Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;
.super Landroid/os/Handler;
.source "TinyAppJSApiInterceptPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InterceptHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 309
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;

    .line 310
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 311
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    const-string v3, "location"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 331
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    const-string/jumbo v2, "record"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    goto :goto_0

    .line 335
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->removeMessages(I)V

    .line 323
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOn(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 325
    const/16 v0, 0x3e9

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 327
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 329
    goto :goto_0

    .line 317
    :pswitch_2
    invoke-static {}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->getInstance()Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin$InterceptHandler;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;

    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/TinyAppJSApiInterceptPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/nebula/tiny/menu/TinyAppActionStateManager;->setActionOff(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)V

    .line 319
    nop

    .line 339
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 340
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
