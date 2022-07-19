.class Lcom/alipay/mobile/nebulax/engine/cube/a$2;
.super Ljava/lang/Object;
.source "CubeEngineProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/a;->setup(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alipay/mobile/nebulax/engine/cube/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 125
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5WebViewPathProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5WebViewPathProvider;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v2}, Lcom/alipay/mobile/nebulax/engine/cube/a;->b(Lcom/alipay/mobile/nebulax/engine/cube/a;)Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5WebViewPathProvider;->getWebViewPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/lib/libwebviewuc.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;Ljava/lang/String;Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;)V

    goto :goto_0

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ucPath is not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NebulaXEngine.CubeEngineProxy"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->a:Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;

    invoke-interface {v1}, Lcom/alipay/mobile/nebulax/engine/api/model/EngineSetupCallback;->showLoading()V

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    new-instance v2, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v3}, Lcom/alipay/mobile/nebulax/engine/cube/a;->c(Lcom/alipay/mobile/nebulax/engine/cube/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->b:Landroid/os/Bundle;

    new-instance v5, Lcom/alipay/mobile/nebulax/engine/cube/a$2$1;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/nebulax/engine/cube/a$2$1;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a$2;Lcom/alipay/mobile/nebula/provider/H5WebViewPathProvider;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup$a;)V

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/engine/cube/a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a;Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;)Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a$2;->c:Lcom/alipay/mobile/nebulax/engine/cube/a;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/engine/cube/a;->e(Lcom/alipay/mobile/nebulax/engine/cube/a;)Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulax/engine/legacy/uc/UCSetup;->a()V

    .line 146
    :goto_0
    return-void
.end method
