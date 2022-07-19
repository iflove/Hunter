.class public Lcom/alipay/mobile/h5container/api/H5NavMenu;
.super Ljava/lang/Object;
.source "H5NavMenu.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/H5NavMenuView;


# instance fields
.field public menuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 37
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 39
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_nav_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move-object v3, v1

    .line 41
    .local v3, "content":Landroid/view/View;
    move-object v3, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;

    .line 44
    .local v0, "item":Lcom/alipay/mobile/nebula/view/H5NavMenuItem;
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_tv_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 46
    iget-object v5, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    sget v4, Lcom/alipay/mobile/nebula/R$id;->h5_iv_icon:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 49
    .local v4, "ivIcon":Landroid/widget/ImageView;
    iget-object v5, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0x8

    if-eqz v5, :cond_0

    .line 50
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v5, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :goto_0
    sget v5, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_dot:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 59
    .local v5, "dotContainer":Landroid/widget/RelativeLayout;
    sget v7, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_dot_bg:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 60
    .local v7, "dotBg":Landroid/widget/ImageView;
    sget v8, Lcom/alipay/mobile/nebula/R$id;->h5_popmenu_dot_num:I

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 61
    .local v8, "dotText":Landroid/widget/TextView;
    iget-object v9, v0, Lcom/alipay/mobile/nebula/view/H5NavMenuItem;->redDotNum:Ljava/lang/String;

    .line 62
    .local v1, "redDot":Ljava/lang/String;
    move-object v1, v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 63
    const-string v1, "-1"

    .line 65
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 66
    const/4 v9, -0x1

    .line 68
    .local v9, "dotNum":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v10

    .line 71
    goto :goto_1

    .line 69
    :catch_0
    move-exception v10

    .line 72
    :goto_1
    if-ltz v9, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/16 v10, 0x8

    .line 73
    .local v10, "visibility":I
    :goto_2
    invoke-virtual {v5, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 75
    if-nez v9, :cond_3

    .line 76
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 78
    :cond_3
    if-lez v9, :cond_5

    .line 79
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    const/16 v2, 0x63

    if-le v9, v2, :cond_4

    const-string/jumbo v2, "\u00b7\u00b7\u00b7"

    goto :goto_3

    :cond_4
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "dt":Ljava/lang/String;
    :goto_3
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .end local v2    # "dt":Ljava/lang/String;
    .end local v9    # "dotNum":I
    .end local v10    # "visibility":I
    :cond_5
    :goto_4
    return-object v3
.end method

.method public getListCount()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5NavMenu;->menuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .param p1, "menuList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/view/H5NavMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5NavMenu;->menuList:Ljava/util/List;

    .line 28
    return-void
.end method
