.class public Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;
.super Ljava/lang/Object;
.source "MpaasDefaultH5TitleView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alipay/mobile/nebula/view/H5TitleView;


# static fields
.field private static final TAG:Ljava/lang/String; = "MpaasDefaultH5TitleView"


# instance fields
.field public btIcon:Landroid/widget/ImageButton;

.field public btIcon1:Landroid/widget/ImageButton;

.field public btIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field public btMenu:Landroid/widget/TextView;

.field public btMenu1:Landroid/widget/TextView;

.field public btMenuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public btText:Landroid/widget/TextView;

.field public btText1:Landroid/widget/TextView;

.field public btTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field protected contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

.field public h5NavOptions:Landroid/view/View;

.field public h5NavOptions1:Landroid/view/View;

.field public h5NavOptionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field protected h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

.field protected hDivider:Landroid/view/View;

.field protected mBackButton:Landroid/view/View;

.field protected mCloseButton:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field protected mSubTitleView:Landroid/widget/TextView;

.field protected mTitleView:Landroid/widget/TextView;

.field protected statusBarAdjustView:Landroid/view/View;

.field protected title:Ljava/lang/String;

.field protected vDivider:Landroid/view/View;

.field protected visibleOptionNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptionsList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenuList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    .line 96
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mContext:Landroid/content/Context;

    .line 97
    const/4 v1, 0x0

    .line 98
    .local v1, "parent":Landroid/view/ViewGroup;
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 99
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    .line 101
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/mpaas/nebula/adapter/api/R$layout;->mpaas_default_title_bar:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    .line 102
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    const v2, -0xe6892e

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_tv_title:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mTitleView:Landroid/widget/TextView;

    .line 104
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_tv_subtitle:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mSubTitleView:Landroid/widget/TextView;

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_nav_close:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mCloseButton:Landroid/view/View;

    .line 108
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_tv_nav_back:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mBackButton:Landroid/view/View;

    .line 110
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_v_divider:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->vDivider:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_h_divider_intitle:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->hDivider:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_nav_options:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_nav_options1:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions1:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_status_bar_adjust_view:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->statusBarAdjustView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_bt_image:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon:Landroid/widget/ImageButton;

    .line 118
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_bt_text:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_bt_options:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_bt_image1:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon1:Landroid/widget/ImageButton;

    .line 122
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_bt_text1:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText1:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    sget v2, Lcom/mpaas/nebula/adapter/api/R$id;->h5_bt_options1:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu1:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptionsList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptionsList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions1:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon:Landroid/widget/ImageButton;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon1:Landroid/widget/ImageButton;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText1:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenuList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenuList:Ljava/util/List;

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu1:Landroid/widget/TextView;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu1:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method


# virtual methods
.method protected ctrlbtIcon(IIZ)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "visible"    # I
    .param p3, "byIndex"    # Z

    .line 312
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    return-void

    .line 315
    :cond_0
    if-eqz p3, :cond_1

    .line 316
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 318
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method protected ctrlbtMenu(IIZ)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "visible"    # I
    .param p3, "byIndex"    # Z

    .line 325
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenuList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    return-void

    .line 328
    :cond_0
    if-eqz p3, :cond_1

    .line 329
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenuList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 331
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 332
    iget-object v1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenuList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 335
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method protected ctrlbtText(IIZ)V
    .locals 2
    .param p1, "num"    # I
    .param p2, "visible"    # I
    .param p3, "byIndex"    # Z

    .line 299
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    if-eqz p3, :cond_1

    .line 303
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 305
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "i":I
    :cond_2
    :goto_1
    return-void
.end method

