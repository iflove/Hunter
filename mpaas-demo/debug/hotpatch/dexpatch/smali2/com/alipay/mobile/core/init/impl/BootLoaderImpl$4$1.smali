.class Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4$1;
.super Ljava/lang/Thread;
.source "BootLoaderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;->onCallback(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;
    .param p2, "x0"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4$1;->this$1:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4$1;->this$1:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;

    iget-object v0, v0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$4;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    # getter for: Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->b:Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;
    invoke-static {v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->access$300(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundleServices()V

    .line 309
    return-void
.end method
