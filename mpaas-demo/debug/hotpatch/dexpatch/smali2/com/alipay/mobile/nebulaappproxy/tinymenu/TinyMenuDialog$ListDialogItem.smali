.class Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;
.super Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;
.source "TinyMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListDialogItem"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 528
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    .line 529
    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/dialog/BaseMessagePopItemView;-><init>(Landroid/content/Context;)V

    .line 530
    return-void
.end method


# virtual methods
.method protected getHorizonPadding(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 545
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method protected initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 534
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->this$0:Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;->access$700(Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->list_item_dialog:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 535
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_icon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->mIconView:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 536
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->mTitleView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 537
    sget v0, Lcom/alipay/mobile/antui/R$id;->item_badge:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/badge/AUBadgeView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->mBadgeView:Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 538
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->setMinimumHeight(I)V

    .line 539
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->setGravity(I)V

    .line 540
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/tinymenu/TinyMenuDialog$ListDialogItem;->setMakeTitleMax(Z)V

    .line 541
    return-void
.end method
