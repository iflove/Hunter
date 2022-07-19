.class public abstract Lcom/alipay/mobile/antui/dialog/AUBaseDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUBaseDialog.java"


# instance fields
.field private buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

.field private buttonView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private customView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private horizonMaskSpace:I

.field protected inflater:Landroid/view/LayoutInflater;

.field private listAdapter:Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

.field protected mCancelBtn:Landroid/widget/Button;

.field protected mEnsureBtn:Landroid/widget/Button;

.field public rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public addDividerView()V
    .locals 4

    .line 184
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 185
    .local v1, "divider":Landroid/view/View;
    move-object v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_DIALOG_DIVIDER_COLOR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 187
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public addHorizonButtonView(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V
    .locals 4
    .param p1, "positiveStr"    # Ljava/lang/String;
    .param p2, "negativeStr"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/mobile/antui/api/OnItemClickListener;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_base_dialog_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 126
    sget v1, Lcom/alipay/mobile/antui/R$id;->ensure:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mEnsureBtn:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    sget v1, Lcom/alipay/mobile/antui/R$id;->cancel:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mCancelBtn:Landroid/widget/Button;

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 131
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v3, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$1;

    invoke-direct {v3, p0, p3}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUBaseDialog;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mEnsureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mEnsureBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mEnsureBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 151
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mEnsureBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$2;

    invoke-direct {v1, p0, p3}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog$2;-><init>(Lcom/alipay/mobile/antui/dialog/AUBaseDialog;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method public addListButtonView(Ljava/util/List;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V
    .locals 4
    .param p1, "data"    # Ljava/util/List;
    .param p2, "listener"    # Lcom/alipay/mobile/antui/api/OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/antui/api/OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    .line 164
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setBackgroundColor(I)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_DIALOG_DIVIDER_COLOR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDividerHeight(I)V

    .line 167
    new-instance v0, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;-><init>(II)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->listAdapter:Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->listAdapter:Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/antui/adapter/TextButtonListAdapter;->setData(Landroid/content/Context;Ljava/util/List;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V

    .line 172
    return-void
.end method

.method public getButtonItem(I)Landroid/widget/TextView;
    .locals 1
    .param p1, "position"    # I

    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    if-eqz v0, :cond_1

    .line 176
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mEnsureBtn:Landroid/widget/Button;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->mCancelBtn:Landroid/widget/Button;

    return-object v0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0

    .line 180
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract initCustomView(Lcom/alipay/mobile/antui/basic/AULinearLayout;)V
.end method

.method public abstract initHorizonMaskSpace()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->inflater:Landroid/view/LayoutInflater;

    .line 57
    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_base_dailog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 58
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    sget v1, Lcom/alipay/mobile/antui/R$id;->dialog_custom_view:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->customView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 60
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->initCustomView(Lcom/alipay/mobile/antui/basic/AULinearLayout;)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->setContentView(Landroid/view/View;)V

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->initHorizonMaskSpace()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->horizonMaskSpace:I

    .line 63
    return-void
.end method

.method public setButtonStyle(Landroid/widget/BaseAdapter;)V
    .locals 4
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setBackgroundColor(I)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_DIALOG_DIVIDER_COLOR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setDividerHeight(I)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->buttonListView:Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUMaxItemCornerListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    return-void
.end method

.method public setButtonStyle(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V
    .locals 8
    .param p1, "positiveStr"    # Ljava/lang/String;
    .param p2, "negativeStr"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/mobile/antui/api/OnItemClickListener;

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 77
    .local v0, "posLength":I
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 78
    .local v2, "negLength":I
    :goto_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 79
    return-void

    .line 81
    :cond_2
    const/4 v3, 0x1

    .line 82
    .local v3, "isHorizon":Z
    add-int v4, v0, v2

    const/16 v5, 0x8

    if-le v4, v5, :cond_3

    .line 83
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    const/4 v5, 0x0

    .line 84
    .local v5, "paint":Landroid/text/TextPaint;
    move-object v5, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE4:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 86
    .local v4, "textLength":F
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v6

    aget v1, v6, v1

    iget v6, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->horizonMaskSpace:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/antui/R$dimen;->notice_max_button_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    .line 87
    .local v1, "maxLength":F
    cmpl-float v6, v4, v1

    if-lez v6, :cond_3

    .line 88
    const/4 v3, 0x0

    .line 92
    .end local v1    # "maxLength":F
    .end local v4    # "textLength":F
    .end local v5    # "paint":Landroid/text/TextPaint;
    :cond_3
    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->addHorizonButtonView(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V

    return-void

    .line 95
    :cond_4
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->addDividerView()V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, "data":Ljava/util/List;
    if-eqz v0, :cond_5

    .line 98
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_5
    if-eqz v2, :cond_6

    .line 101
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_6
    invoke-virtual {p0, v1, p3}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->addListButtonView(Ljava/util/List;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V

    .line 105
    .end local v1    # "data":Ljava/util/List;
    return-void
.end method

.method public setButtonStyle(Ljava/util/List;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V
    .locals 0
    .param p1, "data"    # Ljava/util/List;
    .param p2, "listener"    # Lcom/alipay/mobile/antui/api/OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/antui/api/OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->addListButtonView(Ljava/util/List;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V

    .line 110
    return-void
.end method

.method public show()V
    .locals 4

    .line 67
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUDialog;->show()V

    .line 68
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 69
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v1

    .line 70
    .local v1, "width_height":[I
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->horizonMaskSpace:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    return-void
.end method
