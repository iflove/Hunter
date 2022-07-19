.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;
.super Ljava/lang/Object;
.source "TraceDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->onConnectClosed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugInfoPaneView;->setStateConnectFailed()V

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->b(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->a(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->c(Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;)Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/view/TraceDebugEndView;->c()V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager$3;->a:Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/TraceDataManager;->e()V

    .line 225
    return-void
.end method
