.class final Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;
.super Ljava/lang/Object;
.source "RemoteDebugStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->setActionEventListener(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->setStateConnected()V

    .line 127
    return-void
.end method
