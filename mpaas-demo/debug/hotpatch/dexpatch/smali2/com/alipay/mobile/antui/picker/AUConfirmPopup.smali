.class public abstract Lcom/alipay/mobile/antui/picker/AUConfirmPopup;
.super Lcom/alipay/mobile/antui/picker/AUCenterPopup;
.source "AUConfirmPopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/alipay/mobile/antui/picker/AUCenterPopup<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field protected cancelText:Ljava/lang/CharSequence;

.field protected cancelTextColor:I

.field protected cancelVisible:Z

.field protected submitText:Ljava/lang/CharSequence;

.field protected submitTextColor:I

.field protected titleText:Ljava/lang/CharSequence;

.field protected titleTextColor:I

.field protected topBackgroundColor:I

.field protected topLineColor:I

.field protected topLineVisible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 42
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/picker/AUCenterPopup;-><init>(Landroid/app/Activity;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topLineVisible:Z

    .line 26
    const v1, -0x222223

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topLineColor:I

    .line 27
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topBackgroundColor:I

    .line 28
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelVisible:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 30
    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 31
    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->titleText:Ljava/lang/CharSequence;

    .line 32
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelTextColor:I

    .line 33
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitTextColor:I

    .line 34
    iput v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->titleTextColor:I

    .line 43
    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 44
    const v0, 0x104000a

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 45
    return-void
.end method


# virtual methods
.method protected abstract makeCenterView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method protected final makeContentView()Landroid/view/View;
    .locals 8

    .line 171
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 172
    .local v2, "rootLayout":Landroid/widget/LinearLayout;
    move-object v2, v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->date_picker_bg:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 175
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 176
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 177
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    .line 179
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->makeTitle()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-boolean v5, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topLineVisible:Z

    if-eqz v5, :cond_0

    .line 183
    new-instance v5, Landroid/view/View;

    iget-object v6, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object v6, v1

    .line 184
    .local v6, "lineView":Landroid/view/View;
    move-object v6, v5

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topLineColor:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 182
    .end local v6    # "lineView":Landroid/view/View;
    :cond_0
    move-object v6, v1

    .line 190
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->makeCenterView()Landroid/view/View;

    move-result-object v0

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v4, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->makeFooterView()Landroid/view/View;

    move-result-object v0

    move-object v3, v6

    .line 194
    .local v3, "footerView":Landroid/view/View;
    move-object v3, v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->makeOperationButton()Landroid/view/View;

    move-result-object v0

    .line 200
    .local v1, "headerView":Landroid/view/View;
    move-object v1, v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    :cond_2
    return-object v2
.end method

.method protected makeFooterView()Landroid/view/View;
    .locals 1

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method protected makeOperationButton()Landroid/view/View;
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->confim_dialog_bottom_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v2

    .line 230
    .local v1, "view":Landroid/view/View;
    move-object v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$id;->date_dialog_confirm:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUButton;

    .line 231
    .local v0, "submitButton":Lcom/alipay/mobile/antui/basic/AUButton;
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :cond_0
    new-instance v2, Lcom/alipay/mobile/antui/picker/AUConfirmPopup$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup$1;-><init>(Lcom/alipay/mobile/antui/picker/AUConfirmPopup;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    sget v2, Lcom/alipay/mobile/antui/R$id;->date_dialog_cancle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUButton;

    .line 242
    .local v2, "cancelButton":Lcom/alipay/mobile/antui/basic/AUButton;
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_1
    new-instance v3, Lcom/alipay/mobile/antui/picker/AUConfirmPopup$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup$2;-><init>(Lcom/alipay/mobile/antui/picker/AUConfirmPopup;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-object v1
.end method

.method protected makeTitle()Landroid/view/View;
    .locals 6

    .line 208
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "title":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->titleText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->titleText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_TITLE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x0

    .line 215
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object v3, v1

    iget-object v4, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-static {v4, v5}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 216
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v1, v4}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 218
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    return-object v0
.end method

.method protected onCancel()V
    .locals 0

    .line 286
    return-void
.end method

.method protected onSubmit()V
    .locals 0

    .line 279
    return-void
.end method

.method public setCancelText(I)V
    .locals 1
    .param p1, "textRes"    # I

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 99
    return-void
.end method

.method public setCancelText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "cancelText"    # Ljava/lang/CharSequence;

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelText:Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public setCancelTextColor(I)V
    .locals 0
    .param p1, "cancelTextColor"    # I

    .line 143
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelTextColor:I

    .line 144
    return-void
.end method

.method public setCancelVisible(Z)V
    .locals 0
    .param p1, "cancelVisible"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->cancelVisible:Z

    .line 81
    return-void
.end method

.method public setSubmitText(I)V
    .locals 1
    .param p1, "textRes"    # I

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 117
    return-void
.end method

.method public setSubmitText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "submitText"    # Ljava/lang/CharSequence;

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitText:Ljava/lang/CharSequence;

    .line 108
    return-void
.end method

.method public setSubmitTextColor(I)V
    .locals 0
    .param p1, "submitTextColor"    # I

    .line 152
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->submitTextColor:I

    .line 153
    return-void
.end method

.method public setTitleText(I)V
    .locals 1
    .param p1, "textRes"    # I

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->titleText:Ljava/lang/CharSequence;

    .line 135
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "titleText"    # Ljava/lang/CharSequence;

    .line 125
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->titleText:Ljava/lang/CharSequence;

    .line 126
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0
    .param p1, "titleTextColor"    # I

    .line 161
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->titleTextColor:I

    .line 162
    return-void
.end method

.method public setTopBackgroundColor(I)V
    .locals 0
    .param p1, "topBackgroundColor"    # I

    .line 62
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topBackgroundColor:I

    .line 63
    return-void
.end method

.method public setTopLineColor(I)V
    .locals 0
    .param p1, "topLineColor"    # I

    .line 53
    iput p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topLineColor:I

    .line 54
    return-void
.end method

.method public setTopLineVisible(Z)V
    .locals 0
    .param p1, "topLineVisible"    # Z

    .line 71
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->topLineVisible:Z

    .line 72
    return-void
.end method
