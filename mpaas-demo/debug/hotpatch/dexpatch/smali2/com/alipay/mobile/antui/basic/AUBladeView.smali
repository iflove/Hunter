.class public Lcom/alipay/mobile/antui/basic/AUBladeView;
.super Lcom/alipay/mobile/antui/basic/AUView;
.source "AUBladeView.java"

# interfaces
.implements Lcom/alipay/mobile/antui/api/AntUI;
.implements Lcom/alipay/mobile/antui/basic/AUViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AUBladeView"

.field private static final defaultLetters:[Ljava/lang/String;

.field private static final skip_device:[Ljava/lang/String;


# instance fields
.field dismissRunnable:Ljava/lang/Runnable;

.field private isAP:Ljava/lang/Boolean;

.field private mChoose:I

.field private mHandler:Landroid/os/Handler;

.field private mLetters:[Ljava/lang/String;

.field private mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;

.field protected mPaint:Landroid/graphics/Paint;

.field private mPopupText:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

.field private mShowBkg:Z

.field private mShowSelectPop:Z

.field private mText1:Ljava/lang/String;

.field private mText2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 35
    const-string v0, "A"

    const-string v1, "B"

    const-string v2, "C"

    const-string v3, "D"

    const-string v4, "E"

    const-string v5, "F"

    const-string v6, "G"

    const-string v7, "H"

    const-string v8, "I"

    const-string v9, "J"

    const-string v10, "K"

    const-string v11, "L"

    const-string v12, "M"

    const-string v13, "N"

    const-string v14, "O"

    const-string v15, "P"

    const-string v16, "Q"

    const-string v17, "R"

    const-string v18, "S"

    const-string v19, "T"

    const-string v20, "U"

    const-string v21, "V"

    const-string v22, "W"

    const-string v23, "X"

    const-string v24, "Y"

    const-string v25, "Z"

    const-string v26, "#"

    filled-new-array/range {v0 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUBladeView;->defaultLetters:[Ljava/lang/String;

    .line 41
    const-string v0, "FRD-DL00"

    const-string v1, "KNT-AL20"

    const-string v2, "PRA-AL00"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/basic/AUBladeView;->skip_device:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AUView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText2:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowSelectPop:Z

    .line 50
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowBkg:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mHandler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUBladeView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText2:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowSelectPop:Z

    .line 50
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowBkg:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mHandler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUBladeView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUBladeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/antui/basic/AUView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText2:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowSelectPop:Z

    .line 50
    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowBkg:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mHandler:Landroid/os/Handler;

    .line 221
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUBladeView$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/basic/AUBladeView$1;-><init>(Lcom/alipay/mobile/antui/basic/AUBladeView;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AUBladeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/basic/AUBladeView;)Lcom/alipay/mobile/antui/basic/AUPopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/basic/AUBladeView;

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    return-object v0
.end method

.method private dismissPopup()V
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    return-void
.end method

.method private performItemClicked(I)V
    .locals 3
    .param p1, "item"    # I

    .line 183
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getLetters()[Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "b":[Ljava/lang/String;
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowSelectPop:Z

    if-eqz v1, :cond_0

    .line 185
    aget-object v1, v0, p1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/antui/basic/AUBladeView;->showPopup(Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 188
    aget-object v2, v0, p1

    invoke-interface {v1, v2}, Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;->onItemClick(Ljava/lang/String;)V

    .line 190
    :cond_1
    return-void
.end method

.method private showPopup(Ljava/lang/String;)V
    .locals 5

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->dismissRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v0, v2}, Lcom/alipay/mobile/antui/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$layout;->au_bladeview_firstchar_pop:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 198
    sget v3, Lcom/alipay/mobile/antui/R$id;->tv_first_char:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v3, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupText:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 199
    new-instance v3, Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    invoke-direct {v3, v2, v0, v0, v1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v3, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupText:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 203
    sget-object p1, Lcom/alipay/mobile/antui/basic/AUBladeView;->skip_device:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 204
    if-eqz p1, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 206
    const-string p1, "AUBladeView"

    const-string v0, "is skip device"

    invoke-static {p1, v0}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    invoke-virtual {p1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->update()V

    .line 211
    return-void

    .line 212
    :cond_2
    iget-object p1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPopupWindow:Lcom/alipay/mobile/antui/basic/AUPopupWindow;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {p1, v0, v2, v1, v1}, Lcom/alipay/mobile/antui/basic/AUPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 215
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 122
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 123
    .local v1, "y":F
    iget v2, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    .line 124
    .local v2, "oldChoose":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getLetters()[Ljava/lang/String;

    move-result-object v3

    .line 126
    array-length v3, v3

    .line 128
    .local v3, "count":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    int-to-float v5, v3

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 130
    .local v4, "c":I
    const/4 v5, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_1

    const/4 v6, 0x2

    if-eq v0, v6, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    if-eq v2, v4, :cond_4

    .line 144
    if-ltz v4, :cond_4

    if-ge v4, v3, :cond_4

    .line 145
    invoke-direct {p0, v4}, Lcom/alipay/mobile/antui/basic/AUBladeView;->performItemClicked(I)V

    .line 146
    iput v4, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    .line 147
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->invalidate()V

    goto :goto_0

    .line 152
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowBkg:Z

    .line 153
    const/4 v6, -0x1

    iput v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    .line 154
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;

    if-eqz v6, :cond_2

    .line 155
    invoke-interface {v6}, Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;->onClickUp()V

    .line 157
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->dismissPopup()V

    .line 158
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->invalidate()V

    goto :goto_0

    .line 132
    :cond_3
    iput-boolean v5, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowBkg:Z

    .line 133
    if-eq v2, v4, :cond_4

    .line 134
    if-ltz v4, :cond_4

    if-ge v4, v3, :cond_4

    .line 135
    invoke-direct {p0, v4}, Lcom/alipay/mobile/antui/basic/AUBladeView;->performItemClicked(I)V

    .line 136
    iput v4, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    .line 137
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->invalidate()V

    .line 163
    :cond_4
    :goto_0
    return v5
.end method

.method protected getLetters()[Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mLetters:[Ljava/lang/String;

    return-object v0
.end method

.method protected init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->AUBladeView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 72
    .local v0, "styled":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUBladeView;->initStyleByTheme(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    .end local v0    # "styled":Landroid/content/res/TypedArray;
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/antui/basic/AUBladeView;->initStyleByTheme(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 238
    return-void
.end method

.method public initAttrStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUBladeView;->defaultLetters:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mLetters:[Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/alipay/mobile/antui/basic/AUBladeView;->defaultLetters:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mLetters:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v0

    aput-object v1, v2, v3

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 261
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUBladeView;->defaultLetters:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mLetters:[Ljava/lang/String;

    .line 262
    iget-object v3, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText2:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 264
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    sget-object v1, Lcom/alipay/mobile/antui/basic/AUBladeView;->defaultLetters:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mLetters:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    aget-object v1, v1, v0

    aput-object v1, v2, v3

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_2
    return-void

    .line 268
    :cond_3
    sget-object v0, Lcom/alipay/mobile/antui/basic/AUBladeView;->defaultLetters:[Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mLetters:[Ljava/lang/String;

    .line 270
    return-void
.end method

.method public initContent(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "typedArray"    # Landroid/content/res/TypedArray;

    .line 242
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUBladeView_top1Text:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText1:Ljava/lang/String;

    .line 243
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUBladeView_top2Text:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mText2:Ljava/lang/String;

    .line 244
    sget v0, Lcom/alipay/mobile/antui/R$styleable;->AUBladeView_showSelectPop:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowSelectPop:Z

    .line 245
    return-void
.end method

.method public initStyleByTheme(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 250
    return-void
.end method

.method public isAP()Ljava/lang/Boolean;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->isAP:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 88
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mShowBkg:Z

    if-eqz v0, :cond_0

    .line 90
    const-string v0, "#44000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getLetters()[Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "b":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getHeight()I

    move-result v1

    .line 95
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getWidth()I

    move-result v2

    .line 96
    .local v2, "width":I
    array-length v3, v0

    .line 97
    .local v3, "count":I
    div-int v4, v1, v3

    .line 99
    .local v4, "singleHeight":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_3

    .line 100
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    const-string v7, "#565656"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    const/16 v6, 0x190

    if-ge v1, v6, :cond_1

    .line 103
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE2:I

    .line 104
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 103
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBladeView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/alipay/mobile/antui/R$dimen;->AU_TEXTSIZE3:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 108
    :goto_1
    iget v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mChoose:I

    if-ne v5, v6, :cond_2

    .line 109
    iget-object v6, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    const-string v7, "#3399ff"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    :cond_2
    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    iget-object v7, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    .line 113
    .local v6, "xPos":F
    mul-int v7, v4, v5

    add-int/2addr v7, v4

    int-to-float v7, v7

    .line 114
    .local v7, "yPos":F
    aget-object v8, v0, v5

    iget-object v9, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    .end local v6    # "xPos":F
    .end local v7    # "yPos":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 116
    .end local v5    # "i":I
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 168
    :try_start_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "antui"

    const-string v2, "AUBladeView"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x1

    return v0
.end method

.method public setAP(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isAP"    # Ljava/lang/Boolean;

    .line 301
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->isAP:Ljava/lang/Boolean;

    .line 302
    return-void
.end method

.method public setOnItemClickListener(Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;

    .line 179
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUBladeView;->mOnItemClickListener:Lcom/alipay/mobile/antui/basic/AUBladeView$OnItemClickListener;

    .line 180
    return-void
.end method

.method public upDateTheme(Landroid/content/Context;Lcom/alipay/mobile/antui/theme/AUAbsTheme;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # Lcom/alipay/mobile/antui/theme/AUAbsTheme;

    .line 275
    return-void
.end method
