.class final Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;
.super Ljava/lang/Object;
.source "TinyAppInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;->a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;->a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->a(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;->get()Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppHandler;

    move-result-object v0

    const-string v1, "TINY_APP_BIZ"

    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/ipc/IpcMsgClient;->registerRspBizHandler(Ljava/lang/String;Landroid/os/Handler;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;->a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->b(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;)Z

    .line 67
    :cond_1
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
