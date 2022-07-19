.class Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$14;
.super Ljava/lang/Object;
.source "LauncherApplicationWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->endPreloadActivity()V
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

    .line 1945
    iput-object p1, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$14;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1949
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/preload/PreInflateViewCache;->clearCache()V

    .line 1950
    iget-object v0, p0, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper$14;->this$0:Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;

    # getter for: Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->mResourcesManager:Lcom/alipay/mobile/quinox/resources/ResourcesManager;
    invoke-static {v0}, Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;->access$1000(Lcom/alipay/mobile/quinox/application/LauncherApplicationWrapper;)Lcom/alipay/mobile/quinox/resources/ResourcesManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/resources/ResourcesManager;->getHostResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/resources/BundleResources;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/resources/BundleResources;->clearPreloadedDrawables()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1953
    return-void

    .line 1951
    :catchall_0
    move-exception v0

    .line 1952
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1954
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method
