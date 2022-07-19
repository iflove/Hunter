.class public Lcom/alipay/mobile/antui/iconfont/AUIconView;
.super Lcom/alipay/mobile/antui/basic/AUFrameLayout;
.source "AUIconView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/iconfont/IconfontInterface;


# instance fields
.field private iconfontFileName:Ljava/lang/String;

.field private imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mEnabled:Z

.field private mIconfontBundle:Ljava/lang/String;

.field private mIconfontColor:I

.field private mIconfontColorStateList:Landroid/content/res/ColorStateList;

.field private mIconfontSize:F

.field private mImageSize:I

.field private mIsColorInt:Z

.field private mTextViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/antui/basic/AUTextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v0, "default"

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontBundle:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mEnabled:Z

    .line 56
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontSize:F

    .line 57
    const/4 v2, 0x0

    iput v2, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mImageSize:I

    .line 58
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIsColorInt:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontColorStateList:Landroid/content/res/ColorStateList;

    .line 61
    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->iconfontFileName:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->IconView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v1, "ta":Landroid/content/res/TypedArray;
    move-object v1, v0

    sget v3, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontBundle:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontBundle:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 78
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontFileName:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontFileName:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFileName(Ljava/lang/String;)V

    .line 81
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontFonts:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontFonts:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fontsStr":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 87
    .local v3, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "JSONException = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "IconView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "fontsStr":Ljava/lang/String;
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontUnicode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontUnicode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 93
    :cond_3
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontSize:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 94
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontSize:I

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 96
    :cond_4
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 97
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconfontColor:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 100
    :cond_5
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconImageSize:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 101
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_iconImageSize:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mImageSize:I

    .line 103
    :cond_6
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_imageresid:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->IconView_imageresid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 106
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private clearView()V
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->removeAllViews()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 273
    return-void
.end method

.method public static getAlipayNumberTtfPath()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "antui_res"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AlipayNumber.ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTTFFilePath()Ljava/lang/String;
    .locals 2

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getIconfontBundle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getIconfontFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ttf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initImageView()V
    .locals 2

    .line 207
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 208
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    iget-boolean v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setEnabled(Z)V

    .line 210
    iget v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mImageSize:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageViewSize(I)V

    .line 211
    return-void
.end method

