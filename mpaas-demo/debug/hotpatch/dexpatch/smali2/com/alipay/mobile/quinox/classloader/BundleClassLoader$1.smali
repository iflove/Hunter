.class final Lcom/alipay/mobile/quinox/classloader/BundleClassLoader$1;
.super Ljava/lang/Object;
.source "BundleClassLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;-><init>(Ljava/lang/ClassLoader;Lcom/alipay/mobile/quinox/bundle/Bundle;Lcom/alipay/mobile/quinox/bundle/BundleManager;Lcom/alipay/mobile/quinox/classloader/HostClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader$1;->b:Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 158
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/quinox/LauncherApplication;->getInstance()Lcom/alipay/mobile/quinox/LauncherApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/LauncherApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "BundleClassLoader"

    const-string v2, "start DexoptService failed."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
