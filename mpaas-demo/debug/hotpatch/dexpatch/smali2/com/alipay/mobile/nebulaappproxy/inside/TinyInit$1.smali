.class Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;
.super Ljava/lang/Object;
.source "TinyInit.java"

# interfaces
.implements Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    .line 124
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public postInit()V
    .locals 3

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setupNebula()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->access$200(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setUpConfigService()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->access$300(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    return-void

    .line 141
    :catchall_0
    move-exception v0

    .line 142
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TinyInit"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    throw v0
.end method

.method public preInit()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setupLogging()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->access$000(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit$1;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->setupMonitor()V
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;->access$100(Lcom/alipay/mobile/nebulaappproxy/inside/TinyInit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "TinyInit"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
