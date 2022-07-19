.class final Lcom/alipay/mobile/antui/load/AURefreshListView$2;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/load/AbsLoadingView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;->initLoadingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/load/AURefreshListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 447
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$2;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadingAppeared()V
    .locals 2

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onLoadingAppeared, refreshFinished:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$2;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinished:Z
    invoke-static {v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$700(Lcom/alipay/mobile/antui/load/AURefreshListView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AURefreshListView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$2;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->refreshFinished:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$700(Lcom/alipay/mobile/antui/load/AURefreshListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$2;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    # getter for: Lcom/alipay/mobile/antui/load/AURefreshListView;->loadingView:Lcom/alipay/mobile/antui/load/AbsLoadingView;
    invoke-static {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$300(Lcom/alipay/mobile/antui/load/AURefreshListView;)Lcom/alipay/mobile/antui/load/AbsLoadingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AbsLoadingView;->pause()V

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$2;->a:Lcom/alipay/mobile/antui/load/AURefreshListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/load/AURefreshListView;->finishRefresh()V

    .line 455
    :cond_0
    return-void
.end method
