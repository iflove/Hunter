.class final Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$2;
.super Ljava/lang/Object;
.source "RemoteDebugStateView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;->c()V
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

    .line 100
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView$2;->a:Lcom/alipay/mobile/nebulaappproxy/remotedebug/view/RemoteDebugStateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 105
    const/4 v0, 0x1

    return v0
.end method
