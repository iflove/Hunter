.class final Lcom/alipay/mobile/antui/load/AURefreshListView$4;
.super Ljava/lang/Object;
.source "AURefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/load/AURefreshListView;->closeStay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/antui/load/AURefreshListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/load/AURefreshListView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/load/AURefreshListView;

    .line 1258
    iput-object p1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$4;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    iput-boolean p2, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1261
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$4;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    const/4 v1, 0x1

    # invokes: Lcom/alipay/mobile/antui/load/AURefreshListView;->callAction(I)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1900(Lcom/alipay/mobile/antui/load/AURefreshListView;I)V

    .line 1262
    iget-object v0, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$4;->b:Lcom/alipay/mobile/antui/load/AURefreshListView;

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/load/AURefreshListView$4;->a:Z

    const/4 v2, 0x0

    # invokes: Lcom/alipay/mobile/antui/load/AURefreshListView;->closeStayReal(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/antui/load/AURefreshListView;->access$1800(Lcom/alipay/mobile/antui/load/AURefreshListView;ZZ)V

    .line 1263
    return-void
.end method
