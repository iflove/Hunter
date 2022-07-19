.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$2;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;

    .line 383
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$2;->this$2:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$2;->this$2:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;->this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$200(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "stopHookDvm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v2, [Ljava/lang/Object;

    .line 390
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v5

    .line 388
    invoke-static {v0, v1, v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StartupSafeguard"

    const-string v2, "stopHookDvm error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 395
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
