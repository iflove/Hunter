.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$18;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->preloadResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    .line 3536
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$18;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 3540
    const-string v0, "LauncherApplication"

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 3541
    .local v1, "t1":J
    const/16 v3, -0x14

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3542
    iget-object v3, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$18;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    invoke-static {v3}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1000(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getHostResources()Landroid/content/res/Resources;

    .line 3543
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "preload resource finished, cost:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3546
    .end local v1    # "t1":J
    return-void

    .line 3544
    :catchall_0
    move-exception v1

    .line 3545
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "preload resource failed."

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3547
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method
