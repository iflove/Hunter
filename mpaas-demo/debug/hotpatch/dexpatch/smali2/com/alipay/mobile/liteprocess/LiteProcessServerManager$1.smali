.class Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startAppAsync(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 213
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->c(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v0

    .line 217
    .local v0, "liteProcess":Lcom/alipay/mobile/liteprocess/LiteProcess;
    sget-boolean v1, Lcom/alipay/mobile/liteprocess/Config;->n:Z

    const-string v2, "LiteProcess"

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->p:Ljava/lang/String;

    .line 219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->b:Landroid/os/Bundle;

    .line 220
    const-string v4, "APP_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "App Type change and stop first!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 224
    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/mobile/liteprocess/LiteProcess;->isNebulaX:Z

    if-eqz v1, :cond_1

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "Start not nebulaX app, kill origin process!"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    invoke-static {v1, v0}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Lcom/alipay/mobile/liteprocess/LiteProcess;)V

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->e:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->b:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$1;->d:Landroid/os/Bundle;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 229
    return-void
.end method
