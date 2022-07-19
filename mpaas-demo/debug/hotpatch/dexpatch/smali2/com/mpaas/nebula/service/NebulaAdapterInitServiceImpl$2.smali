.class Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$2;
.super Ljava/lang/Object;
.source "NebulaAdapterInitServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;->initProviders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;

    .line 77
    iput-object p1, p0, Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl$2;->this$0:Lcom/mpaas/nebula/service/NebulaAdapterInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rpcAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "nbscene"    # Ljava/lang/String;
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "authRpcCallback"    # Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;

    .line 80
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "NebulaAdapterInitServiceImpl"

    const-string v2, "we shall pass all apps for debugging"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-eqz p5, :cond_0

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p5, v1, v1, v0}, Lcom/alipay/mobile/nebula/provider/H5BugMeRpcAuthProvider$AuthRpcCallback;->onResponse(ZZ[Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method
