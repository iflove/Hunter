.class public Lcom/alipay/mobile/antui/dialog/AUPopMenu;
.super Ljava/lang/Object;
.source "AUPopMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;,
        Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;
    }
.end annotation


# static fields
.field private static final CENTER:I = 0x2

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private itemMargin:I

.field private mContext:Landroid/content/Context;

.field private mDownIcon:Landroid/widget/ImageView;

.field private mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

.field private mMenuView:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mMenuWindow:Landroid/widget/PopupWindow;

.field private mType:I

.field private mUpIcon:Landroid/widget/ImageView;

.field private screenWidth:I

.field private universeMargin:I

.field private windowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listAdapter"    # Landroid/widget/BaseAdapter;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mType:I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->initView(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemArrayList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mType:I

    .line 66
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$a;-><init>(Lcom/alipay/mobile/antui/dialog/AUPopMenu;Ljava/util/ArrayList;B)V

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->initView(Landroid/content/Context;Landroid/widget/BaseAdapter;)V

    .line 67
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/dialog/AUPopMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/dialog/AUPopMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUPopMenu;

    .line 41
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->itemMargin:I

    return v0
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 218
    nop

    .line 219
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 220
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private getViewLocationX(II)I
    .locals 5
    .param p1, "viewX"    # I
    .param p2, "viewWidth"    # I

    .line 178
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->windowWidth:I

    sub-int v1, p2, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    const/4 v2, 0x0

    .line 179
    .local v2, "locationX":I
    move v2, v1

    iget v3, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->universeMargin:I

    if-ge v1, v3, :cond_0

    .line 180
    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->universeMargin:I

    .line 181
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mType:I

    goto :goto_0

    .line 182
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->screenWidth:I

    sub-int v4, v1, v0

    sub-int/2addr v4, v3

    if-le v2, v4, :cond_1

    .line 183
    sub-int/2addr v1, v0

    sub-int v2, v1, v3

    .line 184
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mType:I

    .line 186
    :cond_1
    :goto_0
    return v2
.end method

