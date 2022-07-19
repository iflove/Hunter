.class final Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;
.super Ljava/lang/Object;
.source "AUHorizontalListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/basic/AUHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V
    .locals 0

    .line 6218
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;B)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    .line 6218
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;-><init>(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 6221
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mDataChanged:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$500(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6225
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$1400(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6226
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 6229
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->fireOnSelected()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2800(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    .line 6230
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUHorizontalListView$j;->a:Lcom/alipay/mobile/antui/basic/AUHorizontalListView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->performAccessibilityActionsOnSelected()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUHorizontalListView;->access$2900(Lcom/alipay/mobile/antui/basic/AUHorizontalListView;)V

    .line 6232
    :cond_1
    return-void
.end method
