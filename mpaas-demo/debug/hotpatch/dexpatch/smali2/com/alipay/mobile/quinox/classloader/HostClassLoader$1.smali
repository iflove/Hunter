.class final Lcom/alipay/mobile/quinox/classloader/HostClassLoader$1;
.super Ljava/lang/Object;
.source "HostClassLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    .line 428
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$1;->a:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 433
    const-string v0, "HostClassLoader"

    const-string v1, "BundleManager.verify() begin"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/HostClassLoader$1;->a:Lcom/alipay/mobile/quinox/classloader/HostClassLoader;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/HostClassLoader;->a(Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)Lcom/alipay/mobile/quinox/bundle/BundleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/BundleManager;->i()V

    .line 435
    const-string v1, "BundleManager.verify() end"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method
