.class public Lcom/alipay/mobile/antui/badge/AUBadgeView;
.super Landroid/widget/FrameLayout;
.source "AUBadgeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;,
        Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    }
.end annotation


# static fields
.field public static final KEY_BADGE_CONTENT:Ljava/lang/String; = "badgeText"

.field public static final KEY_BADGE_STYLE:Ljava/lang/String; = "badgeType"

.field protected static final MAX_MSG_COUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AUBadgeView"


# instance fields
.field protected isCenterLocate:Z

.field private isSmallTextSize:Z

.field protected mContext:Landroid/content/Context;

.field protected volatile mInited:Z

.field private mListener:Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;

.field protected mLocateX:I

.field protected mLocateY:I

.field mTextMaxEms:I

.field mTextMaxLength:I

.field mTextMaxWidth:I

.field protected msgCount:I

.field protected msgText:Ljava/lang/String;

.field protected pointImageView:Landroid/widget/ImageView;

.field protected redHeight:I

.field protected redWidth:I

.field protected style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

.field protected txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 48
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateX:I

    .line 53
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateY:I

    .line 54
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 55
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    .line 56
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mInited:Z

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    .line 65
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxEms:I

    .line 66
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxLength:I

    .line 67
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxWidth:I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateX:I

    .line 53
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateY:I

    .line 54
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 55
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    .line 56
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mInited:Z

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    .line 65
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxEms:I

    .line 66
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxLength:I

    .line 67
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxWidth:I

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateX:I

    .line 53
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateY:I

    .line 54
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 55
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    .line 56
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mInited:Z

    .line 58
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    .line 65
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxEms:I

    .line 66
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxLength:I

    .line 67
    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxWidth:I

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/badge/AUBadgeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/badge/AUBadgeView;

    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->doRefresh()V

    return-void
.end method

