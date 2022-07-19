.class Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;
.super Ljava/lang/Object;
.source "UcServiceWorkerSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->onReceiveValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logServiceWorkerOnReceiveValue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->val$workerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UcService::UcServiceWorkerSetup"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->val$workerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->val$result:Ljava/lang/Object;

    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->logServiceWorkerOnReceiveValue(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->access$100(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;

    .line 86
    .local v0, "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    if-eqz v0, :cond_0

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;

    iget-object v2, v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->val$workerId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;->handlerOnWorkLog(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    .end local v0    # "h5TinyAppProvider":Lcom/alipay/mobile/nebula/provider/H5TinyAppProvider;
    :cond_0
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
