.class public Lcom/alipay/mobile/antui/basic/AUCardOptionView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUCardOptionView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;,
        Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;,
        Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TEXT_NOT_CHANGE:Ljava/lang/String; = "text_not_change"

.field public static final TYPE_COMMENT:Ljava/lang/String; = "comment"

.field public static final TYPE_PRAISE:Ljava/lang/String; = "praise"

.field public static final TYPE_REWARD:Ljava/lang/String; = "reward"


# instance fields
.field private cardOptionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;",
            ">;"
        }
    .end annotation
.end field

.field private default_height:I

.field private inflater:Landroid/view/LayoutInflater;

.field private mCommentText:Ljava/lang/String;

.field private mListner:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;

.field private mPraiseText:Ljava/lang/String;

.field private mRewardText:Ljava/lang/String;

.field private mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private textType:Ljava/lang/String;

.field private textVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mViewMap:Ljava/util/Map;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textVisible:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textType:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mViewMap:Ljava/util/Map;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textVisible:Z

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textType:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->init()V

    .line 52
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUCardOptionView;)Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUCardOptionView;

    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mListner:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private formatRPRNum(I)Ljava/lang/String;
    .locals 5
    .param p1, "num"    # I

    .line 272
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    const-string v1, "formatRPRNum"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$integer;->num_unit_int:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 275
    .local v0, "length":I
    div-int v1, p1, v0

    .line 277
    move p1, v1

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_0

    .line 278
    div-int/lit8 v1, p1, 0xa

    .line 279
    .local v1, "numi":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$string;->num_unit_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 281
    .end local v1    # "numi":I
    :cond_0
    int-to-float v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 282
    .local v1, "numf":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$string;->num_unit_text:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 285
    .end local v0    # "length":I
    .end local v1    # "numf":F
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setOrientation(I)V

    .line 59
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setGravity(I)V

    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE10:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->default_height:I

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->praise:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mPraiseText:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->reward:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mRewardText:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->comment:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mCommentText:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->inflater:Landroid/view/LayoutInflater;

    .line 65
    return-void
.end method

.method private newChildView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->view_card_option_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 176
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v3, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;-><init>(B)V

    .line 178
    .local v2, "holder":Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;
    move-object v2, v3

    sget v4, Lcom/alipay/mobile/antui/R$id;->card_option_divider_line:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/antui/basic/AUView;

    iput-object v4, v3, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->a:Lcom/alipay/mobile/antui/basic/AUView;

    .line 179
    sget v3, Lcom/alipay/mobile/antui/R$id;->card_option_item_icon:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v3, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 180
    sget v3, Lcom/alipay/mobile/antui/R$id;->card_option_item_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v3, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->c:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 181
    iput p1, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->d:I

    .line 182
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    return-object v0
.end method

