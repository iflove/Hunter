.class final Lcom/alipay/mobile/antui/load/AURefreshListView$b;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AURefreshListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$b;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 711
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/load/AURefreshListView$b;-><init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 715
    const-string v0, "AURefreshListView"

    const-string v1, "DelayInvokeRelease run"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$b;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$300(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$b;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 717
    const-string/jumbo v1, "mOnPullRefreshListener onRefreshFinished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$b;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->mOnPullRefreshListener:Lcom/alipay/mobile/antui/load/OnPullRefreshListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$100(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/OnPullRefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/load/OnPullRefreshListener;->onRefreshFinished()V

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$b;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # invokes: Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinishLayoutAction()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$200(Lcom/alipay/mobile/antui/load/AURefreshListView;)V

    .line 721
    return-void
.end method
