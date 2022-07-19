.class public Lcom/alipay/mobile/antui/basic/AUNetErrorView;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUNetErrorView.java"


# static fields
.field public static final TYPE_EMPTY:I = 0x11

.field public static final TYPE_NOTFOUND:I = 0x14

.field public static final TYPE_NOT_SHOW:I = 0x0

.field public static final TYPE_OVER_FLOW:I = 0x13

.field public static final TYPE_SIGNAL:I = 0x10

.field public static final TYPE_USER_LOGOUT:I = 0x15

.field public static final TYPE_WARNING:I = 0x12

.field private static times:I


# instance fields
.field private isSimpleMode:Z

.field private mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

.field private mActionContainer:Landroid/widget/LinearLayout;

.field private mActionStr:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

.field private mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

.field private mIsButtonBottom:Z

.field private mIsLottieEnabled:Z

.field private mLoadLottieCallback:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

.field private mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

.field private mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mType:I

.field private timeColor:Ljava/lang/String;

.field private timerlistener:Lcom/alipay/mobile/antui/api/TimerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    .line 63
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mLoadLottieCallback:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

    .line 539
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mHandler:Landroid/os/Handler;

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    .line 63
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mLoadLottieCallback:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

    .line 539
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    .line 63
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mLoadLottieCallback:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

    .line 539
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$5;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/basic/AUNetErrorView;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->loadLottie(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->changeButtonStyleByIsSimple()V

    return-void
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/antui/basic/AUNetErrorView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setActionStr(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->cancelTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 35
    sget v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I

    return v0
.end method

.method static synthetic access$410()I
    .locals 2

    .line 35
    sget v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I

    return v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->callTimeFinish()V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->timeColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)Lcom/alipay/mobile/antui/basic/AUButton;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUNetErrorView;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method private callTimeFinish()V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->timerlistener:Lcom/alipay/mobile/antui/api/TimerListener;

    if-eqz v0, :cond_0

    .line 527
    invoke-interface {v0}, Lcom/alipay/mobile/antui/api/TimerListener;->onFinish()V

    .line 529
    :cond_0
    return-void
.end method

.method private cancelTimer()V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 578
    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTimer:Ljava/util/Timer;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 582
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 583
    iput-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTimerTask:Ljava/util/TimerTask;

    .line 585
    :cond_1
    return-void
.end method

.method private changeButtonStyleByIsSimple()V
    .locals 5

    .line 153
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    const-string v1, "ass_trans"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setBtnType(Ljava/lang/String;)V

    .line 157
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE7:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT1:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/alipay/mobile/antui/basic/AUButton;->setPadding(IIII)V

    return-void

    .line 161
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setTextSize(IF)V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    const-string/jumbo v1, "no_rect"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setBtnType(Ljava/lang/String;)V

    .line 164
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x435c0000    # 220.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE12:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 165
    .restart local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method

.method private filterColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .line 532
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'>%s</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 535
    :cond_0
    const-string v0, "%s"

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_net_error_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    sget-object v0, Lcom/alipay/mobile/antui/R$styleable;->NetErrorView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->NetErrorView_netErrorType:I

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I

    .line 98
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->NetErrorView_isSimpleMode:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/alipay/mobile/antui/R$color;->AU_COLOR_CLIENT_BG1:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setBackgroundColor(I)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setOrientation(I)V

    .line 103
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setGravity(I)V

    .line 104
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    .local v1, "padding":I
    invoke-virtual {p0, v1, v3, v1, v3}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setPadding(IIII)V

    .line 106
    sget v2, Lcom/alipay/mobile/antui/R$id;->button:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    .line 107
    sget v2, Lcom/alipay/mobile/antui/R$id;->action:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 108
    sget v2, Lcom/alipay/mobile/antui/R$id;->sub_action:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 109
    sget v2, Lcom/alipay/mobile/antui/R$id;->tips:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 110
    sget v2, Lcom/alipay/mobile/antui/R$id;->sub_tips:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 111
    sget v2, Lcom/alipay/mobile/antui/R$id;->icon_lottie:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    .line 112
    sget v2, Lcom/alipay/mobile/antui/R$id;->icon:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/basic/AUImageView;

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    .line 114
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->resetNetErrorType(I)V

    .line 116
    new-instance v2, Lcom/alipay/mobile/antui/basic/AUNetErrorView$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$2;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    .line 122
    .local v2, "listener":Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibilityChangeObserver(Lcom/alipay/mobile/antui/api/VisibilityChangeObserver;)V

    .line 123
    return-void
.end method

.method private loadLottie(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "animationSource"    # Lorg/json/JSONObject;

    .line 278
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIsLottieEnabled:Z

    if-nez v0, :cond_0

    .line 279
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 286
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_net_error_icon_simple_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "iconSize":I
    goto :goto_0

    .line 289
    .end local v0    # "iconSize":I
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->au_net_error_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 292
    .restart local v0    # "iconSize":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 293
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    move-object v2, v1

    if-nez v1, :cond_2

    .line 294
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v1

    .line 296
    :cond_2
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 297
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 298
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setAnimationSource(Lorg/json/JSONObject;)V

    .line 301
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    new-instance v3, Lcom/alipay/mobile/antui/basic/AUNetErrorView$3;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$3;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 322
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->playAnimation()V

    .line 323
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->loop(Z)V

    .line 324
    return-void
.end method

.method private setActionStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->changeButtonStyleByIsSimple()V

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    return-void

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 362
    return-void
.end method

.method private setIconStyle(I)V
    .locals 1
    .param p1, "resID"    # I

    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 255
    return-void
.end method

.method private setIconStyle(Ljava/lang/String;I)V
    .locals 3
    .param p1, "lottieFileName"    # Ljava/lang/String;
    .param p2, "defResID"    # I

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->getInstance()Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mLoadLottieCallback:Lcom/alipay/mobile/antui/lottie/LoadLottieCallback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/antui/lottie/NetErrorLottieFile;->getNetErrorAnimation(Ljava/lang/String;ILcom/alipay/mobile/antui/lottie/LoadLottieCallback;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 264
    .local v2, "animationSource":Lorg/json/JSONObject;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, v2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->loadLottie(Lorg/json/JSONObject;)V

    return-void

    .line 267
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 269
    .end local v2    # "animationSource":Lorg/json/JSONObject;
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUImageView;->setImageResource(I)V

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 274
    return-void
.end method

.method private setSubActionStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->changeButtonStyleByIsSimple()V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 407
    return-void
.end method


# virtual methods
.method public getActionButton()Lcom/alipay/mobile/antui/basic/AUButton;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method public getDefaultTimeColorStr()Ljava/lang/String;
    .locals 1

    .line 481
    const-string v0, "#D83B1E"

    return-object v0
.end method

.method public getImageView()Lcom/alipay/mobile/antui/basic/AUImageView;
    .locals 2

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIsLottieEnabled:Z

    .line 463
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 468
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->onDetachedFromWindow()V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->cancelAnimation()V

    .line 129
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 133
    invoke-super/range {p0 .. p5}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->onLayout(ZIIII)V

    .line 134
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIsButtonBottom:Z

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUButton;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUButton;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    .line 136
    .local v2, "extPadding":I
    move v2, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT7:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 140
    .end local v2    # "extPadding":I
    :cond_0
    return-void
.end method

.method public resetNetErrorType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 176
    iput p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIcon:Lcom/alipay/mobile/antui/basic/AUImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIconLottie:Lcom/alipay/mobile/antui/lottie/AULottieLayout;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/lottie/AULottieLayout;->setVisibility(I)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIsLottieEnabled:Z

    .line 186
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->changeButtonStyleByIsSimple()V

    .line 188
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    if-nez v0, :cond_0

    .line 189
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I

    const-string v1, "lottie_alert.json"

    packed-switch v0, :pswitch_data_0

    .line 219
    return-void

    .line 215
    :pswitch_0
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_user_logout:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(I)V

    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_user_logout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 217
    return-void

    .line 211
    :pswitch_1
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_warning:I

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 212
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_system_wrong:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 213
    return-void

    .line 206
    :pswitch_2
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_overflow:I

    const-string v1, "lottie_limit.json"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 207
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_overflow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_overflow_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 209
    return-void

    .line 201
    :pswitch_3
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_warning:I

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 202
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_system_wrong:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_system_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 204
    return-void

    .line 196
    :pswitch_4
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_empty:I

    const-string v1, "lottie_empty.json"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_empty_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 199
    return-void

    .line 191
    :pswitch_5
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_signal:I

    const-string v1, "lottie_networkerror.json"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 192
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_connection_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_connection_error_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 194
    return-void

    .line 222
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mType:I

    packed-switch v0, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 244
    :pswitch_7
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_user_logout_simple:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(I)V

    .line 245
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_user_logout:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :pswitch_8
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_overflow_simple:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(I)V

    .line 240
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_overflow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_overflow_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 242
    return-void

    .line 234
    :pswitch_9
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_warning_simple:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(I)V

    .line 235
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_system_wrong:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_system_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 237
    return-void

    .line 229
    :pswitch_a
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_empty_simple:I

    const-string v1, "lottie_empty_lite.json"

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(Ljava/lang/String;I)V

    .line 230
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_empty:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_empty_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 232
    return-void

    .line 224
    :pswitch_b
    sget v0, Lcom/alipay/mobile/antui/R$drawable;->net_error_signal_simple:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setIconStyle(I)V

    .line 225
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_connection_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTips(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->net_connection_error_sub:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubTips(Ljava/lang/String;)V

    .line 227
    return-void

    .line 251
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setAction(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 343
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->refresh_net_simple:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void

    .line 346
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->refresh_net:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 348
    return-void
.end method

.method public setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 333
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setActionStr(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    return-void
.end method

.method public setButtonBlueStyle()V
    .locals 0

    .line 588
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->changeButtonStyleByIsSimple()V

    .line 589
    return-void
.end method

.method public setButtonBottom(Z)V
    .locals 4
    .param p1, "isBottom"    # Z

    .line 597
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mIsButtonBottom:Z

    .line 598
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 600
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$dimen;->AU_HEIGHT7:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v0, v0, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUButton;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUButton;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 605
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 606
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 608
    :cond_1
    return-void
.end method

.method public setButtonLinkStyle()V
    .locals 0

    .line 592
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->changeButtonStyleByIsSimple()V

    .line 593
    return-void
.end method

.method public setIsSimpleType(Z)V
    .locals 0
    .param p1, "isSimple"    # Z

    .line 148
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->isSimpleMode:Z

    .line 149
    return-void
.end method

.method public setNoAction()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 372
    return-void
.end method

.method public setNoSubAction()V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setVisibility(I)V

    .line 417
    return-void
.end method

.method public setSubAction(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 392
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->fix_net:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 393
    return-void
.end method

.method public setSubAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 382
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setSubActionStr(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubActionBtn:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    return-void
.end method

.method public setSubTips(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mSubTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 445
    return-void
.end method

.method public setTimer(ILandroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V
    .locals 8
    .param p1, "seconds"    # I
    .param p2, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p3, "timerlistener"    # Lcom/alipay/mobile/antui/api/TimerListener;

    .line 518
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->try_again_once:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->getDefaultTimeColorStr()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTimer(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V

    .line 519
    return-void
.end method

.method public setTimer(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "seconds"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "color"    # Ljava/lang/String;
    .param p4, "clickListener"    # Landroid/view/View$OnClickListener;

    .line 522
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setTimer(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V

    .line 523
    return-void
.end method

.method public setTimer(ILjava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/alipay/mobile/antui/api/TimerListener;)V
    .locals 7
    .param p1, "seconds"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "tickColor"    # Ljava/lang/String;
    .param p4, "clickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "timerlistener"    # Lcom/alipay/mobile/antui/api/TimerListener;

    .line 494
    iput-object p5, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->timerlistener:Lcom/alipay/mobile/antui/api/TimerListener;

    .line 495
    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->times:I

    .line 496
    invoke-virtual {p0, p2, p4}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 497
    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mActionStr:Ljava/lang/String;

    .line 498
    invoke-direct {p0, p3}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->filterColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->timeColor:Ljava/lang/String;

    .line 500
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->cancelTimer()V

    .line 501
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTimer:Ljava/util/Timer;

    .line 502
    new-instance v2, Lcom/alipay/mobile/antui/basic/AUNetErrorView$4;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/basic/AUNetErrorView$4;-><init>(Lcom/alipay/mobile/antui/basic/AUNetErrorView;)V

    iput-object v2, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTimerTask:Ljava/util/TimerTask;

    .line 514
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTimer:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 515
    return-void
.end method

.method public setTips(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUNetErrorView;->mTips:Lcom/alipay/mobile/antui/basic/AUTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 431
    return-void
.end method
