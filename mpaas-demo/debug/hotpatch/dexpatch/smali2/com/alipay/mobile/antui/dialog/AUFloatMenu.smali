.class public Lcom/alipay/mobile/antui/dialog/AUFloatMenu;
.super Lcom/alipay/mobile/antui/dialog/AUAbsMenu;
.source "AUFloatMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUFloatMenu$b;,
        Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;
    }
.end annotation


# instance fields
.field private mTitleHeader:Landroid/view/View;

.field private mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method private addTitleHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mTitleHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setHeaderDividersEnabled(Z)V

    .line 161
    return-void
.end method

.method private removeTitleHeader()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mTitleHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->removeHeaderView(Landroid/view/View;)Z

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setHeaderDividersEnabled(Z)V

    .line 166
    return-void
.end method


# virtual methods
.method protected getDefaultWidth()I
    .locals 1

    .line 113
    const/16 v0, 0x96

    return v0
.end method

.method public initAdapter(Landroid/content/Context;)Landroid/widget/BaseAdapter;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mPopItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1, v1}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;-><init>(Lcom/alipay/mobile/antui/dialog/AUFloatMenu;Landroid/content/Context;Ljava/util/List;)V

    return-object v0
.end method

.method protected initView()V
    .locals 5

    .line 44
    invoke-super {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->initView()V

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->floatmenu_title_header:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mTitleHeader:Landroid/view/View;

    .line 46
    sget v1, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mTitleTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 48
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    .line 49
    .local v0, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_LINE_COLOR:Ljava/lang/String;

    sget v4, Lcom/alipay/mobile/antui/R$drawable;->popmenu_list_devider:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_DIVIDER_SPACE1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setDividerHeight(I)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_SINGLELINE_BG:Ljava/lang/String;

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setSingleLineBGResid(I)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_MULTILINEFIRST_BG:Ljava/lang/String;

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setMultiLineFirstBGResid(I)V

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_MULTILINELAST_BG:Ljava/lang/String;

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_round_bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setMultiLineLastBGResid(I)V

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    sget-object v2, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_MULTILINE_DEFAULT_BG:Ljava/lang/String;

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->pop_list_corner_shape:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setMultiLineDefaultBGResid(I)V

    .line 56
    return-void
.end method

.method public refreshListView(I)V
    .locals 2
    .param p1, "index"    # I

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu$a;->notifyDataSetChanged(Landroid/widget/ListView;I)V

    .line 175
    return-void

    .line 173
    :cond_1
    :goto_0
    return-void
.end method

.method public setOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 170
    return-void
.end method

.method public showAsDropDownLeft(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->showAsDropDownLeft(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 124
    return-void
.end method

.method public showAsDropDownLeft(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "viewCenterOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;I)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, p3

    .line 128
    move p3, v0

    if-gez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->removeTitleHeader()V

    .line 132
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->refreshListView(Ljava/util/ArrayList;)V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->meathureWidthByChilds()I

    move-result v0

    .line 134
    .local v0, "width":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 135
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 139
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 140
    .local v4, "screenWidth":I
    move v4, v2

    sub-int/2addr v2, v0

    aget v5, v1, v3

    sub-int/2addr v2, v5

    .line 141
    .local v2, "marginRight":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->getStatusBarHeight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 142
    .local v5, "heightOffset":I
    iget-object v6, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 143
    .local v6, "defaultDialogMargin":I
    if-ge v2, v6, :cond_1

    .line 144
    aget v3, v1, v3

    sub-int v3, v4, v3

    sub-int/2addr v3, p3

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v3, v7

    iput v3, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->arrowMarginR:I

    .line 145
    div-int/lit8 v2, v6, 0x2

    goto :goto_0

    .line 147
    :cond_1
    sub-int v3, v0, p3

    iput v3, p0, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->arrowMarginR:I

    .line 149
    :goto_0
    const/4 v3, 0x1

    aget v3, v1, v3

    add-int/2addr v3, v5

    invoke-virtual {p0, v2, v3, v0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->showDialogBelow(III)V

    .line 150
    return-void
.end method

.method public showAsDropDownTitleCenter(Landroid/view/View;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "popItems"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->addTitleHeader(Ljava/lang/String;)V

    .line 154
    const/4 v0, -0x2

    invoke-super {p0, p1, p3, v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showAsDropDownTitleCenter(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 155
    return-void
.end method

.method public showDrop(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUFloatMenu;->removeTitleHeader()V

    .line 119
    const/4 v0, -0x2

    invoke-super {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDrop(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 120
    return-void
.end method