.method private initView(Landroid/content/Context;Landroid/widget/BaseAdapter;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listAdapter"    # Landroid/widget/BaseAdapter;

    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->itemMargin:I

    .line 88
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 89
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_pop_menu:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuView:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 90
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuView:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    sget v2, Lcom/alipay/mobile/antui/R$id;->pop_menu_list:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    .line 92
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v1

    .line 94
    .local v1, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/alipay/mobile/antui/theme/AUThemeKey;->FLOATMENU_LINE_COLOR:Ljava/lang/String;

    sget v6, Lcom/alipay/mobile/antui/R$drawable;->popmenu_list_devider:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getResId(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->AU_DIVIDER_SPACE1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setDividerHeight(I)V

    .line 96
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuView:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    sget v4, Lcom/alipay/mobile/antui/R$id;->pop_down_icon:I

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mDownIcon:Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuView:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    sget v4, Lcom/alipay/mobile/antui/R$id;->pop_up_icon:I

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mUpIcon:Landroid/widget/ImageView;

    .line 99
    invoke-static {p1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->screenWidth:I

    .line 100
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-direct {p0, v2, p2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->measureWidthByChildren(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->windowWidth:I

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE17:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->universeMargin:I

    .line 103
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuView:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v3, v3, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuWindow:Landroid/widget/PopupWindow;

    .line 104
    iget v3, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->windowWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 106
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuWindow:Landroid/widget/PopupWindow;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method private measureWidthByChildren(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)I
    .locals 6

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->menu_min_width_new:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 366
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 367
    invoke-virtual {p2, v2, v3, p1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 368
    invoke-virtual {v4, v1, v1}, Landroid/view/View;->measure(II)V

    .line 369
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 370
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_1
    goto :goto_2

    .line 374
    :catch_0
    move-exception v2

    .line 376
    nop

    :goto_1
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 377
    invoke-virtual {p2, v1, v3, p1}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 378
    instance-of v4, v2, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;

    if-eqz v4, :cond_2

    .line 379
    check-cast v2, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu$b;->a()Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->itemMargin:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    .line 381
    if-le v2, v0, :cond_2

    .line 382
    move v0, v2

    .line 376
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    :cond_3
    :goto_2
    iget p1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->screenWidth:I

    iget-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sub-int/2addr p1, p2

    .line 389
    if-le v0, p1, :cond_4

    .line 390
    move v0, p1

    .line 392
    :cond_4
    return v0
.end method

.method private setArrowLocationX(Landroid/widget/ImageView;I)V
    .locals 5
    .param p1, "iconView"    # Landroid/widget/ImageView;
    .param p2, "viewWidth"    # I

    .line 196
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 198
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->border_arrow_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 199
    .local v1, "arrowWidth":I
    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    .line 210
    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->windowWidth:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v3

    .local v2, "margin":I
    goto :goto_0

    .line 207
    .end local v2    # "margin":I
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->windowWidth:I

    div-int/lit8 v3, p2, 0x2

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->universeMargin:I

    add-int/2addr v2, v3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    .line 208
    .restart local v2    # "margin":I
    goto :goto_0

    .line 201
    .end local v2    # "margin":I
    :cond_1
    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->windowWidth:I

    sub-int/2addr v2, v1

    div-int/2addr v2, v3

    .line 202
    .restart local v2    # "margin":I
    goto :goto_0

    .line 204
    .end local v2    # "margin":I
    :cond_2
    div-int/lit8 v2, p2, 0x2

    iget v3, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->universeMargin:I

    sub-int/2addr v2, v3

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v2, v3

    .line 205
    .restart local v2    # "margin":I
    nop

    .line 213
    :goto_0
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 214
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    return-void
.end method

.method private setTipLocate(Landroid/view/View;Z)V
    .locals 6
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "isDown"    # Z

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 146
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 150
    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 151
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mDownIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mUpIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 154
    .local v2, "anchorWidth":I
    aget v3, v0, v3

    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->getViewLocationX(II)I

    move-result v3

    .line 155
    .local v3, "locationX":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mUpIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->setArrowLocationX(Landroid/widget/ImageView;I)V

    .line 156
    aget v1, v0, v1

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->AU_HOTSPACE1:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-virtual {v5}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    mul-int v4, v4, v5

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    .line 158
    invoke-virtual {v4}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->border_arrow_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->menu_margin_vertical:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v1, v4

    .line 161
    .end local v2    # "anchorWidth":I
    .local v1, "locationY":I
    goto :goto_0

    .line 162
    .end local v1    # "locationY":I
    .end local v3    # "locationX":I
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mDownIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mUpIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 165
    .restart local v2    # "anchorWidth":I
    aget v3, v0, v3

    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->getViewLocationX(II)I

    move-result v3

    .line 166
    .restart local v3    # "locationX":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mDownIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->setArrowLocationX(Landroid/widget/ImageView;I)V

    .line 167
    aget v1, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->menu_margin_vertical:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 169
    .end local v2    # "anchorWidth":I
    .restart local v1    # "locationY":I
    :goto_0
    invoke-direct {p0, p1, v3, v1}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->tipWindowShow(Landroid/view/View;II)V

    .line 170
    return-void
.end method

.method private tipWindowShow(Landroid/view/View;II)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 239
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 241
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 243
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 230
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 234
    :cond_0
    return-void
.end method

.method public getMenuWindow()Landroid/widget/PopupWindow;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->mMenuList:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 402
    return-void
.end method

.method public showTipView(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->showTipView(Landroid/view/View;Z)V

    .line 125
    return-void
.end method

.method public showTipView(Landroid/view/View;Z)V
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "isDown"    # Z

    .line 134
    if-nez p1, :cond_0

    .line 135
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->TAG:Ljava/lang/String;

    const-string v1, "anchorView is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/dialog/AUPopMenu;->setTipLocate(Landroid/view/View;Z)V

    .line 141
    return-void
.end method
