.class final Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$1;
.super Ljava/lang/Object;
.source "RemoteDebugStateView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a(Ljava/lang/Object;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$1;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$1;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$1;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->a(Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;)Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulaappproxy/remotedebug/state/ActionEventListener;->a()V

    .line 62
    :cond_0
    return-void
.end method
