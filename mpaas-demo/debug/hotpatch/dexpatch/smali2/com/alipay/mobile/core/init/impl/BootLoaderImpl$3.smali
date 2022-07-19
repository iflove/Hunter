.class Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$3;
.super Ljava/lang/Thread;
.source "BootLoaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;
    .param p2, "x0"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$3;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 210
    const/16 v0, -0x12

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 213
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/DescriptionManager;->preload()V

    .line 216
    invoke-static {}, Lcom/alipay/mobile/core/init/impl/BundleInfoHelper;->getBundleNames()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    .line 217
    .local v1, "bundleNames":Ljava/util/Collection;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 218
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    .local v2, "bundleName":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/DescriptionManager;->getInstance()Lcom/alipay/mobile/framework/DescriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/framework/DescriptionManager;->isLazyBundle(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    iget-object v3, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$3;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    # invokes: Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->access$200(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;Ljava/lang/String;)V

    .line 223
    .end local v2    # "bundleName":Ljava/lang/String;
    goto :goto_0

    .line 225
    :cond_1
    return-void
.end method
