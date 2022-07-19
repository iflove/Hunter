.class public Lcom/alipay/mobile/antui/basic/AUFilterMenuView;
.super Landroid/widget/RelativeLayout;
.source "AUFilterMenuView.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private confirm:Landroid/widget/TextView;

.field private confirmLayout:Landroid/view/View;

.field private filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

.field private filterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isConfirmVisible:Z

.field private isGroupNameVisible:Z

.field private isOneGroup:Z

.field private isSplitterViewVisible:Z

.field private listener:Lcom/alipay/mobile/antui/filter/IFilterListener;

.field private mContext:Landroid/content/Context;

.field private reset:Landroid/widget/TextView;

.field private tabContainerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;",
            ">;"
        }
    .end annotation
.end field

.field private tmp:Lcom/alipay/mobile/antui/model/FilterCategoryData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "FilterMenuView"

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterMap:Ljava/util/Map;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterMap:Ljava/util/Map;

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterMap:Ljava/util/Map;

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->updateData()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->clearSelect()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    .line 27
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isOneGroup:Z

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUFilterMenuView;

    .line 27
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isConfirmVisible:Z

    return v0
.end method

.method private clearSelect()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->tabContainerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;

    .line 213
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->clearSelect()V

    .line 214
    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->tmp:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->setViewModel(Lcom/alipay/mobile/antui/model/FilterCategoryData;)V

    .line 216
    return-void
.end method

.method private setViewModel(Lcom/alipay/mobile/antui/model/FilterCategoryData;)V
    .locals 5
    .param p1, "categoryData"    # Lcom/alipay/mobile/antui/model/FilterCategoryData;

    .line 272
    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    iget-object v1, p1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/antui/model/FilterCategoryData;->code:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    iget-object v1, p1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/antui/model/FilterCategoryData;->name:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    iget-object v1, p1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->groupId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/antui/model/FilterCategoryData;->groupId:Ljava/lang/String;

    .line 276
    iget-object v0, p1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    .line 278
    .local v0, "datas":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v1, "itemDatas":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/model/FilterItemData;

    .line 281
    .local v3, "item":Lcom/alipay/mobile/antui/model/FilterItemData;
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->getFromFilterModel(Lcom/alipay/mobile/antui/model/FilterItemData;)Lcom/alipay/mobile/antui/model/FilterItemData;

    move-result-object v4

    .line 282
    .local v4, "data":Lcom/alipay/mobile/antui/model/FilterItemData;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v3    # "item":Lcom/alipay/mobile/antui/model/FilterItemData;
    .end local v4    # "data":Lcom/alipay/mobile/antui/model/FilterItemData;
    goto :goto_0

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    move-object v3, v1

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    .line 288
    .end local v0    # "datas":Ljava/util/List;
    .end local v1    # "itemDatas":Ljava/util/List;
    :cond_1
    return-void
.end method

.method private updateData()V
    .locals 10

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->tabContainerList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->tabContainerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;

    .line 222
    .local v2, "item":Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;
    invoke-virtual {v3}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->updateSelectDatas()V

    .line 223
    .end local v2    # "item":Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;
    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, v0, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    .line 229
    .local v0, "filterItemDatas":Ljava/util/List;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Lcom/alipay/mobile/antui/model/FilterCategoryData;->selectItems:Ljava/util/ArrayList;

    .line 230
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    move-object v4, v3

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/model/FilterItemData;

    .line 232
    .local v1, "filterItemData":Lcom/alipay/mobile/antui/model/FilterItemData;
    move-object v1, v5

    iget-object v5, v5, Lcom/alipay/mobile/antui/model/FilterItemData;->key:Ljava/lang/String;

    .line 233
    .local v5, "key":Ljava/lang/String;
    const-string v6, ""

    .line 234
    .local v6, "val":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v7, "list":Ljava/util/List;
    iget-object v8, v1, Lcom/alipay/mobile/antui/model/FilterItemData;->subItemData:Ljava/util/ArrayList;

    .line 236
    .local v3, "subFilterDatas":Ljava/util/List;
    move-object v3, v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_3

    .line 237
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobile/antui/model/FilterItemData;

    .line 238
    .local v4, "sub":Lcom/alipay/mobile/antui/model/FilterItemData;
    move-object v4, v9

    iget-boolean v9, v9, Lcom/alipay/mobile/antui/model/FilterItemData;->isSelect:Z

    if-eqz v9, :cond_1

    .line 239
    iget-object v9, v4, Lcom/alipay/mobile/antui/model/FilterItemData;->code:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v4    # "sub":Lcom/alipay/mobile/antui/model/FilterItemData;
    :cond_1
    goto :goto_2

    .line 242
    :cond_2
    const/16 v8, 0x2c

    invoke-virtual {p0, v7, v8}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->listToString2(Ljava/util/List;C)Ljava/lang/String;

    move-result-object v6

    .line 244
    :cond_3
    iget-object v8, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterMap:Ljava/util/Map;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v1    # "filterItemData":Lcom/alipay/mobile/antui/model/FilterItemData;
    .end local v3    # "subFilterDatas":Ljava/util/List;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/List;
    goto :goto_1

    .line 250
    .end local v0    # "filterItemDatas":Ljava/util/List;
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->listener:Lcom/alipay/mobile/antui/filter/IFilterListener;

    if-eqz v0, :cond_5

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterMap:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/antui/filter/IFilterListener;->onFilterSelected(Lcom/alipay/mobile/antui/model/FilterCategoryData;Ljava/util/Map;ZZ)V

    .line 254
    :cond_5
    return-void
