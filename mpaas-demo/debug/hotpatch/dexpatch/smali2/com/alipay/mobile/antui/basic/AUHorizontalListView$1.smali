.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;
.super Ljava/lang/Object;
.source "AUHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

.field final synthetic c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 1470
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->b:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1473
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v1, -0x1

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$402(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;I)I

    .line 1475
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->setPressed(Z)V

    .line 1476
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1478
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->b:Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$g;->run()V

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$1;->c:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    const/4 v1, 0x0

    # setter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mTouchModeReset:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$602(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 1483
    return-void
.end method
