.class public Lcom/alipay/mobile/antui/basic/AUTitleBar;
.super Lcom/alipay/mobile/antui/basic/AURelativeLayout;
.source "AUTitleBar.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUTitleBar$a;
    }
.end annotation


# static fields
.field private static OPACITY_ARRAY:[I


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private isTextLeft:Z

.field private isTextRight:Z

.field private mBackBtnColor:I

.field private mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mBackListener:Lcom/alipay/mobile/antui/basic/AUTitleBar$a;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field public mDefaultScrollHeight:I

.field private mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mLeftIconColor:I

.field private mLeftIconSize:I

.field private mLeftTextColor:I

.field private mLeftTextSize:I

.field private mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

.field private mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mRightIconColor:I

.field private mRightIconSize:I

.field private mRightTextColor:I

.field private mRightTextSize:I

.field private mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

.field private mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTitleTextColor:I

.field private mTitleTextSize:I

.field private mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

.field private segment:Lcom/alipay/mobile/antui/segement/AUSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->OPACITY_ARRAY:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1e
        0x6b
        0xbf
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mDefaultScrollHeight:I

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mDefaultScrollHeight:I

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mDefaultScrollHeight:I

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUTitleBar;)Lcom/alipay/mobile/antui/basic/AUTitleBar$a;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUTitleBar;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackListener:Lcom/alipay/mobile/antui/basic/AUTitleBar$a;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUTitleBar;)Lcom/alipay/mobile/antui/basic/AUProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUTitleBar;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    return-object v0
.end method

