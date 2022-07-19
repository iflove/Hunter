.class final Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$2;
.super Ljava/lang/Object;
.source "RemoteDebugInfoPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->access$000(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->e:Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;->access$000(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugInfoPanelView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;->a()V

    .line 107
    :cond_0
    return-void
.end method
