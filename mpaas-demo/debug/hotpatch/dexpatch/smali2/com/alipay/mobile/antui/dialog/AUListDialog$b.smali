.class final Lcom/alipay/mobile/antui/dialog/AUListDialog$b;
.super Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;
.source "AUListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/antui/dialog/AUListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUListDialog;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/antui/dialog/AUListDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 435
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->a:Lcom/alipay/mobile/antui/dialog/AUListDialog;

    .line 436
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;-><init>(Landroid/content/Context;)V

    .line 437
    return-void
.end method


# virtual methods
.method protected final getHorizonPadding(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 452
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected final initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->a:Lcom/alipay/mobile/antui/dialog/AUListDialog;

    # getter for: Lcom/alipay/mobile/antui/dialog/AUListDialog;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog;->access$600(Lcom/alipay/mobile/antui/dialog/AUListDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->list_item_dialog:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 442
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 443
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 444
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_badge:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 445
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->setMinimumHeight(I)V

    .line 446
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->setGravity(I)V

    .line 447
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/dialog/AUListDialog$b;->setMakeTitleMax(Z)V

    .line 448
    return-void
.end method
