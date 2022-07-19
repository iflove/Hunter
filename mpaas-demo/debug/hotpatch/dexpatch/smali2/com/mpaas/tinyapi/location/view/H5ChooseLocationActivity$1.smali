.class final Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;
.super Landroid/widget/BaseAdapter;
.source "H5ChooseLocationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;


# direct methods
.method constructor <init>(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    .line 176
    iput-object p1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v0

    invoke-static {v0}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 184
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 189
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 194
    if-nez p2, :cond_0

    .line 195
    iget-object v0, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 196
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/mpaas/commonbiz/R$layout;->item_poi:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 197
    move-object p2, v0

    sget v3, Lcom/mpaas/commonbiz/R$id;->title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    .local v0, "title":Landroid/widget/TextView;
    sget v3, Lcom/mpaas/commonbiz/R$id;->snippet:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 199
    .local v3, "snippet":Landroid/widget/TextView;
    new-instance v4, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;-><init>(B)V

    .line 200
    .local v1, "vh":Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;
    move-object v1, v4

    iput-object v0, v4, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;->a:Landroid/widget/TextView;

    .line 201
    iput-object v3, v1, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;->b:Landroid/widget/TextView;

    .line 202
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    .end local v0    # "title":Landroid/widget/TextView;
    .end local v1    # "vh":Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "snippet":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;

    .line 205
    .local v0, "vh":Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;
    iget-object v1, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v1

    invoke-static {v1}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->e(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/PoiItem;

    .line 206
    .local v1, "poiItem":Lcom/amap/api/services/core/PoiItem;
    iget-object v2, v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v2, v0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$c;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->a(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;

    move-result-object v2

    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;->g(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$b;)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 209
    iget-object v2, p0, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity$1;->a:Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;

    invoke-static {v2}, Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;->c(Lcom/mpaas/tinyapi/location/view/H5ChooseLocationActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 211
    :cond_1
    return-object p2
.end method
