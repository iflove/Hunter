.class public Lcom/alipay/mobile/antui/dialog/AUCustomDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUCustomDialog.java"


# instance fields
.field private closeClickListener:Landroid/view/View$OnClickListener;

.field private closeColor:I

.field private customView:Landroid/view/View;

.field private hasCloseBtn:Z

.field private horizonMaskSpace:I

.field private layoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private mCloseBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customView"    # Landroid/view/View;

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customView"    # Landroid/view/View;
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->hasCloseBtn:Z

    .line 52
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->customView:Landroid/view/View;

    .line 53
    iput-object p3, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/dialog/AUCustomDialog;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUCustomDialog;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->closeClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private initCloseBtn()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->hasCloseBtn:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->mCloseBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->mCloseBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUCustomDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUCustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget v0, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->closeColor:I

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->mCloseBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 82
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_custom_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 84
    .local v0, "rootView":Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    sget v1, Lcom/alipay/mobile/antui/R$id;->dialog_close:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->mCloseBtn:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 85
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->customView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->addView(Landroid/view/View;I)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->custom_horizon_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->horizonMaskSpace:I

    .line 88
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->initCloseBtn()V

    .line 89
    return-void
.end method

.method public setCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "closeClickListener"    # Landroid/view/View$OnClickListener;

    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->closeClickListener:Landroid/view/View$OnClickListener;

    .line 78
    return-void
.end method

.method public setCloseColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 61
    iput p1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->closeColor:I

    .line 62
    return-void
.end method

.method public setHasCloseBtn(Z)V
    .locals 0
    .param p1, "hasCloseBtn"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->hasCloseBtn:Z

    .line 70
    return-void
.end method

.method public show()V
    .locals 3

    .line 112
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 113
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 114
    .local v0, "windowLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->horizonMaskSpace:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 117
    :cond_0
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->layoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 121
    return-void
.end method
