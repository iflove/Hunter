.class final Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1$1;
.super Ljava/lang/Object;
.source "TinyAppInitService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1$1;->a:Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppMixActionServiceImpl;->getInstance()Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->setMixActionService(Lcom/alipay/mobile/tinyappcommon/api/TinyAppMixActionService;)V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyappstartup/TinyAppStartupInterceptorImpl;->INSTANCE:Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->setTinyAppStartupInterceptor(Lcom/alipay/mobile/tinyappcommon/api/TinyAppStartupInterceptor;)V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;->INSTANCE:Lcom/alipay/mobile/nebulaappproxy/ipc/TinyAppLiteProcessServiceImpl;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->setLiteProcessService(Lcom/alipay/mobile/tinyappcommon/api/TinyAppLiteProcessService;)V

    .line 73
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->get()Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/edge/TinyAppEdgeRiskServiceImpl;->a:Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/tinyappcommon/api/TinyAppService;->setTinyAppEdgeRiskService(Lcom/alipay/mobile/tinyappcommon/api/TinyAppEdgeRiskService;)V

    .line 76
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessServiceImpl;->getInstance()Lcom/alipay/mobile/nebulaappproxy/ipc/IPCMainProcessService;

    .line 78
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinyappservice/TinyAppInitService;->c()V

    .line 81
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;->a()Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/storage/IPCSharedPreferenceStorage;->b()V

    .line 84
    :cond_0
    return-void
.end method