.method private setupTextViewCS(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 276
    if-nez p1, :cond_0

    .line 277
    return-void

    .line 278
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIsColorInt:Z

    if-eqz v0, :cond_1

    .line 279
    iget v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontColorStateList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 281
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 283
    :cond_2
    :goto_0
    iget v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 284
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 286
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 287
    return-void
.end method

.method private setupTypeface()V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getIconfontBundle()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getTTFFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/antui/iconfont/manager/TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 119
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 141
    return-void
.end method

.method public getIconfontBundle()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontBundle:Ljava/lang/String;

    return-object v0
.end method

.method public getIconfontContext()Landroid/content/Context;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getIconfontFileName()Ljava/lang/String;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->iconfontFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->clearView()V

    .line 403
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->initImageView()V

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->addView(Landroid/view/View;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 442
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 443
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 444
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 425
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->setEnabled(Z)V

    .line 426
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mEnabled:Z

    .line 427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 428
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setIconByName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 449
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "string"

    invoke-static {v1, p1, v2}, Lcom/alipay/mobile/antui/utils/ResourceUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 450
    return-void
.end method

.method public setIconTextMinHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 378
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMinHeight(I)V

    .line 379
    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method

.method public setIconfontBundle(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1
    .param p1, "mBundleName"    # Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontBundle:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setupTypeface()V

    .line 126
    :cond_0
    return-object p0
.end method

.method public setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 3
    .param p1, "color"    # I

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIsColorInt:Z

    .line 315
    iput p1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontColor:I

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 317
    .local v1, "textView":Lcom/alipay/mobile/antui/basic/AUTextView;
    move-object v1, v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 318
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setAlpha(F)V

    .line 319
    .end local v1    # "textView":Lcom/alipay/mobile/antui/basic/AUTextView;
    goto :goto_0

    .line 320
    :cond_0
    return-object p0
.end method

.method public setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 3
    .param p1, "colorStr"    # Ljava/lang/String;

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 293
    :try_start_0
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 294
    .local v1, "colorArray":[Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, v1

    if-ne v0, v2, :cond_0

    .line 295
    invoke-static {p1}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_0

    .line 296
    :cond_0
    if-eqz v1, :cond_1

    array-length v0, v1

    if-le v0, v2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->genTextSelector(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v1    # "colorArray":[Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u989c\u8272\u8f6c\u578b\u9519\u8bef Exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-object p0
.end method

.method public bridge synthetic setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColor(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object p1

    return-object p1
.end method

.method public setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 2
    .param p1, "color"    # Landroid/content/res/ColorStateList;

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIsColorInt:Z

    .line 331
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontColorStateList:Landroid/content/res/ColorStateList;

    .line 332
    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 334
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 335
    goto :goto_0

    .line 337
    :cond_0
    return-object p0
.end method

.method public setIconfontFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconfontFileName"    # Ljava/lang/String;

    .line 411
    iput-object p1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->iconfontFileName:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 6

    .line 230
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->clearView()V

    .line 234
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 235
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_4

    .line 237
    const-string/jumbo v2, "unicode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    const-string v3, "color"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v3, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 240
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 241
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-direct {p0, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setupTextViewCS(Landroid/widget/TextView;)V

    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    :try_start_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 246
    const/4 v4, 0x1

    if-eqz v2, :cond_1

    array-length v5, v2

    if-ne v5, v4, :cond_1

    .line 247
    invoke-static {v1}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    .line 248
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 249
    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    array-length v1, v2

    if-le v1, v4, :cond_2

    .line 250
    nop

    .line 251
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 250
    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->genTextSelector(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_2

    .line 253
    invoke-virtual {v3, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_2
    goto :goto_1

    .line 256
    :catch_0
    move-exception v1

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u989c\u8272\u8f6c\u578b\u9519\u8bef Exception = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->addView(Landroid/view/View;)V

    .line 234
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setupTypeface()V

    .line 266
    return-object p0

    .line 231
    :cond_6
    :goto_2
    return-object p0
.end method

.method public bridge synthetic setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontFonts(Lorg/json/JSONArray;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object p1

    return-object p1
.end method

.method public setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 3
    .param p1, "size"    # F

    .line 361
    iput p1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mIconfontSize:F

    .line 362
    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 364
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 365
    goto :goto_0

    .line 367
    :cond_0
    return-object p0
.end method

.method public setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 3
    .param p1, "size"    # Ljava/lang/String;

    const/4 v0, 0x0

    .line 344
    .local v0, "iconfontSize":F
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alipay/mobile/antui/iconfont/util/UIPropUtil;->getPx(Ljava/lang/String;Landroid/content/Context;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    move v0, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 346
    const/high16 v0, -0x40800000    # -1.0f

    .line 350
    :cond_0
    goto :goto_0

    .line 348
    :catch_0
    move-exception v1

    .line 349
    const/high16 v0, -0x40800000    # -1.0f

    .line 351
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 352
    return-object p0
.end method

.method public bridge synthetic setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object p1

    return-object p1
.end method

.method public setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 2
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 150
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 151
    goto :goto_0

    .line 153
    :cond_0
    return-object p0
.end method

.method public bridge synthetic setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontTypeface(Landroid/graphics/Typeface;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object p1

    return-object p1
.end method

.method public setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setText(Ljava/lang/String;Z)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object p1

    return-object p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->clearView()V

    .line 222
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->initImageView()V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->addView(Landroid/view/View;)V

    .line 225
    return-object p0
.end method

.method public setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1
    .param p1, "resId"    # I

    .line 196
    if-nez p1, :cond_0

    .line 197
    return-object p0

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->clearView()V

    .line 200
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->initImageView()V

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageResource(I)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->addView(Landroid/view/View;)V

    .line 203
    return-object p0
.end method

.method public bridge synthetic setImageResource(I)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object p1

    return-object p1
.end method

.method public setImageViewSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 383
    if-nez p1, :cond_0

    .line 384
    return-void

    .line 386
    :cond_0
    iput p1, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mImageSize:I

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    if-eqz v0, :cond_2

    .line 388
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    .line 389
    .local v1, "lp":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 390
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 391
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    .line 393
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v1, v0

    .line 395
    :goto_0
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 396
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->imageView:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    .end local v1    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 434
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUFrameLayout;->setImportantForAccessibility(I)V

    .line 435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 436
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;Z)Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isIconfont"    # Z

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    return-object p0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->clearView()V

    .line 172
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 173
    .local v2, "textView":Lcom/alipay/mobile/antui/basic/AUTextView;
    move-object v2, v0

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 174
    invoke-virtual {v2, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setupTextViewCS(Landroid/widget/TextView;)V

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/antui/iconfont/AUIconView;->mTextViews:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 179
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v0

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 180
    invoke-virtual {p0, v2, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    if-eqz p2, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setupTypeface()V

    .line 183
    const-string v0, " "

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    :cond_1
    return-object p0
.end method
