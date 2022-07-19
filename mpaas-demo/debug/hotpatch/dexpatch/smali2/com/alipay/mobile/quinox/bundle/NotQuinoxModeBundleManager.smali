.class public Lcom/alipay/mobile/quinox/bundle/NotQuinoxModeBundleManager;
.super Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;
.source "NotQuinoxModeBundleManager.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0
    .param p1, "context"    # Lcom/alipay/mobile/quinox/LauncherApplication;

    .line 11
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/bundle/BundleManagerImpl;-><init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ZLjava/util/Collection;Z)V
    .locals 0
    .param p1, "setup"    # Z
    .param p2, "bundles"    # Ljava/util/Collection;
    .param p3, "updateLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 26
    monitor-exit p0

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 16
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized b(ZLjava/util/Collection;Z)V
    .locals 0
    .param p1, "setup"    # Z
    .param p2, "bundles"    # Ljava/util/Collection;
    .param p3, "updateLocation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/alipay/mobile/quinox/bundle/Bundle;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 30
    monitor-exit p0

    return-void
.end method

.method public final r()Z
    .locals 1

    .line 21
    const/4 v0, 0x1

    return v0
.end method
