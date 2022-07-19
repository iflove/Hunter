.class public Lcom/alipay/mobile/antui/profession/AUQRCodeView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUQRCodeView.java"


# instance fields
.field private mAvatarDescription:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mAvatarImage:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mAvatarName:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mButton:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private mButtonContent:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mCodeDescription:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

.field private mCodeImage:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mCodeTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mSaveView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_qr_code_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setOrientation(I)V

    .line 57
    sget v0, Lcom/alipay/mobile/antui/R$color;->qr_background_color:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setBackgroundResource(I)V

    .line 58
    sget v0, Lcom/alipay/mobile/antui/R$id;->save_view:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mSaveView:Landroid/view/View;

    .line 59
    sget v0, Lcom/alipay/mobile/antui/R$id;->avatar_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mAvatarImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 60
    sget v0, Lcom/alipay/mobile/antui/R$id;->avatar_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mAvatarName:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 61
    sget v0, Lcom/alipay/mobile/antui/R$id;->avatar_description:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mAvatarDescription:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 62
    sget v0, Lcom/alipay/mobile/antui/R$id;->qr_code_image:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 63
    sget v0, Lcom/alipay/mobile/antui/R$id;->qr_code_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 64
    sget v0, Lcom/alipay/mobile/antui/R$id;->qr_code_description:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeDescription:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$id;->qr_code_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButton:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 66
    sget v0, Lcom/alipay/mobile/antui/R$id;->qr_code_button_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 67
    sget v0, Lcom/alipay/mobile/antui/R$id;->qr_code_button_content:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonContent:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setCompoundDrawablePadding(I)V

    .line 70
    return-void
.end method


# virtual methods
.method public getAvatarImage()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mAvatarImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public getAvatarName()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mAvatarName:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getButton()Lcom/alipay/mobile/antui/basic/AULinearLayout;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButton:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    return-object v0
.end method

.method public getButtonContent()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonContent:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getButtonTitle()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getCodeDescription()Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeDescription:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    return-object v0
.end method

.method public getCodeImage()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public getCodeTitle()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getSaveView()Landroid/view/View;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mSaveView:Landroid/view/View;

    return-object v0
.end method

.method public getSaveViewBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mSaveView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mSaveView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$color;->qr_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mSaveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mSaveView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method public setAvatarDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mAvatarDescription:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method public setAvatarName(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mAvatarName:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public setButtonContent(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/CharSequence;

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonContent:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 204
    return-void
.end method

.method public setButtonInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setButtonInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 127
    return-void
.end method

.method public setButtonInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "content"    # Ljava/lang/CharSequence;
    .param p3, "isToken"    # Z

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setButtonVisibility(Z)V

    .line 138
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setButtonToken(Z)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setButtonTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setButtonContent(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setButtonTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setButtonVisibility(Z)V

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    return-void
.end method

.method public setButtonToken(Z)V
    .locals 7
    .param p1, "isToken"    # Z

    .line 159
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->qr_code_bg_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 161
    .local v1, "size":I
    new-instance v2, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;

    const/4 v5, -0x1

    sget v6, Lcom/alipay/mobile/antui/R$string;->iconfont_systen_key:I

    invoke-direct {v4, v5, v1, v6}, Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;-><init>(III)V

    invoke-direct {v2, v3, v4}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;-><init>(Landroid/content/Context;Lcom/alipay/mobile/antui/iconfont/model/IconPaintBuilder;)V

    move-object v3, v0

    .line 162
    .local v3, "drawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v1, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;->setBounds(IIII)V

    .line 163
    iget-object v2, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v2, v3, v0, v0, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    .end local v1    # "size":I
    .end local v3    # "drawable":Lcom/alipay/mobile/antui/iconfont/AUIconDrawable;
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButtonTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 167
    return-void
.end method

.method public setButtonVisibility(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mButton:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setVisibility(I)V

    .line 190
    return-void
.end method

.method public setCodeDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeDescription:Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEmptyGoneTextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method public setCodeImageSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 177
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 178
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeImage:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 180
    return-void
.end method

.method public setCodeInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .line 97
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setCodeTitle(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->setCodeDescription(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setCodeTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/antui/profession/AUQRCodeView;->mCodeTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