.method public enableBackButtonBackground(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 642
    return-void
.end method

.method public enableTitleSegControl(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 634
    return-void
.end method

.method public getContentBgView()Landroid/graphics/drawable/ColorDrawable;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;->getContentBgView()Landroid/graphics/drawable/ColorDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->contentView:Lcom/alipay/mobile/nebula/view/H5TitleBarFrameLayout;

    return-object v0
.end method

.method public getDivider()Landroid/view/View;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->vDivider:Landroid/view/View;

    return-object v0
.end method

.method public getH5TinyPopMenu()Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;
    .locals 1

    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHdividerInTitle()Landroid/view/View;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->hDivider:Landroid/view/View;

    return-object v0
.end method

.method public getMainTitleView()Landroid/widget/TextView;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOptionMenuContainer()Landroid/view/View;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions:Landroid/view/View;

    return-object v0
.end method

.method public getOptionMenuContainer(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 586
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 592
    invoke-virtual {p0}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->getOptionMenuContainer()Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions1:Landroid/view/View;

    return-object v0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions:Landroid/view/View;

    return-object v0
.end method

.method public getPopAnchor()Landroid/view/View;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mSubTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->title:Ljava/lang/String;

    return-object v0
.end method

.method public initTitleSegControl(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 626
    return-void
.end method

.method protected isOutOfBound(II)Z
    .locals 1
    .param p1, "num"    # I
    .param p2, "length"    # I

    .line 292
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 293
    return v0

    .line 295
    :cond_0
    if-ge p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 651
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_0

    .line 652
    return-void

    .line 655
    :cond_0
    const/4 v0, 0x0

    .line 656
    .local v0, "eventName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 658
    .local v1, "data":Lcom/alibaba/fastjson/JSONObject;
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mBackButton:Landroid/view/View;

    if-ne p1, v2, :cond_1

    .line 659
    const-string v0, "h5ToolbarBack"

    goto/16 :goto_3

    .line 660
    :cond_1
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mCloseButton:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 661
    const-string v0, "h5ToolbarClose"

    goto/16 :goto_3

    .line 662
    :cond_2
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "index"

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIcon1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 670
    :cond_4
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 675
    :cond_5
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 676
    const-string v0, "titleClick"

    goto :goto_3

    .line 677
    :cond_6
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 678
    const-string v0, "subtitleClick"

    goto :goto_3

    .line 671
    :cond_7
    :goto_0
    const-string v0, "optionMenu"

    .line 672
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v1, v2

    .line 673
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v5, "fromMenu"

    invoke-virtual {v1, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenu:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 667
    :cond_8
    :goto_1
    const-string v0, "optionMenu"

    .line 668
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v1, v2

    .line 669
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 663
    :cond_9
    :goto_2
    const-string v0, "optionMenu"

    .line 664
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v1, v2

    .line 665
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    :cond_a
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 682
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 684
    :cond_b
    return-void
.end method

.method public openTranslucentStatusBarSupport(I)V
    .locals 4
    .param p1, "color"    # I

    .line 520
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 523
    .local v0, "statusBarHeight":I
    if-nez v0, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->statusBarAdjustView:Landroid/view/View;

    .line 527
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 528
    .local v1, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 529
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->statusBarAdjustView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 530
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->statusBarAdjustView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :try_start_0
    iget-object v2, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebula/util/H5StatusBarUtils;->setTransparentColor(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    goto :goto_0

    .line 534
    :catch_0
    move-exception v2

    .line 535
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "MpaasDefaultH5TitleView"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    .end local v0    # "statusBarHeight":I
    .end local v1    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public releaseViewList()V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptionsList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 501
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 504
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 507
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btMenuList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 510
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 512
    :cond_3
    return-void
.end method

.method public resetTitleColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 477
    return-void
.end method

.method public setBackCloseBtnImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setBtIcon(Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "btIcon"    # Landroid/graphics/Bitmap;
    .param p2, "index"    # I

    .line 356
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->isOutOfBound(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 360
    return-void
.end method

.method public setH5Page(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 364
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 365
    return-void
.end method

.method public setIH5TinyPopMenu(Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;)V
    .locals 0
    .param p1, "tinyPopMenu"    # Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 601
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5TinyPopMenu:Lcom/alipay/mobile/nebula/view/IH5TinyPopMenu;

    .line 602
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 179
    return-void
.end method

.method public setImgTitle(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "s"    # Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setOptionMenu(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 8
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;

    .line 372
    const-string v0, "reset"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    .local v0, "reset":Z
    const-string v2, "override"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 374
    .local v2, "override":Z
    const-string v3, "menus"

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 375
    .local v3, "menus":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 376
    iget-object v5, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions1:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 377
    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    invoke-virtual {p0, v5, v1, v4}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 378
    iput v4, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    .line 379
    return-void

    .line 381
    :cond_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 382
    iput v1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    .line 383
    const/4 v5, 0x2

    if-eqz v2, :cond_3

    .line 384
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-le v1, v5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    :goto_0
    move v1, v5

    .line 385
    .local v1, "menuSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 387
    invoke-virtual {v3, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 388
    .local v6, "menusItem":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v6, v5}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 389
    iget v7, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    .line 385
    .end local v6    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 391
    .end local v1    # "menuSize":I
    .end local v5    # "i":I
    :cond_2
    goto :goto_2

    .line 392
    :cond_3
    iput v5, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    .line 394
    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 395
    .local v1, "menusItem":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v1, v4}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 396
    .end local v1    # "menusItem":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 398
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V

    .line 399
    iput v4, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    .line 401
    :goto_2
    return-void
.end method

.method protected setOptionMenuInternal(Lcom/alibaba/fastjson/JSONObject;I)V
    .locals 9
    .param p1, "params"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "index"    # I

    .line 404
    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "title":Ljava/lang/String;
    const-string v1, "icon"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "icon":Ljava/lang/String;
    const-string v2, "icontype"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "icontype":Ljava/lang/String;
    const-string v3, "contentDesc"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "contentDesc":Ljava/lang/String;
    const-string v4, "color"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, "colorText":Ljava/lang/String;
    const v5, -0xef7117

    .line 412
    .local v5, "color":I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/high16 v7, -0x1000000

    if-nez v6, :cond_0

    .line 414
    :try_start_0
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v6

    .line 417
    goto :goto_0

    .line 415
    :catchall_0
    move-exception v6

    .line 418
    :goto_0
    or-int/2addr v5, v7

    .line 419
    iget-object v6, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 421
    :cond_0
    iget-object v6, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    .line 422
    .local v6, "currentColor":I
    or-int/2addr v6, v7

    .line 423
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOptionMenuInternal currentColor is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MpaasDefaultH5TitleView"

    invoke-static {v8, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const v7, -0xeeeeef

    if-eq v6, v7, :cond_1

    .line 425
    iget-object v7, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText:Landroid/widget/TextView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 426
    iget-object v7, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText1:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 428
    :cond_1
    iget-object v7, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText:Landroid/widget/TextView;

    const v8, -0xef7117

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v7, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btText1:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 433
    .end local v6    # "currentColor":I
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 434
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 435
    iget-object v6, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    const/4 v7, 0x1

    invoke-virtual {p0, v6, p2, v7}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 437
    iget-object v6, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btTextList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 438
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 439
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 440
    iget-object v6, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->btIconList:Ljava/util/List;

    invoke-interface {v6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    invoke-virtual {v6, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 443
    :cond_4
    :goto_2
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;)V
    .locals 2
    .param p1, "optionType"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    .line 265
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V

    .line 266
    return-void
.end method

.method public setOptionType(Lcom/alipay/mobile/h5container/api/H5Param$OptionType;IZ)V
    .locals 6
    .param p1, "type"    # Lcom/alipay/mobile/h5container/api/H5Param$OptionType;
    .param p2, "num"    # I
    .param p3, "byIndex"    # Z

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "icon":Z
    const/4 v1, 0x0

    .line 277
    .local v1, "text":Z
    const/4 v2, 0x0

    .line 278
    .local v2, "menu":Z
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->ICON:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_0

    .line 279
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->TEXT:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_1

    .line 281
    const/4 v1, 0x1

    goto :goto_0

    .line 282
    :cond_1
    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Param$OptionType;->MENU:Lcom/alipay/mobile/h5container/api/H5Param$OptionType;

    if-ne p1, v3, :cond_2

    .line 283
    const/4 v2, 0x1

    .line 285
    :cond_2
    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/16 v4, 0x8

    :goto_1
    invoke-virtual {p0, p2, v4, p3}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->ctrlbtText(IIZ)V

    .line 286
    const/4 v4, 0x4

    if-eqz v0, :cond_4

    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {p0, p2, v5, p3}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->ctrlbtIcon(IIZ)V

    .line 287
    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x4

    :goto_3
    invoke-virtual {p0, p2, v3, p3}, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->ctrlbtMenu(IIZ)V

    .line 288
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mSubTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 160
    iput-object p1, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->title:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    return-void
.end method

.method public setTitleBarSearch(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTitleTxtColor(I)V
    .locals 1
    .param p1, "i"    # I

    .line 569
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 570
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mSubTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 571
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 618
    return-void
.end method

.method public showBackButton(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 236
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mBackButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void
.end method

.method public showCloseButton(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 194
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->mCloseButton:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    return-void
.end method

.method public showOptionMenu(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .line 244
    if-eqz p1, :cond_2

    .line 245
    iget v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->visibleOptionNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    nop

    .line 252
    :goto_0
    goto :goto_1

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/mpaas/nebula/adapter/view/MpaasDefaultH5TitleView;->h5NavOptions1:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_1
    return-void
.end method

.method public showTitleDisclaimer(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 351
    return-void
.end method

.method public showTitleLoading(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 343
    return-void
.end method

.method public switchToBlueTheme()V
    .locals 0

    .line 493
    return-void
.end method

.method public switchToTitleBar()V
    .locals 0

    .line 546
    return-void
.end method

.method public switchToWhiteTheme()V
    .locals 0

    .line 485
    return-void
.end method
