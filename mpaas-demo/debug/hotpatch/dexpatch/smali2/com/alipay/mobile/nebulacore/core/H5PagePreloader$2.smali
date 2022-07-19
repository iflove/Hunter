.class final Lcom/alipay/mobile/nebulacore/core/H5PagePreloader$2;
.super Ljava/lang/Object;
.source "H5PagePreloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 99
    const-string v0, "H5PagePreloader"

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;-><init>(Landroid/app/Activity;)V

    .line 100
    .local v1, "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->c()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->createPage(Landroid/app/Activity;Landroid/os/Bundle;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    move-result-object v2

    .line 104
    .local v2, "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    return-void

    .line 107
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;)Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 108
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;)Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;

    .line 109
    const-string v3, "preloadH5Page success"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .end local v1    # "pageFactory":Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;
    .end local v2    # "viewHolder":Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;
    return-void

    .line 110
    :catchall_0
    move-exception v1

    .line 111
    .local v1, "thr":Ljava/lang/Throwable;
    const-string v2, "h5page_preload_error"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/core/H5PagePreloader;->a(Ljava/lang/String;)V

    .line 112
    const-string v2, "preload H5Page error!"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .end local v1    # "thr":Ljava/lang/Throwable;
    return-void
.end method
