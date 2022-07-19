.class final Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;
.super Ljava/lang/Object;
.source "AUFilterMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->updateMenusFilte(Lcom/alipay/mobile/antui/model/FilterCategoryData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/model/FilterCategoryData;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;

.field final synthetic d:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;Lcom/alipay/mobile/antui/model/FilterCategoryData;ILcom/alipay/mobile/antui/filter/AUFilterTabContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->d:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->a:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    iput p3, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->b:I

    iput-object p4, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->c:Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->a:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    iget-object v0, v0, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/model/FilterItemData;

    iget-boolean v0, v0, Lcom/alipay/mobile/antui/model/FilterItemData;->allowMultipleSelect:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->c:Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->clearSelect()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->d:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isOneGroup:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->access$200(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->d:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->clearSelect()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->access$100(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V

    .line 172
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->d:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    # getter for: Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isConfirmVisible:Z
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->access$300(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;->d:Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    # invokes: Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->updateData()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->access$000(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V

    .line 177
    :cond_2
    return-void
.end method