.end method

.method private updateMenusFilte(Lcom/alipay/mobile/antui/model/FilterCategoryData;)V
    .locals 16
    .param p1, "data"    # Lcom/alipay/mobile/antui/model/FilterCategoryData;

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$layout;->view_category_filter:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v3, v4

    .line 117
    .local v3, "view":Landroid/view/View;
    move-object v3, v2

    sget v5, Lcom/alipay/mobile/antui/R$id;->filter_menu_container:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 118
    .local v2, "filterContainer":Landroid/widget/LinearLayout;
    sget v5, Lcom/alipay/mobile/antui/R$id;->confirm:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirm:Landroid/widget/TextView;

    .line 119
    sget v5, Lcom/alipay/mobile/antui/R$id;->reset:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->reset:Landroid/widget/TextView;

    .line 120
    sget v5, Lcom/alipay/mobile/antui/R$id;->confirm_layout:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirmLayout:Landroid/view/View;

    .line 121
    iget-object v5, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/antui/R$drawable;->search_menu_button:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 122
    .local v5, "confirmDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v6, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/antui/R$drawable;->reset_menu_button:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 123
    .local v6, "resetDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirm:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v7, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->reset:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v7, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirm:Landroid/widget/TextView;

    new-instance v8, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$1;

    invoke-direct {v8, v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v7, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->reset:Landroid/widget/TextView;

    new-instance v8, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$2;

    invoke-direct {v8, v0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$2;-><init>(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v7, v1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    iget-object v7, v1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 140
    iget-object v7, v1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 145
    .local v7, "size":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->tabContainerList:Ljava/util/List;

    .line 147
    const/4 v10, 0x0

    move v11, v10

    move-object v10, v4

    .local v11, "i":I
    :goto_0
    if-ge v11, v7, :cond_4

    .line 148
    iget-object v12, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v12

    sget v13, Lcom/alipay/mobile/antui/R$layout;->view_category_filte_item:I

    invoke-virtual {v12, v13, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 149
    .local v4, "v":Landroid/view/View;
    move-object v4, v12

    sget v13, Lcom/alipay/mobile/antui/R$id;->groupname:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 150
    .local v12, "groupTextView":Landroid/widget/TextView;
    sget v13, Lcom/alipay/mobile/antui/R$id;->filterSubMenuTabContainer:I

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;

    .line 151
    .local v10, "tabContainer":Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;
    move-object v10, v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->setTag(Ljava/lang/Object;)V

    .line 152
    iget-object v13, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/alipay/mobile/antui/R$dimen;->filer_15:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->setmMargin(I)V

    .line 153
    iget-object v13, v1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alipay/mobile/antui/model/FilterItemData;

    iget-object v13, v13, Lcom/alipay/mobile/antui/model/FilterItemData;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    move-object v13, v10

    .line 155
    .local v13, "t":Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;
    iget-object v14, v1, Lcom/alipay/mobile/antui/model/FilterCategoryData;->itemDatas:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alipay/mobile/antui/model/FilterItemData;

    iget-object v14, v14, Lcom/alipay/mobile/antui/model/FilterItemData;->subItemData:Ljava/util/ArrayList;

    .line 157
    .local v14, "items":Ljava/util/List;
    move v15, v11

    .line 158
    .local v15, "tmpIndex":I
    sget v9, Lcom/alipay/mobile/antui/R$id;->filter_splitter:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 159
    .local v9, "splitterView":Landroid/view/View;
    new-instance v8, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;

    invoke-direct {v8, v0, v1, v15, v13}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView$3;-><init>(Lcom/alipay/mobile/antui/basic/AUFilterMenuView;Lcom/alipay/mobile/antui/model/FilterCategoryData;ILcom/alipay/mobile/antui/filter/AUFilterTabContainerView;)V

    invoke-virtual {v10, v8}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->setOnTagClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {v10, v14}, Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;->setDatas(Ljava/util/List;)V

    .line 181
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    if-eqz v10, :cond_0

    .line 183
    iget-object v8, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->tabContainerList:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_0
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isGroupNameVisible:Z

    if-nez v8, :cond_1

    .line 185
    const/16 v8, 0x8

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_1
    iget-boolean v8, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isSplitterViewVisible:Z

    if-nez v8, :cond_2

    .line 188
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 189
    add-int/lit8 v8, v7, -0x1

    if-ne v11, v8, :cond_3

    .line 193
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .end local v13    # "t":Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;
    .end local v14    # "items":Ljava/util/List;
    .end local v15    # "tmpIndex":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 198
    .end local v4    # "v":Landroid/view/View;
    .end local v7    # "size":I
    .end local v9    # "splitterView":Landroid/view/View;
    .end local v10    # "tabContainer":Lcom/alipay/mobile/antui/filter/AUFilterTabContainerView;
    .end local v11    # "i":I
    .end local v12    # "groupTextView":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->addView(Landroid/view/View;)V

    .line 199
    iget-boolean v4, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isConfirmVisible:Z

    if-nez v4, :cond_5

    .line 200
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->reset:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 201
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirm:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirmLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 204
    :cond_5
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->reset:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirm:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object v4, v0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->confirmLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 208
    return-void
.end method


# virtual methods
.method public getCOnfirmVisible()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isConfirmVisible:Z

    return v0
.end method

.method public getFromFilterModel(Lcom/alipay/mobile/antui/model/FilterItemData;)Lcom/alipay/mobile/antui/model/FilterItemData;
    .locals 8
    .param p1, "filterItemModel"    # Lcom/alipay/mobile/antui/model/FilterItemData;

    .line 291
    new-instance v0, Lcom/alipay/mobile/antui/model/FilterItemData;

    invoke-direct {v0}, Lcom/alipay/mobile/antui/model/FilterItemData;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 292
    .local v2, "filterItemData":Lcom/alipay/mobile/antui/model/FilterItemData;
    move-object v2, v0

    iget-object v3, p1, Lcom/alipay/mobile/antui/model/FilterItemData;->name:Ljava/lang/String;

    iput-object v3, v0, Lcom/alipay/mobile/antui/model/FilterItemData;->name:Ljava/lang/String;

    .line 293
    iget-object v0, p1, Lcom/alipay/mobile/antui/model/FilterItemData;->code:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/antui/model/FilterItemData;->code:Ljava/lang/String;

    .line 294
    iget-boolean v0, p1, Lcom/alipay/mobile/antui/model/FilterItemData;->isSelect:Z

    iput-boolean v0, v2, Lcom/alipay/mobile/antui/model/FilterItemData;->isSelect:Z

    .line 295
    iget v0, p1, Lcom/alipay/mobile/antui/model/FilterItemData;->count:I

    iput v0, v2, Lcom/alipay/mobile/antui/model/FilterItemData;->count:I

    .line 296
    iget-object v0, p1, Lcom/alipay/mobile/antui/model/FilterItemData;->key:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/antui/model/FilterItemData;->key:Ljava/lang/String;

    .line 297
    iget-boolean v0, p1, Lcom/alipay/mobile/antui/model/FilterItemData;->allowMultipleSelect:Z

    iput-boolean v0, v2, Lcom/alipay/mobile/antui/model/FilterItemData;->allowMultipleSelect:Z

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v0, "filterItemDatas":Ljava/util/List;
    iget-object v3, p1, Lcom/alipay/mobile/antui/model/FilterItemData;->subItemData:Ljava/util/ArrayList;

    move-object v4, v1

    .line 301
    .local v4, "filterItemModelList":Ljava/util/List;
    move-object v4, v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/model/FilterItemData;

    .line 303
    .local v5, "itemModel":Lcom/alipay/mobile/antui/model/FilterItemData;
    new-instance v6, Lcom/alipay/mobile/antui/model/FilterItemData;

    invoke-direct {v6}, Lcom/alipay/mobile/antui/model/FilterItemData;-><init>()V

    .line 304
    .local v1, "itemData":Lcom/alipay/mobile/antui/model/FilterItemData;
    move-object v1, v6

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/alipay/mobile/antui/model/FilterItemData;->isSelect:Z

    .line 305
    iget-object v6, v5, Lcom/alipay/mobile/antui/model/FilterItemData;->code:Ljava/lang/String;

    iput-object v6, v1, Lcom/alipay/mobile/antui/model/FilterItemData;->code:Ljava/lang/String;

    .line 306
    iget v6, v5, Lcom/alipay/mobile/antui/model/FilterItemData;->count:I

    iput v6, v1, Lcom/alipay/mobile/antui/model/FilterItemData;->count:I

    .line 307
    iget-object v6, v5, Lcom/alipay/mobile/antui/model/FilterItemData;->name:Ljava/lang/String;

    iput-object v6, v1, Lcom/alipay/mobile/antui/model/FilterItemData;->name:Ljava/lang/String;

    .line 308
    iget-object v6, v5, Lcom/alipay/mobile/antui/model/FilterItemData;->key:Ljava/lang/String;

    iput-object v6, v1, Lcom/alipay/mobile/antui/model/FilterItemData;->key:Ljava/lang/String;

    .line 309
    iget-boolean v6, v5, Lcom/alipay/mobile/antui/model/FilterItemData;->allowMultipleSelect:Z

    iput-boolean v6, v1, Lcom/alipay/mobile/antui/model/FilterItemData;->allowMultipleSelect:Z

    .line 310
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v1    # "itemData":Lcom/alipay/mobile/antui/model/FilterItemData;
    .end local v5    # "itemModel":Lcom/alipay/mobile/antui/model/FilterItemData;
    goto :goto_0

    .line 313
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Lcom/alipay/mobile/antui/model/FilterItemData;->subItemData:Ljava/util/ArrayList;

    .line 314
    return-object v2
.end method

.method public getGroupNameVisible()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isGroupNameVisible:Z

    return v0
.end method

.method public initData(Lcom/alipay/mobile/antui/filter/IFilterListener;Lcom/alipay/mobile/antui/model/FilterCategoryData;Lcom/alipay/mobile/antui/model/FilterCategoryData;)V
    .locals 1
    .param p1, "listener"    # Lcom/alipay/mobile/antui/filter/IFilterListener;
    .param p2, "filterCategory"    # Lcom/alipay/mobile/antui/model/FilterCategoryData;
    .param p3, "tmpCatData"    # Lcom/alipay/mobile/antui/model/FilterCategoryData;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterMap:Ljava/util/Map;

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->listener:Lcom/alipay/mobile/antui/filter/IFilterListener;

    .line 87
    iput-object p3, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->tmp:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    .line 88
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->filterCategoryData:Lcom/alipay/mobile/antui/model/FilterCategoryData;

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->removeAllViews()V

    .line 90
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->updateMenusFilte(Lcom/alipay/mobile/antui/model/FilterCategoryData;)V

    .line 91
    return-void
.end method

.method public isOneGroup()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isOneGroup:Z

    return v0
.end method

.method public isSplitterViewVisible()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isSplitterViewVisible:Z

    return v0
.end method

.method public listToString2(Ljava/util/List;C)Ljava/lang/String;
    .locals 3
    .param p1, "list"    # Ljava/util/List;
    .param p2, "separator"    # C

    .line 257
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 258
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 261
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 257
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v0, ""

    return-object v0
.end method

.method public setConfirmVisibe(Z)V
    .locals 0
    .param p1, "isConfirmVisible"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isConfirmVisible:Z

    .line 95
    return-void
.end method

.method public setGroupNameVisible(Z)V
    .locals 0
    .param p1, "isGroupNameVisible"    # Z

    .line 98
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isGroupNameVisible:Z

    .line 99
    return-void
.end method

.method public setIsOneGroup(Z)V
    .locals 0
    .param p1, "isOneGroup"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isOneGroup:Z

    .line 66
    return-void
.end method

.method public setSplitterViewVisible(Z)V
    .locals 0
    .param p1, "splitterViewVisible"    # Z

    .line 57
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUFilterMenuView;->isSplitterViewVisible:Z

    .line 58
    return-void
.end method