.method private setCountText(Lcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;)V
    .locals 6
    .param p1, "textView"    # Lcom/alipay/mobile/antui/basic/AUTextView;
    .param p2, "optionItem"    # Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    .line 238
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textVisible:Z

    if-nez v0, :cond_0

    .line 239
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 240
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "textVisible is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 245
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setTextDefault(Lcom/alipay/mobile/antui/basic/AUTextView;)V

    .line 246
    iget-object v1, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->type:Ljava/lang/String;

    .line 247
    .local v1, "type":Ljava/lang/String;
    iget v2, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    const-string/jumbo v3, "reward"

    const-string/jumbo v4, "praise"

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textType:Ljava/lang/String;

    const-string/jumbo v5, "text_not_change"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 256
    :cond_1
    iget v2, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->formatRPRNum(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 248
    :cond_2
    :goto_0
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mPraiseText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 250
    :cond_3
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mRewardText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 252
    :cond_4
    const-string v2, "comment"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 253
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mCommentText:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_5
    :goto_1
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 261
    :cond_6
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setSelected(Z)V

    .line 263
    return-void

    .line 259
    :cond_7
    :goto_2
    iget-boolean v0, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->hasClicked:Z

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setSelected(Z)V

    return-void
.end method

.method private setIconDefault(Lcom/alipay/mobile/antui/iconfont/AUIconView;)V
    .locals 1
    .param p1, "imageView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setActivated(Z)V

    .line 401
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setSelected(Z)V

    .line 402
    return-void
.end method

.method private setIconInfo(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;Z)V
    .locals 3
    .param p1, "imageView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p2, "optionItem"    # Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;
    .param p3, "anim"    # Z

    .line 216
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setIconDefault(Lcom/alipay/mobile/antui/iconfont/AUIconView;)V

    .line 217
    iget-object v0, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->type:Ljava/lang/String;

    const/4 v1, 0x0

    .line 218
    .local v1, "type":Ljava/lang/String;
    move-object v1, v0

    const-string/jumbo v2, "praise"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-boolean v0, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->hasClicked:Z

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setSelected(Z)V

    .line 220
    if-eqz p3, :cond_1

    .line 222
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setIconInfo, show praise animation"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/antui/R$anim;->card_option_praise_anim:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 224
    .local v0, "operatingAnim":Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 225
    .end local v0    # "operatingAnim":Landroid/view/animation/Animation;
    return-void

    .line 226
    :cond_0
    const-string/jumbo v0, "reward"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-boolean v0, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->hasClicked:Z

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setSelected(Z)V

    .line 229
    :cond_1
    return-void
.end method

.method private setLayoutView(Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "itemArrayList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;",
            ">;)V"
        }
    .end annotation

    .line 138
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 148
    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->newChildView(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->addView(Landroid/view/View;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 151
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 152
    .local v0, "oldViewCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 153
    .local v1, "newViewCount":I
    if-ge v0, v1, :cond_4

    .line 154
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 155
    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->newChildView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->addView(Landroid/view/View;)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    :cond_3
    goto :goto_2

    .line 157
    :cond_4
    if-le v0, v1, :cond_5

    .line 158
    sub-int v2, v0, v1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->removeViews(II)V

    .line 161
    .end local v0    # "oldViewCount":I
    .end local v1    # "newViewCount":I
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 164
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setChildView(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;)V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 166
    .end local v0    # "i":I
    :cond_6
    return-void

    .line 139
    :cond_7
    :goto_4
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    const-string v1, "CardOptionItem List is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void
.end method

.method private setTextDefault(Lcom/alipay/mobile/antui/basic/AUTextView;)V
    .locals 1
    .param p1, "textView"    # Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setActivated(Z)V

    .line 396
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setSelected(Z)V

    .line 397
    return-void
.end method

.method private setViewType(Landroid/view/View;Lcom/alipay/mobile/antui/iconfont/AUIconView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imageView"    # Lcom/alipay/mobile/antui/iconfont/AUIconView;
    .param p3, "type"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mViewMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    const-string/jumbo v0, "praise"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->drawable_praise_icon:I

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_0

    .line 199
    :cond_1
    const-string/jumbo v0, "reward"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->drawable_reward_icon:I

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    goto :goto_0

    .line 201
    :cond_2
    const-string v0, "comment"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->drawable_comment_icon:I

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setImageResource(I)Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 204
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method


# virtual methods
.method public getChildView(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mViewMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount(I)I
    .locals 1
    .param p1, "position"    # I

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    iget v0, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    return v0

    .line 376
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 416
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 431
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 421
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 426
    return-void
.end method

.method public setCardOptionListner(Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;)V
    .locals 0
    .param p1, "cardOptionListner"    # Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;

    .line 410
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->mListner:Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionClickListner;

    .line 411
    return-void
.end method

.method public setChildView(Landroid/view/View;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "optionItem"    # Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    .line 295
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    .line 297
    .local v0, "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iget-object v2, p2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->type:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setViewType(Landroid/view/View;Lcom/alipay/mobile/antui/iconfont/AUIconView;Ljava/lang/String;)V

    .line 298
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p2, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setIconInfo(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;Z)V

    .line 299
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->c:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v1, p2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setCountText(Lcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;)V

    .line 300
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    iget v1, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->d:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 301
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->a:Lcom/alipay/mobile/antui/basic/AUView;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUView;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->a:Lcom/alipay/mobile/antui/basic/AUView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUView;->setVisibility(I)V

    .line 305
    :goto_0
    new-instance v1, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUCardOptionView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    .end local v0    # "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;
    return-void

    .line 316
    :cond_1
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setChildView : view is invalide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 0
    .param p1, "textVisible"    # Z

    .line 73
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textVisible:Z

    .line 74
    return-void
.end method

.method public setViewInfo(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "itemArrayList"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->default_height:I

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setViewInfo(Ljava/util/ArrayList;I)V

    .line 105
    return-void
.end method

.method public setViewInfo(Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "itemArrayList"    # Ljava/util/ArrayList;
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;",
            ">;I)V"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 127
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object v1, v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setLayoutView(Ljava/util/ArrayList;)V

    .line 130
    return-void
.end method

.method public setViewInfo(Ljava/util/ArrayList;IZ)V
    .locals 0
    .param p1, "itemArrayList"    # Ljava/util/ArrayList;
    .param p2, "height"    # I
    .param p3, "textVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;",
            ">;IZ)V"
        }
    .end annotation

    .line 115
    iput-boolean p3, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textVisible:Z

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setViewInfo(Ljava/util/ArrayList;I)V

    .line 117
    return-void
.end method

.method public setViewInfo(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "itemArrayList"    # Ljava/util/ArrayList;
    .param p2, "textType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 94
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textType:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setViewInfo(Ljava/util/ArrayList;)V

    .line 96
    return-void
.end method

.method public setViewInfo(Ljava/util/ArrayList;Z)V
    .locals 0
    .param p1, "itemArrayList"    # Ljava/util/ArrayList;
    .param p2, "textVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;",
            ">;Z)V"
        }
    .end annotation

    .line 83
    iput-boolean p2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->textVisible:Z

    .line 84
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setViewInfo(Ljava/util/ArrayList;)V

    .line 85
    return-void
.end method

.method public unitDecrease(Landroid/view/View;)V
    .locals 7
    .param p1, "childView"    # Landroid/view/View;

    .line 349
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    const/4 v1, 0x0

    .line 351
    .local v1, "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;
    move-object v1, v0

    iget v0, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->d:I

    .line 353
    .local v0, "position":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->hasClicked:Z

    .line 354
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    iget v4, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    .line 357
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    .line 358
    .local v2, "item":Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;
    sget-object v4, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unitDecrease : type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v4, v1, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {p0, v4, v2, v3}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setIconInfo(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;Z)V

    .line 360
    iget-object v3, v1, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->c:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setCountText(Lcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;)V

    .line 361
    .end local v0    # "position":I
    .end local v1    # "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;
    .end local v2    # "item":Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;
    return-void

    .line 362
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unitDecrease : view is invalide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    return-void
.end method

.method public unitIncrease(Landroid/view/View;)V
    .locals 7
    .param p1, "childView"    # Landroid/view/View;

    .line 326
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;

    const/4 v1, 0x0

    .line 328
    .local v1, "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;
    move-object v1, v0

    iget v0, v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->d:I

    .line 330
    .local v0, "position":I
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->hasClicked:Z

    .line 331
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    iget v4, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    add-int/2addr v4, v3

    iput v4, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    .line 334
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->cardOptionItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;

    .line 335
    .local v2, "item":Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;
    sget-object v4, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "unitIncrease : type = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;->count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v4, v1, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->b:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    invoke-direct {p0, v4, v2, v3}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setIconInfo(Lcom/alipay/mobile/antui/iconfont/AUIconView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;Z)V

    .line 337
    iget-object v3, v1, Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;->c:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-direct {p0, v3, v2}, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->setCountText(Lcom/alipay/mobile/antui/basic/AUTextView;Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;)V

    .line 338
    .end local v0    # "position":I
    .end local v1    # "viewHolder":Lcom/alipay/mobile/antui/basic/AUCardOptionView$a;
    .end local v2    # "item":Lcom/alipay/mobile/antui/basic/AUCardOptionView$CardOptionItem;
    return-void

    .line 339
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUCardOptionView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unitIncrease : view is invalide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 436
    return-void
.end method
