.class final Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;
.super Ljava/lang/Object;
.source "UcServiceWorkerSetup.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->initServiceWorkerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$workerId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;->val$workerId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 76
    if-eqz p1, :cond_0

    .line 77
    # invokes: Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->tryConsoleLogMessaging(Ljava/lang/Object;)Z
    invoke-static {p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup;->access$000(Ljava/lang/Object;)Z

    move-result v0

    .line 78
    .local v0, "flag":Z
    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/setup/UcServiceWorkerSetup$1;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    .end local v0    # "flag":Z
    :cond_0
    return-void
.end method
