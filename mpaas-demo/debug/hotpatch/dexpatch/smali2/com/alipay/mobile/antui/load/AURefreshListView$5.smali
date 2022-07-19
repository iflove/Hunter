.class final Lcom/alipay/mobile/antui/load/AURefreshListView$5;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;->openStay(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/antui/load/AURefreshListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 1281
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->c:Lcom/alipay/mobile/antui/load/AURefreshListView;

    iput-boolean p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->a:Z

    iput-boolean p3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1284
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->c:Lcom/alipay/mobile/antui/load/AURefreshListView;

    const/4 v1, 0x0

    # invokes: Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1900(Lcom/alipay/mobile/antui/load/AURefreshListView;I)V

    .line 1285
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->a:Z

    if-eqz v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->c:Lcom/alipay/mobile/antui/load/AURefreshListView;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alipay/mobile/antui/load/AURefreshListView;->isAutoOpen:Z

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->c:Lcom/alipay/mobile/antui/load/AURefreshListView;

    iget-boolean v2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->a:Z

    iget-boolean v3, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$5;->b:Z

    # invokes: Lcom/alipay/mobile/antui/load/AURefreshListView;->openStayReal(ZZZ)V
    invoke-static {v0, v2, v3, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$2000(Lcom/alipay/mobile/antui/load/AURefreshListView;ZZZ)V

    .line 1289
    return-void
.end method