.method private checkSpecialUnicode(Ljava/lang/String;)Z
    .locals 2
    .param p1, "unicode"    # Ljava/lang/String;

    .line 290
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->iconfont_user_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->iconfont_add_user:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 290
    return v0

    .line 291
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private getStateColor(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "normalColor"    # I

    .line 911
    const v0, 0x66ffffff

    and-int/2addr v0, p1

    .line 912
    .local v0, "pressed":I
    invoke-static {p1, v0, v0}, Lcom/alipay/mobile/antui/utils/StateListUtils;->getColorStateList(III)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 98
    if-eqz p2, :cond_0

    .line 99
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->titleBar:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 100
    .local v1, "array":Landroid/content/res/TypedArray;
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->initStyleByTheme(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 103
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .end local v1    # "array":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->initStyleByTheme(Landroid/content/Context;)V

    .line 107
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setFont()V

    .line 108
    return-void
.end method

.method private initBackButton()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUTitleBar$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar$1;-><init>(Lcom/alipay/mobile/antui/basic/AUTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method private setFont()V
    .locals 3

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 278
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftBtnFont()V

    .line 279
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightBtnFont()V

    .line 280
    return-void
.end method

.method private setLeftBtnFont()V
    .locals 3

    .line 365
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextLeft:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setIconFont(Lcom/alipay/mobile/antui/iconfont/AUIconView;II)V

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setIconFont(Lcom/alipay/mobile/antui/iconfont/AUIconView;II)V

    .line 370
    return-void
.end method

.method private setLeftButtonStyle(Z)V
    .locals 0
    .param p1, "isText"    # Z

    .line 325
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextLeft:Z

    .line 326
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftBtnFont()V

    .line 327
    return-void
.end method

.method private setLeftButtonUnicode(Ljava/lang/String;)V
    .locals 2
    .param p1, "unicode"    # Ljava/lang/String;

    .line 300
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->checkSpecialUnicode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->titlebar_icon_special_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    .line 302
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 305
    return-void
.end method

.method private setRightBtnFont()V
    .locals 3

    .line 373
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextRight:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setIconFont(Lcom/alipay/mobile/antui/iconfont/AUIconView;II)V

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setIconFont(Lcom/alipay/mobile/antui/iconfont/AUIconView;II)V

    .line 378
    return-void
.end method

.method private setRightButtonStyle(Z)V
    .locals 0
    .param p1, "isText"    # Z

    .line 335
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextRight:Z

    .line 336
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightBtnFont()V

    .line 337
    return-void
.end method

.method private setRightButtonUnicode(Ljava/lang/String;)V
    .locals 2
    .param p1, "unicode"    # Ljava/lang/String;

    .line 308
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->checkSpecialUnicode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->attrs:Landroid/util/AttributeSet;

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->titlebar_icon_special_size:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->titlebar_icon_special_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    .line 314
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 317
    return-void
.end method


# virtual methods
.method public addButtonView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 963
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v2, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->addButtonView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 964
    return-void
.end method

.method public addButtonView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 991
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 992
    return-void
.end method

.method public addButtonViewToLeft(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 981
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 982
    .local v0, "index":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->addButtonView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 983
    return-void
.end method

.method public addButtonViewToRight(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 971
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 972
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->addButtonView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 973
    return-void
.end method

.method public addSubTitleView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 510
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 511
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    sget v2, Lcom/alipay/mobile/antui/R$id;->title_text:I

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 512
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_text:I

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 513
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    return-void
.end method

.method public attachFlagToLeftBtn(Landroid/view/View;)V
    .locals 2
    .param p1, "flagView"    # Landroid/view/View;

    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->attachFlagView(Lcom/alipay/mobile/antui/basic/AURelativeLayout;Landroid/view/View;Landroid/view/View;)V

    .line 878
    return-void
.end method

.method public attachFlagToRightBtn(Landroid/view/View;)V
    .locals 2
    .param p1, "flagView"    # Landroid/view/View;

    .line 885
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->attachFlagView(Lcom/alipay/mobile/antui/basic/AURelativeLayout;Landroid/view/View;Landroid/view/View;)V

    .line 886
    return-void
.end method

.method public attachFlagView(Lcom/alipay/mobile/antui/basic/AURelativeLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 6
    .param p1, "container"    # Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "flagView"    # Landroid/view/View;

    .line 894
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 895
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 896
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 899
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 900
    .local v2, "height":I
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 901
    .local v0, "width":I
    invoke-virtual {p3, v0, v2}, Landroid/view/View;->measure(II)V

    .line 902
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 904
    .local v3, "flagHeight":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->flag_top_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 905
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/antui/R$dimen;->flag_left_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 906
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 907
    invoke-virtual {p1, p3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->addView(Landroid/view/View;)V

    .line 908
    return-void
.end method

.method public getBackButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getLeftButton()Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    return-object v0
.end method

.method public getLeftButtonIconView()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getRightButton()Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    return-object v0
.end method

.method public getRightButtonIconView()Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-object v0
.end method

.method public getSegment()Lcom/alipay/mobile/antui/segement/AUSegment;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->segment:Lcom/alipay/mobile/antui/segement/AUSegment;

    return-object v0
.end method

.method public getTitleBarRelative()Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    return-object v0
.end method

.method public getTitleContainer()Lcom/alipay/mobile/antui/basic/AURelativeLayout;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    return-object v0
.end method

.method public getTitleText()Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getTitleView_SetBefore()Landroid/view/View;
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 1039
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleScrollChange(I)V
    .locals 1
    .param p1, "currentHeight"    # I

    .line 755
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mDefaultScrollHeight:I

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->handleScrollChange(II)V

    .line 756
    return-void
.end method

.method public handleScrollChange(II)V
    .locals 1
    .param p1, "totalHeight"    # I
    .param p2, "currentHeight"    # I

    .line 766
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->handleScrollChange(IILcom/alipay/mobile/antui/api/ScrollTitleChangeListener;)V

    .line 767
    return-void
.end method

.method public handleScrollChange(IILcom/alipay/mobile/antui/api/ScrollTitleChangeListener;)V
    .locals 7
    .param p1, "totalHeight"    # I
    .param p2, "currentHeight"    # I
    .param p3, "listener"    # Lcom/alipay/mobile/antui/api/ScrollTitleChangeListener;

    .line 770
    if-gtz p1, :cond_0

    .line 771
    iget p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mDefaultScrollHeight:I

    .line 773
    :cond_0
    if-gez p2, :cond_1

    .line 774
    return-void

    .line 777
    :cond_1
    const/4 v0, 0x0

    .line 778
    .local v0, "isChange":Z
    mul-int/lit8 v1, p2, 0x64

    div-int/2addr v1, p1

    const/4 v2, 0x0

    .line 779
    .local v2, "percent":I
    move v2, v1

    const/16 v3, 0x50

    if-ge v1, v3, :cond_2

    .line 780
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setColorWhiteStyle()V

    goto :goto_0

    .line 782
    :cond_2
    const/4 v0, 0x1

    .line 783
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setColorOriginalStyle()V

    .line 785
    :goto_0
    div-int/lit8 v1, v2, 0x14

    const/4 v3, 0x5

    if-lt v1, v3, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :cond_3
    div-int/lit8 v1, v2, 0x14

    .line 786
    .local v1, "index":I
    :goto_1
    rem-int/lit8 v4, v2, 0x14

    .line 789
    .local v4, "unit":I
    if-lez v1, :cond_4

    if-ge v1, v3, :cond_4

    .line 790
    sget-object v3, Lcom/alipay/mobile/antui/basic/AUTitleBar;->OPACITY_ARRAY:[I

    aget v5, v3, v1

    add-int/lit8 v6, v1, 0x1

    aget v6, v3, v6

    aget v3, v3, v1

    sub-int/2addr v6, v3

    mul-int v6, v6, v4

    div-int/lit8 v6, v6, 0x14

    add-int/2addr v5, v6

    .line 791
    .local v5, "alpha":I
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .end local v5    # "alpha":I
    goto :goto_2

    .line 792
    :cond_4
    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    goto :goto_4

    .line 793
    :cond_6
    :goto_3
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v3}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v5, Lcom/alipay/mobile/antui/basic/AUTitleBar;->OPACITY_ARRAY:[I

    aget v5, v5, v1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 796
    :goto_4
    if-eqz p3, :cond_7

    .line 797
    invoke-interface {p3, v0}, Lcom/alipay/mobile/antui/api/ScrollTitleChangeListener;->onChange(Z)V

    .line 799
    :cond_7
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 112
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->attrs:Landroid/util/AttributeSet;

    .line 113
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_title_bar:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_bar_kernel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 115
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_bar_horizon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 116
    sget v0, Lcom/alipay/mobile/antui/R$id;->back_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 117
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 118
    sget v0, Lcom/alipay/mobile/antui/R$id;->left_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 119
    sget v0, Lcom/alipay/mobile/antui/R$id;->right_text:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 120
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_bar_progress:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    .line 121
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_container:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 122
    sget v0, Lcom/alipay/mobile/antui/R$id;->right_container_1:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 123
    sget v0, Lcom/alipay/mobile/antui/R$id;->right_container_2:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    .line 124
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->initBackButton()V

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->drawable_titlebar_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_TITLE:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    .line 128
    invoke-static {p1, p2, p0}, Lcom/alipay/mobile/antui/screenadpt/AUScreenUtils;->checkApFlag(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/mobile/antui/basic/AUViewInterface;)Z

    move-result v0

    const/high16 v1, 0x43140000    # 148.0f

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->title_text_size:I

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    .line 130
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_icon_size:I

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    .line 131
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_text_size:I

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_icon_size:I

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_text_size:I

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getApFromDimen(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    .line 134
    invoke-static {p1}, Lcom/alipay/mobile/antui/screenadpt/AUScreenAdaptTool;->getAPDensity(Landroid/content/Context;)F

    move-result v0

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mDefaultScrollHeight:I

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->title_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    .line 138
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    .line 140
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->button_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mDefaultScrollHeight:I

    .line 143
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    .line 145
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    .line 146
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_LINK:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextLeft:Z

    .line 149
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextRight:Z

    .line 150
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 201
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_backgroundDrawable:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_backgroundDrawable:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 205
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_backIconColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_backIconColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    .line 209
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_titleTextSize:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    .line 210
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_titleTextColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    .line 213
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftIconColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftIconColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    .line 216
    :cond_2
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftIconSize:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    .line 217
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftTextColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftTextColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    .line 220
    :cond_3
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftTextSize:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    .line 223
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightIconColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightIconColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    .line 226
    :cond_4
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightIconSize:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    .line 227
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightTextColor:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightTextColor:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    .line 230
    :cond_5
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightTextSize:I

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    .line 231
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 154
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_titleText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->titleBar_titleText:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftIconUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 159
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftIconUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonUnicode(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftIconResid:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v4, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftIconResid:I

    invoke-virtual {p3, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setBtnImage(Lcom/alipay/mobile/antui/iconfont/AUIconView;I)V

    goto :goto_0

    .line 162
    :cond_2
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_leftText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonUnicode(Ljava/lang/String;)V

    .line 164
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextLeft:Z

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 169
    :goto_0
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightIconUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightIconUnicode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonUnicode(Ljava/lang/String;)V

    return-void

    .line 171
    :cond_4
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightIconResid:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    sget v1, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightIconResid:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setBtnImage(Lcom/alipay/mobile/antui/iconfont/AUIconView;I)V

    return-void

    .line 173
    :cond_5
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->titleBar_rightText:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonUnicode(Ljava/lang/String;)V

    .line 175
    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->isTextRight:Z

    return-void

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 179
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    invoke-static {}, Lcom/alipay/mobile/antui/theme/AUThemeManager;->getCurrentTheme()Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    move-result-object v0

    .line 184
    .local v0, "theme":Lcom/alipay/mobile/antui/theme/AUAbsTheme;
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_BACKGROUND_COLOR:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDrawable(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 185
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_COLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    .line 186
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TITLE_TEXTSIZE:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    .line 187
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TITLE_TEXTCOLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    .line 188
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_COLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    .line 189
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_SIZE:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    .line 190
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTCOLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    .line 191
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTSIZE:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    .line 192
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_COLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    .line 193
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_SIZE:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    .line 194
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTCOLOR:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    .line 195
    sget-object v1, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTSIZE:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    .line 196
    return-void
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 1046
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setAP:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTitleBar"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    return-void
.end method

.method public setBackBtnInfo(Ljava/lang/Object;)V
    .locals 2
    .param p1, "drawable"    # Ljava/lang/Object;

    .line 540
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    return-void

    .line 542
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 545
    :cond_1
    return-void
.end method

.method public setBackBtnInfo(Ljava/lang/Object;II)V
    .locals 2
    .param p1, "drawable"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "color"    # I

    .line 523
    if-eqz p3, :cond_0

    .line 524
    iput p3, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    .line 526
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_0

    .line 528
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 530
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageViewSize(I)V

    .line 532
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {p0, v0, p2, p3}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setIconFont(Lcom/alipay/mobile/antui/iconfont/AUIconView;II)V

    .line 533
    return-void
.end method

.method public setBackButtonGone()V
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 828
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    if-nez v0, :cond_0

    .line 462
    return-void

    .line 464
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 469
    return-void
.end method

.method public setBtnImage(Lcom/alipay/mobile/antui/iconfont/AUIconView;I)V
    .locals 0
    .param p1, "iconView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "resId"    # I

    .line 345
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 346
    return-void
.end method

.method public setColorOriginalStyle()V
    .locals 2

    .line 817
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 818
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 819
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftBtnFont()V

    .line 820
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightBtnFont()V

    .line 821
    return-void
.end method

.method public setColorWhiteStyle()V
    .locals 3

    .line 805
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_UNIVERSAL_BG:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 806
    .local v0, "whiteColor":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 807
    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 808
    .local v1, "whiteSelector":Landroid/content/res/ColorStateList;
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 809
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 810
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 811
    return-void
.end method

.method public setIconFont(Lcom/alipay/mobile/antui/iconfont/AUIconView;II)V
    .locals 4
    .param p1, "iconView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "size"    # I
    .param p3, "color"    # I

    .line 355
    if-eqz p2, :cond_0

    .line 356
    int-to-float v0, p2

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 357
    int-to-double v0, p2

    const-wide v2, 0x3ff6666666666666L    # 1.4

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconTextMinHeight(I)V

    .line 359
    :cond_0
    if-eqz p3, :cond_1

    .line 360
    invoke-direct {p0, p3}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontColorStates(Landroid/content/res/ColorStateList;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 362
    :cond_1
    return-void
.end method

.method public setLeftBtnInfo(Ljava/lang/Object;IIZ)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "color"    # I
    .param p4, "isText"    # Z

    .line 555
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 556
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageViewSize(I)V

    goto :goto_0

    .line 558
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 559
    if-eqz p4, :cond_1

    .line 560
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonText(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonIcon(Ljava/lang/String;)V

    .line 565
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonFont(IIZ)V

    .line 566
    return-void
.end method

.method public setLeftButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setEnabled(Z)V

    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setEnabled(Z)V

    .line 618
    return-void
.end method

.method public setLeftButtonFont(IIZ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "color"    # I
    .param p3, "isText"    # Z

    .line 627
    if-eqz p3, :cond_2

    .line 628
    if-eqz p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    .line 629
    if-eqz p1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    :goto_1
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    goto :goto_4

    .line 631
    :cond_2
    if-eqz p2, :cond_3

    move v0, p2

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    :goto_2
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    .line 632
    if-eqz p1, :cond_4

    move v0, p1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    :goto_3
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    .line 634
    :goto_4
    invoke-direct {p0, p3}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonStyle(Z)V

    .line 635
    return-void
.end method

.method public setLeftButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 573
    if-nez p1, :cond_0

    .line 574
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    return-void

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 577
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonStyle(Z)V

    .line 578
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 581
    return-void
.end method

.method public setLeftButtonIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "unicode"    # Ljava/lang/String;

    .line 588
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    return-void

    .line 591
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonUnicode(Ljava/lang/String;)V

    .line 592
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonStyle(Z)V

    .line 593
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 595
    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 602
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 606
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setLeftButtonStyle(Z)V

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Left:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 609
    return-void
.end method

.method public setOnBackListener(Lcom/alipay/mobile/antui/basic/AUTitleBar$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/basic/AUTitleBar$a;

    .line 393
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackListener:Lcom/alipay/mobile/antui/basic/AUTitleBar$a;

    .line 394
    return-void
.end method

.method public setProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "progressDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    return-void
.end method

.method public setRightBtnInfo(Ljava/lang/Object;IIZ)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "color"    # I
    .param p4, "isText"    # Z

    .line 645
    instance-of v0, p1, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 646
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageViewSize(I)V

    goto :goto_0

    .line 648
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 649
    if-eqz p4, :cond_1

    .line 650
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonText(Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonIcon(Ljava/lang/String;)V

    .line 655
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonFont(IIZ)V

    .line 656
    return-void
.end method

.method public setRightButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 705
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setEnabled(Z)V

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setEnabled(Z)V

    .line 707
    return-void
.end method

.method public setRightButtonFont(IIZ)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "color"    # I
    .param p3, "isText"    # Z

    .line 716
    if-eqz p3, :cond_2

    .line 717
    if-eqz p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    .line 718
    if-eqz p1, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    :goto_1
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    goto :goto_4

    .line 720
    :cond_2
    if-eqz p2, :cond_3

    move v0, p2

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    :goto_2
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    .line 721
    if-eqz p1, :cond_4

    move v0, p1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    :goto_3
    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    .line 723
    :goto_4
    invoke-direct {p0, p3}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonStyle(Z)V

    .line 724
    return-void
.end method

.method public setRightButtonIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 663
    if-nez p1, :cond_0

    .line 664
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/antui/iconfont/IconfontInterface;

    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonStyle(Z)V

    .line 668
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 670
    return-void
.end method

.method public setRightButtonIcon(Ljava/lang/String;)V
    .locals 2
    .param p1, "unicode"    # Ljava/lang/String;

    .line 677
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    return-void

    .line 680
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonUnicode(Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonStyle(Z)V

    .line 682
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 684
    return-void
.end method

.method public setRightButtonText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setText(Ljava/lang/String;Z)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 695
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setRightButtonStyle(Z)V

    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightContainer_Right:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 698
    return-void
.end method

.method public setSearch2Title()V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    if-eqz v0, :cond_0

    .line 849
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setVisibility(I)V

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 852
    return-void
.end method

.method public setSearchColorOriginalStyle()V
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setColorOriginalStyle()V

    .line 861
    :cond_0
    return-void
.end method

.method public setSearchColorTransStyle()V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->setTransparentStyle()V

    .line 870
    :cond_0
    return-void
.end method

.method public setSegment([Ljava/lang/String;Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;)V
    .locals 4
    .param p1, "titles"    # [Ljava/lang/String;
    .param p2, "tabSwitchListener"    # Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;

    .line 921
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->removeAllViews()V

    .line 922
    new-instance v0, Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/segement/AUSegment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->segment:Lcom/alipay/mobile/antui/segement/AUSegment;

    .line 923
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/segement/AUSegment;->resetTabView([Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->segment:Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/segement/AUSegment;->setTabSwitchListener(Lcom/alipay/mobile/antui/segement/AUSegment$TabSwitchListener;)V

    .line 925
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->titlebar_segment_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 926
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 927
    sget v0, Lcom/alipay/mobile/antui/R$id;->title_bar_status_bar:I

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 928
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->segment:Lcom/alipay/mobile/antui/segement/AUSegment;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 929
    return-void
.end method

.method public setTitle2Search(Ljava/lang/String;)V
    .locals 2
    .param p1, "search"    # Ljava/lang/String;

    .line 836
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AUSearchView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    .line 837
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getSearchEditView()Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 838
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getSearchEditView()Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setFocusable(Z)V

    .line 839
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUSearchView;->getClearButton()Lcom/alipay/mobile/antui/iconfont/AUIconView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setVisibility(I)V

    .line 840
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->searchView:Lcom/alipay/mobile/antui/basic/AUSearchView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->addView(Landroid/view/View;)V

    .line 842
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 500
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;II)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # I
    .param p3, "textColor"    # I

    .line 486
    if-eqz p2, :cond_0

    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 489
    :cond_0
    if-eqz p3, :cond_1

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 492
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setTitleText(Ljava/lang/String;)V

    .line 493
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 5

    .line 1000
    if-nez p1, :cond_0

    .line 1001
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    if-eqz p1, :cond_3

    .line 1002
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->removeView(Landroid/view/View;)V

    .line 1003
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 1004
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->removeAllViews()V

    .line 1005
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    return-void

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    if-nez v0, :cond_1

    .line 1009
    new-instance v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 1010
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1011
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1012
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1013
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1014
    const/16 v2, 0x13

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1015
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setGravity(I)V

    .line 1016
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarHorizon:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    goto :goto_0

    .line 1018
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->removeAllViews()V

    .line 1020
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1021
    if-nez v0, :cond_2

    .line 1022
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1024
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleViewContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v1, p1, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1025
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->setVisibility(I)V

    .line 1028
    :cond_3
    return-void
.end method

.method public startProgressBar()V
    .locals 2

    .line 730
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUTitleBar$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar$2;-><init>(Lcom/alipay/mobile/antui/basic/AUTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 736
    return-void
.end method

.method public stopProgressBar()V
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mProgressBar:Lcom/alipay/mobile/antui/basic/AUProgressBar;

    new-instance v1, Lcom/alipay/mobile/antui/basic/AUTitleBar$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar$3;-><init>(Lcom/alipay/mobile/antui/basic/AUTitleBar;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 748
    return-void
.end method

.method public toIOSStyle(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .line 936
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/antui/utils/ToolUtils;->isAlipayApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontSize(F)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 940
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackButton:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$string;->iconfont_back:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$string;->back:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setIconfontUnicode(Ljava/lang/String;)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 941
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleContainer:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->removeAllViews()V

    .line 942
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 943
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v2, v0

    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 944
    const/4 v0, 0x3

    sget v3, Lcom/alipay/mobile/antui/R$id;->title_bar_status_bar:I

    invoke-virtual {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 945
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;-><init>(Landroid/content/Context;)V

    .line 946
    .local v1, "centerTitle":Lcom/alipay/mobile/antui/basic/AUTextView;
    move-object v1, v0

    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setGravity(I)V

    .line 947
    const/4 v0, 0x0

    iget v3, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    int-to-float v3, v3

    invoke-virtual {v1, v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 948
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextColor(I)V

    .line 949
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleBarRelative:Lcom/alipay/mobile/antui/basic/AURelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AURelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 951
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 235
    if-eqz p2, :cond_0

    .line 236
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_BACKGROUND_COLOR:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDrawable(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_COLOR:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackBtnColor:I

    .line 238
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TITLE_TEXTSIZE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextSize:I

    .line 239
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TITLE_TEXTCOLOR:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mTitleTextColor:I

    .line 240
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_COLOR:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconColor:I

    .line 241
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_SIZE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftIconSize:I

    .line 242
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTCOLOR:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextColor:I

    .line 243
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTSIZE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mLeftTextSize:I

    .line 244
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_COLOR:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconColor:I

    .line 245
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_ICON_SIZE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightIconSize:I

    .line 246
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTCOLOR:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getColor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextColor:I

    .line 247
    sget-object v0, Lcom/alipay/mobile/antui/theme/AUThemeKey;->TITLEBAR_TEXTSIZE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/alipay/mobile/antui/theme/AUAbsTheme;->getDimensionPixelOffset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar;->mRightTextSize:I

    .line 248
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->setFont()V

    .line 250
    :cond_0
    return-void
.end method
