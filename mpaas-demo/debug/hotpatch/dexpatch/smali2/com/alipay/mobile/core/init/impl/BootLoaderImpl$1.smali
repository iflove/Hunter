.class Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$1;
.super Ljava/lang/Object;
.source "BootLoaderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$1;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$1;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    # getter for: Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->access$000(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BootLoader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$1;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    # getter for: Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->c:Lcom/alipay/mobile/framework/service/ServicesLoader;
    invoke-static {v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->access$100(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)Lcom/alipay/mobile/framework/service/ServicesLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl$1;->this$0:Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;

    # getter for: Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->c:Lcom/alipay/mobile/framework/service/ServicesLoader;
    invoke-static {v0}, Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;->access$100(Lcom/alipay/mobile/core/init/impl/BootLoaderImpl;)Lcom/alipay/mobile/framework/service/ServicesLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ServicesLoader;->afterBootLoad()V

    .line 185
    :cond_0
    return-void
.end method