.method private doRefresh()V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->lazyInit()V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const-string v1, "AUBadgeView"

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->pointImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    sget-object v2, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne v0, v2, :cond_1

    .line 294
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    goto/16 :goto_2

    .line 295
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne v0, v2, :cond_2

    .line 296
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->shock_point_small:I

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setBadgeImageStyles(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;I)V

    goto :goto_2

    .line 297
    :cond_2
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-eq v0, v2, :cond_7

    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne v0, v2, :cond_3

    goto :goto_1

    .line 316
    :cond_3
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->MORE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne v0, v1, :cond_4

    .line 317
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->MORE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    sget v1, Lcom/alipay/mobile/antui/R$drawable;->shock_point_more:I

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setBadgeImageStyles(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;I)V

    goto :goto_2

    .line 318
    :cond_4
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 321
    :cond_5
    return-void

    .line 319
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setBadgeTextStyles(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    :cond_7
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 300
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    .line 301
    const/16 v2, 0x64

    if-lez v0, :cond_8

    if-ge v0, v2, :cond_8

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setBadgeTextStyles(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    goto :goto_2

    .line 303
    :cond_8
    if-lt v0, v2, :cond_9

    .line 304
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->MORE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    sget v2, Lcom/alipay/mobile/antui/R$drawable;->shock_point_more:I

    invoke-direct {p0, v0, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setBadgeImageStyles(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;I)V

    goto :goto_2

    .line 306
    :cond_9
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    nop

    .line 323
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->locate()V

    .line 324
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 310
    const-string v0, "Style.NUM with illegal params : msgText is empty"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 312
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Style.NUM with illegal params : msgText = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void

    .line 289
    :cond_b
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "doRefresh view == null "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 85
    if-eqz p2, :cond_0

    .line 86
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->AUBadgeView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "array":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUBadgeView_isSmallTextSize:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isSmallTextSize:Z

    .line 88
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUBadgeView_textMaxEms:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxEms:I

    .line 89
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUBadgeView_textMaxLength:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxLength:I

    .line 90
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->AUBadgeView_textMaxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxWidth:I

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    .end local v0    # "array":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private isAlphabet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 367
    const-string v0, "[a-zA-Z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method private measureRedPoint(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 133
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    if-nez p1, :cond_1

    .line 137
    const/16 v0, 0x23

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 138
    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    .line 139
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "measureRedPoint redWidth = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " redHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "AUBadgeView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private measureRedPoint(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
    .locals 3
    .param p1, "style"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .param p2, "text"    # Ljava/lang/String;

    .line 114
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    if-nez v0, :cond_0

    .line 115
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne p1, v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mContext:Landroid/content/Context;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->MORE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const/high16 v1, 0x41800000    # 16.0f

    if-ne p1, v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mContext:Landroid/content/Context;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 126
    .local v0, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    .line 128
    .end local v0    # "paint":Landroid/text/TextPaint;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "measureRedPoint redWidth = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " redHeight"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    const-string v1, "AUBadgeView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private setBadgeImageStyles(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;I)V
    .locals 2
    .param p1, "style"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .param p2, "resId"    # I

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 376
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getBgDrawable(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 377
    .local v1, "customBg":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->measureRedPoint(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->pointImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->measureRedPoint(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method private setBadgeTextStyles(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
    .locals 7
    .param p1, "style"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .param p2, "text"    # Ljava/lang/String;

    .line 327
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 329
    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->pointImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 330
    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 331
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getTextDpSize()F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 332
    .local v2, "customTextDpSize":F
    move v2, v0

    const/4 v3, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v3, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    goto :goto_1

    .line 335
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 338
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isSmallTextSize:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    invoke-direct {p0, p2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isAlphabet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    goto :goto_1

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/high16 v1, 0x41300000    # 11.0f

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    goto :goto_1

    .line 336
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v3, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 346
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxEms:I

    if-lez v0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxEms:I

    if-le v0, v1, :cond_5

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    int-to-double v3, v1

    const-wide v5, 0x3fc999999999999aL    # 0.2

    add-double/2addr v3, v5

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getLineHeight()I

    move-result v1

    int-to-double v5, v1

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMaxWidth(I)V

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getBgDrawable(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 352
    .local v1, "customBg":Landroid/graphics/drawable/Drawable;
    move-object v1, v0

    if-eqz v0, :cond_6

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 354
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->measureRedPoint(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 356
    :cond_6
    invoke-virtual {p1}, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->getDes()Ljava/lang/String;

    move-result-object v0

    const-string v3, "_with_board"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->shock_point_board_large:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setBackgroundResource(I)V

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->measureRedPoint(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    sget v3, Lcom/alipay/mobile/antui/R$drawable;->shock_point_large:I

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/antui/basic/AUTextView;->setBackgroundResource(I)V

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->measureRedPoint(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 364
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 238
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public getBadgeViewContent()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeViewStyle()Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    return-object v0
.end method

.method protected getBgDrawable(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "style"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 446
    iget v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getBgDrawable(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getBgDrawable(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "style"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .param p2, "msgCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsgCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 404
    iget v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    return v0
.end method

.method protected getRedPointDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTextDpSize()F
    .locals 1

    .line 454
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public isCenterLocate()Z
    .locals 1

    .line 416
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    return v0
.end method

.method protected declared-synchronized lazyInit()V
    .locals 7

    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->default_badge_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 100
    sget v0, Lcom/alipay/mobile/antui/R$id;->redPoint:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->pointImageView:Landroid/widget/ImageView;

    .line 101
    sget v0, Lcom/alipay/mobile/antui/R$id;->msgText:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 103
    iget v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxLength:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 104
    new-array v1, v2, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    iget v6, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxLength:I

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 106
    .end local p0    # "this":Lcom/alipay/mobile/antui/badge/AUBadgeView;
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxWidth:I

    if-eq v0, v3, :cond_2

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMaxWidth(I)V

    .line 110
    :cond_2
    iput-boolean v2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mInited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected locate()V
    .locals 7

    .line 148
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateY:I

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 152
    .local v2, "parent":Landroid/view/ViewParent;
    move-object v2, v0

    if-eqz v0, :cond_4

    .line 153
    iget v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateY:I

    iget v3, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    .line 154
    .local v0, "top":I
    iget v3, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateX:I

    iget v4, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 155
    .local v3, "right":I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "locate right = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " redWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->redWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AUBadgeView"

    invoke-static {v5, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    if-gez v0, :cond_1

    .line 157
    const/4 v0, 0x0

    .line 159
    :cond_1
    if-gez v3, :cond_2

    .line 160
    const/4 v3, 0x0

    .line 162
    :cond_2
    instance-of v4, v2, Landroid/widget/RelativeLayout;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 163
    nop

    .line 164
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v1, v4

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 167
    invoke-virtual {v1, v5, v0, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    return-void

    :cond_3
    instance-of v4, v2, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    .line 170
    nop

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 172
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object v1, v4

    const/16 v6, 0x35

    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 173
    invoke-virtual {v1, v5, v0, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 174
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    .end local v0    # "top":I
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "right":I
    :cond_4
    return-void

    .line 149
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_5
    :goto_0
    return-void
.end method

.method public setCenterLocate(Z)V
    .locals 0
    .param p1, "centerLocate"    # Z

    .line 412
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isCenterLocate:Z

    .line 413
    return-void
.end method

.method public setCenterMargin(II)V
    .locals 2
    .param p1, "top"    # I
    .param p2, "right"    # I

    .line 425
    iput p2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateX:I

    .line 426
    iput p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mLocateY:I

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setCenterMargin set top,right top = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  right ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUBadgeView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->locate()V

    .line 429
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .line 436
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->txtTextView:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMaxLines(I)V

    .line 437
    return-void
.end method

.method public setMsgCount(I)V
    .locals 1
    .param p1, "msgCount"    # I

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setMsgCount(IZ)V

    .line 185
    return-void
.end method

.method public setMsgCount(IZ)V
    .locals 2
    .param p1, "msgCount"    # I
    .param p2, "isShowBorder"    # Z

    .line 193
    iput p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    .line 194
    if-gtz p1, :cond_0

    .line 195
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    return-void

    .line 197
    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NUM:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public setMsgText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setMsgText(Ljava/lang/String;Z)V

    .line 215
    return-void
.end method

.method public setMsgText(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isShowBorder"    # Z

    .line 223
    if-eqz p2, :cond_0

    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT_WITH_BOARD:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->TEXT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public setOnContentChangedListener(Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;

    .line 269
    iput-object p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mListener:Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;

    .line 270
    return-void
.end method

.method public setRedPoint(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 206
    sget-object v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->POINT:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-eqz p1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndMsgText(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public setSmallTextSize(Z)V
    .locals 0
    .param p1, "isSmallTextSize"    # Z

    .line 231
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->isSmallTextSize:Z

    .line 232
    return-void
.end method

.method public setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
    .locals 2
    .param p1, "style"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .param p2, "content"    # Ljava/lang/String;

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mListener:Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mListener:Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/antui/badge/AUBadgeView$OnContentChangedListener;->onChange(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 252
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->style:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 253
    iput-object p2, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgText:Ljava/lang/String;

    .line 255
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 256
    invoke-direct {p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->doRefresh()V

    return-void

    .line 258
    :cond_2
    new-instance v0, Lcom/alipay/mobile/antui/badge/AUBadgeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/badge/AUBadgeView$1;-><init>(Lcom/alipay/mobile/antui/badge/AUBadgeView;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public setStyleAndMsgText(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V
    .locals 2
    .param p1, "style"    # Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;
    .param p2, "text"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-nez v0, :cond_0

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 275
    :cond_0
    sget-object p1, Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;->NONE:Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;

    .line 276
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->msgCount:I

    .line 280
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setStyleAndContent(Lcom/alipay/mobile/antui/badge/AUBadgeView$Style;Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setTextMaxEms(I)V
    .locals 0
    .param p1, "textMaxEms"    # I

    .line 506
    iput p1, p0, Lcom/alipay/mobile/antui/badge/AUBadgeView;->mTextMaxEms:I

    .line 507
    return-void
.end method
