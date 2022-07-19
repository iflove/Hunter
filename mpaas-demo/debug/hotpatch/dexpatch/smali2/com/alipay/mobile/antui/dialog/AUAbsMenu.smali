.class public abstract Lcom/alipay/mobile/antui/dialog/AUAbsMenu;
.super Ljava/lang/Object;
.source "AUAbsMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_LEFT_ICON:Ljava/lang/String; = "leftIcon"

.field public static final TYPE_RIGHT_ICON:Ljava/lang/String; = "rightIcon"


# instance fields
.field protected arrowMarginR:I

.field protected dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

.field protected inflater:Landroid/view/LayoutInflater;

.field protected mContext:Landroid/content/Context;

.field protected mDropDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field protected mDropUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field protected mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mListAdapter:Landroid/widget/BaseAdapter;

.field protected mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

.field protected mPopItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;"
        }
    .end annotation
.end field

.field protected windows:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mPopItemList:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->initView()V

    .line 61
    return-void
.end method

.method protected static getScreenHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 348
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/ViewUtils;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 349
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 350
    const v0, 0x1020002

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 351
    .local v1, "contentView":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    const/4 v3, 0x0

    .line 353
    .local v3, "bottom":I
    move v3, v0

    if-lez v0, :cond_0

    return v3

    .line 356
    .end local v1    # "contentView":Landroid/view/View;
    .end local v3    # "bottom":I
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 344
    invoke-static {p0}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private isLiving()Z
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 331
    return v1

    .line 334
    :cond_0
    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 335
    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    .line 336
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    :cond_1
    return v1

    .line 340
    .end local v2    # "activity":Landroid/app/Activity;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public directionShow(Landroid/view/View;Ljava/util/ArrayList;IIZ)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "width"    # I
    .param p4, "marginRight"    # I
    .param p5, "isDown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;IIZ)V"
        }
    .end annotation

    .line 242
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 243
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->refreshListView(Ljava/util/ArrayList;)V

    .line 244
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 245
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 247
    .local v1, "heightOffset":I
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0, v2, v3, p4}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->setArrowMarginRight(III)V

    .line 249
    const/4 v2, 0x1

    if-eqz p5, :cond_0

    .line 250
    aget v2, v0, v2

    add-int/2addr v2, v1

    invoke-virtual {p0, p4, v2, p3}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDialogBelow(III)V

    return-void

    .line 252
    :cond_0
    aget v2, v0, v2

    invoke-virtual {p0, p4, v2, p3}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDialogAbove(III)V

    .line 255
    .end local v0    # "location":[I
    .end local v1    # "heightOffset":I
    :cond_1
    return-void
.end method

