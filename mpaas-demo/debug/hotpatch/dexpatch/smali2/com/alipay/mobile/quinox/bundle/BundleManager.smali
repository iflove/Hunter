.class public interface abstract Lcom/alipay/mobile/quinox/bundle/BundleManager;
.super Ljava/lang/Object;
.source "BundleManager.java"


# virtual methods
.method public abstract a(I)Lcom/alipay/mobile/quinox/bundle/Bundle;
.end method

.method public abstract a(Lcom/alipay/mobile/quinox/bundle/Bundle;)Lcom/alipay/mobile/quinox/bundle/Bundle;
.end method

.method public varargs abstract a(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)Ljava/io/InputStream;
.end method

.method public abstract a(Lcom/alipay/mobile/quinox/bundle/Bundle;Ljava/io/InputStream;Z)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(Ljava/util/List;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/ClassLoader;)V
.end method

.method public abstract a(ZLjava/util/Collection;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public varargs abstract a([Lcom/alipay/mobile/quinox/bundle/Bundle;)V
.end method

.method public abstract a()Z
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public abstract a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ)Z"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
.end method

.method public abstract b(I)Ljava/lang/String;
.end method

.method public abstract b()V
.end method

.method public abstract b(Lcom/alipay/mobile/quinox/bundle/BundleLoadObserver;)V
.end method

.method public abstract b(Lcom/alipay/mobile/quinox/bundle/Bundle;)Z
.end method

.method public abstract c(Lcom/alipay/mobile/quinox/bundle/Bundle;)Ljava/lang/String;
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract e()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract getBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;
.end method

.method public abstract getBundleLocation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()V
.end method

.method public abstract j()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract k()[Ljava/lang/String;
.end method

.method public abstract l()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract m()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract n()V
.end method

.method public abstract o()Ljava/lang/String;
.end method

.method public abstract p()Lcom/alipay/mobile/quinox/bundle/e;
.end method

.method public abstract q()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/alipay/mobile/quinox/bundle/d$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract r()Z
.end method

.method public abstract refreshUpdatedBundlesInLite(Landroid/os/Bundle;Ljava/util/Set;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract updateBundles(Ljava/util/List;Ljava/util/List;Ljava/util/Set;ZZLandroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation
.end method
