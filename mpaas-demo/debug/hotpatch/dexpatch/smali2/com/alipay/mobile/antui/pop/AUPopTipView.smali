.class public Lcom/alipay/mobile/antui/pop/AUPopTipView;
.super Ljava/lang/Object;
.source "AUPopTipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/pop/AUPopTipView$OnToolTipClickedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AUPopTipView"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mIsDown:Z

.field private mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

.field private mTipWindow:Landroid/widget/PopupWindow;

.field private mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private tipClickedListener:Lcom/alipay/mobile/antui/pop/AUPopTipView$OnToolTipClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->initView(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/pop/AUPopTipView;)Lcom/alipay/mobile/antui/pop/AUPopTipView$OnToolTipClickedListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/pop/AUPopTipView;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->tipClickedListener:Lcom/alipay/mobile/antui/pop/AUPopTipView$OnToolTipClickedListener;

    return-object v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mContext:Landroid/content/Context;

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_tip_pop_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    .line 47
    sget v2, Lcom/alipay/mobile/antui/R$id;->tip_container:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 48
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    sget v2, Lcom/alipay/mobile/antui/R$id;->tip_text:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    sget v2, Lcom/alipay/mobile/antui/R$id;->tip_btn:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    sget v2, Lcom/alipay/mobile/antui/R$id;->tip_up_icon:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    sget v2, Lcom/alipay/mobile/antui/R$id;->tip_down_icon:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    new-instance v2, Lcom/alipay/mobile/antui/pop/AUPopTipView$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/pop/AUPopTipView$1;-><init>(Lcom/alipay/mobile/antui/pop/AUPopTipView;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 64
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 65
    return-void
.end method

.method private isUpScreen(Landroid/view/View;)Z
    .locals 5
    .param p1, "anchorView"    # Landroid/view/View;

    .line 150
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 151
    .local v1, "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 152
    const/4 v2, 0x1

    aget v3, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 153
    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->getScreenHeight(Landroid/content/Context;)I

    move-result v4

    div-int/2addr v4, v0

    if-ge v3, v4, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setDefaultDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;

    .line 142
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->isUpScreen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mIsDown:Z

    return-void

    .line 145
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mIsDown:Z

    .line 147
    return-void
.end method


# virtual methods
.method public disappearByClickOutside()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 82
    return-void
.end method

.method public disappearByClickView()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 77
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AUPopTipView"

    const-string v2, "dismiss: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public setBgColor(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 69
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 72
    return-void
.end method

.method public setTipClickedListener(Lcom/alipay/mobile/antui/pop/AUPopTipView$OnToolTipClickedListener;)V
    .locals 0
    .param p1, "tipClickedListener"    # Lcom/alipay/mobile/antui/pop/AUPopTipView$OnToolTipClickedListener;

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->tipClickedListener:Lcom/alipay/mobile/antui/pop/AUPopTipView$OnToolTipClickedListener;

    .line 96
    return-void
.end method

.method public showTipView(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 105
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->setDefaultDown(Landroid/view/View;)V

    .line 106
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mIsDown:Z

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->showTipView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public showTipView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "btnText"    # Ljava/lang/String;

    .line 114
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->setDefaultDown(Landroid/view/View;)V

    .line 115
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mIsDown:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->showTipView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 116
    return-void
.end method

.method public showTipView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 11
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "btnText"    # Ljava/lang/String;
    .param p4, "isDown"    # Z

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AUPopTipView"

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "text is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void

    .line 123
    :cond_0
    if-nez p1, :cond_1

    .line 124
    const-string v0, "anchorView is null"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void

    .line 127
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->disappearByClickView()V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->disappearByClickOutside()V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v1, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipView:Lcom/alipay/mobile/antui/pop/AUPopTipContainer;

    iget-object v2, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v5, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mUpIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v6, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mDownIcon:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v9, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v10, p0, Lcom/alipay/mobile/antui/pop/AUPopTipView;->mTipButton:Lcom/alipay/mobile/antui/basic/AUTextView;

    move-object v7, p1

    move v8, p4

    invoke-virtual/range {v1 .. v10}, Lcom/alipay/mobile/antui/pop/AUPopTipContainer;->setTipLocate(Landroid/content/Context;Landroid/widget/PopupWindow;Lcom/alipay/mobile/antui/basic/AULinearLayout;Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/iconfont/AUIconView;Landroid/view/View;ZLcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/basic/AUTextView;)V

    .line 139
    return-void
.end method

.method public showTipView(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "isDown"    # Z

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alipay/mobile/antui/pop/AUPopTipView;->showTipView(Landroid/view/View;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 111
    return-void
.end method
