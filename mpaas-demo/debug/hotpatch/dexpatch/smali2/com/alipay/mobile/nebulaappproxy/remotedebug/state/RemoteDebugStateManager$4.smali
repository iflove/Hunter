.class final Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;
.super Ljava/lang/Object;
.source "RemoteDebugStateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->e()V
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

    .line 172
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->d(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Z

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->b(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    move-result-object v0

    const-string/jumbo v1, "\u8fde\u63a5\u4e2d\u65ad"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager$4;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;->c(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/RemoteDebugStateManager;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c()V

    .line 182
    return-void
.end method