.method public directionShow(Landroid/view/View;Ljava/util/ArrayList;IZ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "width"    # I
    .param p4, "isDown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;IZ)V"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 238
    .local v0, "defaultMarginRight":I
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v0

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->directionShow(Landroid/view/View;Ljava/util/ArrayList;IIZ)V

    .line 239
    return-void
.end method

.method public directionShow(Landroid/view/View;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "isDown"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;Z)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 233
    .local v0, "default_width":I
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->directionShow(Landroid/view/View;Ljava/util/ArrayList;IZ)V

    .line 234
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->dismiss()V

    .line 415
    return-void
.end method

.method protected getDefaultWidth()I
    .locals 1

    .line 168
    const/16 v0, 0x12c

    return v0
.end method

.method protected getStatusBarHeight()I
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/AUStatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public hideDrop()V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 270
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->dismiss()V

    .line 274
    :cond_0
    return-void
.end method

.method public abstract initAdapter(Landroid/content/Context;)Landroid/widget/BaseAdapter;
.end method

.method protected initView()V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->inflater:Landroid/view/LayoutInflater;

    .line 395
    sget v1, Lcom/alipay/mobile/antui/R$layout;->layout_pop_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->windows:Landroid/widget/RelativeLayout;

    .line 396
    sget v1, Lcom/alipay/mobile/antui/R$id;->pop_list:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->windows:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/antui/R$id;->drop_down_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->windows:Landroid/widget/RelativeLayout;

    sget v1, Lcom/alipay/mobile/antui/R$id;->drop_up_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->initAdapter(Landroid/content/Context;)Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 400
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$drawable;->popmenu_list_devider:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setHeaderDividersEnabled(Z)V

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setFooterDividersEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_DIVIDER_SPACE1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->setDividerHeight(I)V

    .line 406
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    sget v2, Lcom/alipay/mobile/antui/R$style;->MessageDialogTheme:I

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    .line 407
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->windows:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->setContentView(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    return v0

    .line 435
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected meathureWidthByChilds()I
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->menu_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUCornerListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 141
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 142
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListView:Lcom/alipay/mobile/antui/basic/AUCornerListView;

    invoke-interface {v1, v3, v4, v5}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 143
    invoke-virtual {v4, v2, v2}, Landroid/view/View;->measure(II)V

    .line 144
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 145
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_1
    goto :goto_2

    .line 149
    :catch_0
    move-exception v3

    .line 150
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 151
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 152
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->AU_MARGIN_UNIVERSAL:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 153
    nop

    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 154
    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mPopItemList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;

    iget-object v5, v5, Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    .line 155
    if-le v5, v0, :cond_2

    .line 156
    move v0, v5

    .line 153
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 161
    if-le v0, v1, :cond_4

    .line 162
    move v0, v1

    .line 164
    :cond_4
    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "OnItemClick: position = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v2, :cond_0

    .line 372
    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void

    .line 374
    :cond_0
    const-string v1, "OnItemClick: mListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-void
.end method

.method public refreshListView()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 179
    return-void
.end method

.method public refreshListView(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "popItems"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mPopItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mPopItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mListAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 175
    return-void
.end method

.method protected setArrowMarginRight(III)V
    .locals 3
    .param p1, "viewLocX"    # I
    .param p2, "viewWidth"    # I
    .param p3, "winMarRight"    # I

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    .line 390
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->pop_over_icon_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->arrowMarginR:I

    .line 391
    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 262
    :cond_0
    return-void
.end method

.method public showAsDropDownTitleCenter(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;I)V"
        }
    .end annotation

    .line 120
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 121
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->refreshListView(Ljava/util/ArrayList;)V

    .line 122
    const/4 v0, -0x2

    if-ne p3, v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->meathureWidthByChilds()I

    move-result p3

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 128
    .local v2, "dialogWindow":Landroid/view/Window;
    move-object v2, v0

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 129
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 130
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v1, v0

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 131
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->show()V

    .line 134
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "dialogWindow":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method protected showDialogAbove(III)V
    .locals 4
    .param p1, "marginRight"    # I
    .param p2, "locationY"    # I
    .param p3, "width"    # I

    .line 310
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->isLiving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "AUAbsMenu"

    const-string v1, "Activity is finished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 317
    const/4 v2, -0x2

    iget v3, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->arrowMarginR:I

    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 319
    .local v2, "dialogWindow":Landroid/view/Window;
    move-object v2, v0

    const/16 v3, 0x55

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 320
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 321
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v1, v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 323
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 324
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->show()V

    .line 326
    return-void
.end method

.method protected showDialogBelow(III)V
    .locals 4
    .param p1, "marginRight"    # I
    .param p2, "locationY"    # I
    .param p3, "width"    # I

    .line 284
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->isLiving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    const-string v0, "AUAbsMenu"

    const-string v1, "Activity is finished"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mDropDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 291
    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->arrowMarginR:I

    const/4 v3, -0x3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 293
    .local v2, "dialogWindow":Landroid/view/Window;
    move-object v2, v0

    const/16 v3, 0x35

    invoke-virtual {v0, v3}, Landroid/view/Window;->setGravity(I)V

    .line 294
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 295
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v1, v0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 296
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 297
    iput p3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 298
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->dialog:Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUWithoutSlapDialog;->show()V

    .line 300
    return-void
.end method

.method public showDrop(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
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

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 71
    .local v0, "default_width":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDrop(Landroid/view/View;Ljava/util/ArrayList;I)V

    .line 72
    return-void
.end method

.method public showDrop(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;I)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 83
    .local v0, "defaultMarginRight":I
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDrop(Landroid/view/View;Ljava/util/ArrayList;II)V

    .line 84
    return-void
.end method

.method public showDrop(Landroid/view/View;Ljava/util/ArrayList;II)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "width"    # I
    .param p4, "marginRight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;II)V"
        }
    .end annotation

    .line 94
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 95
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "popItems size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->refreshListView(Ljava/util/ArrayList;)V

    .line 98
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 99
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 101
    const/4 v2, 0x1

    aget v3, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 102
    .local v3, "pointY":F
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getStatusBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    .line 104
    .local v4, "heightOffset":I
    const/4 v5, -0x2

    const/4 v6, 0x0

    if-ne p3, v5, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->meathureWidthByChilds()I

    move-result p3

    .line 106
    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    aget v7, v1, v6

    sub-int/2addr v5, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/2addr v7, v0

    sub-int/2addr v5, v7

    div-int/lit8 v7, p3, 0x2

    sub-int/2addr v5, v7

    invoke-static {v5, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 109
    :cond_0
    aget v5, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0, v5, v6, p4}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->setArrowMarginRight(III)V

    .line 111
    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    div-int/2addr v5, v0

    int-to-float v0, v5

    cmpg-float v0, v3, v0

    if-gez v0, :cond_1

    .line 112
    aget v0, v1, v2

    add-int/2addr v0, v4

    invoke-virtual {p0, p4, v0, p3}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDialogBelow(III)V

    return-void

    .line 114
    :cond_1
    aget v0, v1, v2

    invoke-virtual {p0, p4, v0, p3}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDialogAbove(III)V

    .line 117
    .end local v1    # "location":[I
    .end local v3    # "pointY":F
    .end local v4    # "heightOffset":I
    :cond_2
    return-void
.end method

.method public showDropWithLocation(Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "location"    # Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;)V"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 196
    .local v0, "default_width":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDropWithLocation(Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;Ljava/util/ArrayList;I)V

    .line 197
    return-void
.end method

.method public showDropWithLocation(Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "location"    # Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;I)V"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE5:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 201
    .local v0, "defaultMarginRight":I
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDropWithLocation(Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;Ljava/util/ArrayList;II)V

    .line 202
    return-void
.end method

.method public showDropWithLocation(Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;Ljava/util/ArrayList;II)V
    .locals 4
    .param p1, "location"    # Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;
    .param p2, "popItems"    # Ljava/util/ArrayList;
    .param p3, "width"    # I
    .param p4, "marginRight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/iconfont/model/MessagePopItem;",
            ">;II)V"
        }
    .end annotation

    .line 205
    if-nez p1, :cond_0

    .line 206
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->TAG:Ljava/lang/String;

    const-string v1, "location is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 209
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 210
    sget-object v0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "popItems size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->refreshListView(Ljava/util/ArrayList;)V

    .line 212
    iget v0, p1, Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;->y:I

    iget v1, p1, Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 213
    .local v0, "pointY":F
    iget v1, p1, Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;->height:I

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 214
    .local v1, "heightOffset":I
    iget v2, p1, Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;->x:I

    iget v3, p1, Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;->width:I

    invoke-virtual {p0, v2, v3, p4}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->setArrowMarginRight(III)V

    .line 216
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 217
    iget v2, p1, Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;->y:I

    add-int/2addr v2, v1

    invoke-virtual {p0, p4, v2, p3}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDialogBelow(III)V

    return-void

    .line 219
    :cond_1
    iget v2, p1, Lcom/alipay/mobile/antui/dialog/AUAbsMenu$ViewLoc;->y:I

    invoke-virtual {p0, p4, v2, p3}, Lcom/alipay/mobile/antui/dialog/AUAbsMenu;->showDialogAbove(III)V

    .line 222
    .end local v0    # "pointY":F
    .end local v1    # "heightOffset":I
    :cond_2
    return-void
.end method
