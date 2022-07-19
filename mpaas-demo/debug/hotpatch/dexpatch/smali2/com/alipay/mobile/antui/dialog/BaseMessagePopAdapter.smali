.class public abstract Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseMessagePopAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPopItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->mPopItemList:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->mPopItemList:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected abstract createView(Landroid/content/Context;)Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->mPopItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;
    .locals 1
    .param p1, "position"    # I

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->mPopItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->getItem(I)Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 47
    if-nez p2, :cond_0

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->createView(Landroid/content/Context;)Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;

    move-result-object p2

    .line 50
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->mPopItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;->setPopItem(Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;)V

    .line 51
    return-object p2
.end method

.method public notifyDataSetChanged(Landroid/widget/ListView;I)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "position"    # I

    .line 55
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 56
    .local v0, "firstVisiblePosition":I
    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 57
    .local v1, "lastVisiblePosition":I
    if-lt p2, v0, :cond_0

    if-gt p2, v1, :cond_0

    .line 58
    sub-int v2, p2, v0

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, p2, v2, p1}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
