.class final Lcom/alipay/mobile/antui/bar/AUVerticalTabView$1;
.super Ljava/lang/Object;
.source "AUVerticalTabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->setItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/bar/AUVerticalTabView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/bar/AUVerticalTabView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/bar/AUVerticalTabView;

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabView$1;->a:Lcom/alipay/mobile/antui/bar/AUVerticalTabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    .local v1, "tag":Ljava/lang/Object;
    move-object v1, v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabView$1;->a:Lcom/alipay/mobile/antui/bar/AUVerticalTabView;

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->setSelected(I)V

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabView$1;->a:Lcom/alipay/mobile/antui/bar/AUVerticalTabView;

    # getter for: Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->mOnItemClickListener:Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->access$000(Lcom/alipay/mobile/antui/bar/AUVerticalTabView;)Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/antui/bar/AUVerticalTabView$1;->a:Lcom/alipay/mobile/antui/bar/AUVerticalTabView;

    # getter for: Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->mOnItemClickListener:Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;
    invoke-static {v0}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView;->access$000(Lcom/alipay/mobile/antui/bar/AUVerticalTabView;)Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p1, v2}, Lcom/alipay/mobile/antui/bar/AUVerticalTabView$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 59
    :cond_0
    return-void
.end method
