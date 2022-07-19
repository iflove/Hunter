.class final Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;
.super Ljava/lang/Object;
.source "LiteProcessClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Landroid/content/Intent;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->c:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->e:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 393
    invoke-static {}, Lcom/alipay/mobile/liteprocess/Util;->getMicroAppContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->c:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->d:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/fragment/app/FragmentActivity;)V

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->c:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->recordAppStart(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LiteProcessClientManager end startApp sourceAppId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " params:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->c:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " sceneParams:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->d:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager$2;->e:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LiteProcess"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method
