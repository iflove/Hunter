.class public Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
.super Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;
.source "H5EmbedEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;,
        Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "H5EmbedEditText"

.field private static final TEXT_ALIGN:Ljava/lang/String; = "textAlign"

.field private static final TEXT_CAN_PASTE:Ljava/lang/String; = "canPaste"

.field private static final TEXT_CAN_RETURN:Ljava/lang/String; = "canReturn"

.field private static final TEXT_COLOR:Ljava/lang/String; = "color"

.field private static final TEXT_CURSOR:Ljava/lang/String; = "cursor"

.field private static final TEXT_DISABLED:Ljava/lang/String; = "disabled"

.field private static final TEXT_FONT_FAMILY:Ljava/lang/String; = "fontFamily"

.field private static final TEXT_HINT_COLOR:Ljava/lang/String; = "placeHolderColor"

.field private static final TEXT_HINT_SIZE:Ljava/lang/String; = "placeHolderSize"

.field private static final TEXT_HINT_TEXT:Ljava/lang/String; = "placeHolderValue"

.field private static final TEXT_MAX_LENGTH:Ljava/lang/String; = "maxlength"

.field private static final TEXT_RETURN_TYPE:Ljava/lang/String; = "returnType"

.field private static final TEXT_SELECT_END:Ljava/lang/String; = "selectionEnd"

.field private static final TEXT_SELECT_START:Ljava/lang/String; = "selectionStart"

.field private static final TEXT_SIZE:Ljava/lang/String; = "fontSize"

.field private static final TEXT_VALUE:Ljava/lang/String; = "value"

.field private static mDelayTime:I


# instance fields
.field private mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field private mCanPaste:Z

.field private mCanReturn:Z

.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCursor:I

.field private mDisabled:Z

.field private mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

.field private mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

.field private mFontFamily:Ljava/lang/String;

.field private mH5InputMethodHelper:Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

.field private mHeight:I

.field private mHideInPageInputReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;

.field private mHintColor:Ljava/lang/String;

.field private mHintSize:Ljava/lang/String;

.field private mIsEditing:Z

.field private mIsTextArea:Z

.field private mLastContainerVisibleHeight:I

.field private mMaxLength:I

.field private mOldRectF:Landroid/graphics/RectF;

.field private mReceivedKeyDown:Z

.field private mResultReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;

.field private mReturnType:Ljava/lang/String;

.field private mScrollY:I

.field private mSelectEnd:I

.field private mSelectStart:I

.field private mTextAlign:Ljava/lang/String;

.field private mTextColor:Ljava/lang/String;

.field private mTextHint:Ljava/lang/String;

.field private mTextLineCounts:I

.field private mTextSize:Ljava/lang/String;

.field private mTextValue:Ljava/lang/String;

.field private mViewId:Ljava/lang/String;

.field private mWebView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDelayTime:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mScrollY:I

    .line 79
    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHeight:I

    .line 80
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    .line 85
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDisabled:Z

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCanPaste:Z

    .line 87
    const-string v2, ""

    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextValue:Ljava/lang/String;

    .line 88
    const-string v3, "17px"

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextSize:Ljava/lang/String;

    .line 89
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mFontFamily:Ljava/lang/String;

    .line 90
    const-string v4, "rgb(0, 0, 0)"

    iput-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextColor:Ljava/lang/String;

    .line 91
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextHint:Ljava/lang/String;

    .line 92
    iput-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintColor:Ljava/lang/String;

    .line 93
    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintSize:Ljava/lang/String;

    .line 94
    const/4 v2, -0x1

    iput v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mMaxLength:I

    .line 95
    const-string v3, "start"

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextAlign:Ljava/lang/String;

    .line 96
    iput v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectStart:I

    .line 97
    iput v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectEnd:I

    .line 98
    const-string v3, "done"

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReturnType:Ljava/lang/String;

    .line 99
    iput v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCursor:I

    .line 100
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCanReturn:Z

    .line 101
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsTextArea:Z

    .line 103
    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextLineCounts:I

    .line 104
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReceivedKeyDown:Z

    .line 105
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mLastContainerVisibleHeight:I

    .line 117
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsEditing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->initEditText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mMaxLength:I

    return v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextAlign:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsEditing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    .param p1, "x1"    # Z

    .line 46
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsEditing:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectStart:I

    return v0
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectEnd:I

    return v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCursor:I

    return v0
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDisabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReturnType:Ljava/lang/String;

    return-object v0
.end method

.method public static calcViewScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 412
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 413
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 414
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    aget v2, v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    int-to-float v2, v2

    aget v4, v0, v4

    .line 415
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-direct {v1, v3, v5, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 414
    return-object v1
.end method

.method private destroy()V
    .locals 2

    .line 342
    const-string v0, "H5EmbedEditText"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;)V

    .line 348
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 350
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 355
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    .line 357
    :cond_1
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    .line 358
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mResultReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;

    .line 359
    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5InputMethodHelper:Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

    .line 360
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDelayTime:I

    .line 361
    return-void
.end method

.method private handleFocusEvent()V
    .locals 12

    .line 463
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->hideCustomKeyboardAndNativeInput()V

    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;)V

    .line 468
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setFocusable(Z)V

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setFocusableInTouchMode(Z)V

    .line 470
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->requestFocus()Z

    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    .line 473
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->setInPageRenderInputShowing(Z)V

    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5InputMethodHelper:Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mResultReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    .line 475
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const/4 v8, 0x0

    const-string v7, "focus"

    const-string v9, "0"

    const-string v10, ""

    const-string v11, ""

    invoke-virtual/range {v4 .. v11}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 479
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->registerHideInPageRenderInputReceiver()V

    .line 481
    :cond_1
    return-void
.end method

.method private hideCustomKeyboardAndNativeInput()V
    .locals 4

    .line 493
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, "AlipayJSBridge.call(\'hideCustomInputMethod4NativeInput\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 501
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->hideNativeInput()V

    .line 502
    return-void
.end method

.method private init(ILjava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "height"    # I
    .param p2, "viewId"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput p1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHeight:I

    .line 148
    if-eqz p3, :cond_0

    .line 149
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 150
    .local v1, "entry":Ljava/util/Map$Entry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView, params,  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5EmbedEditText"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContext:Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5InputMethodHelper:Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

    .line 155
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;-><init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mResultReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;

    .line 156
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    .line 157
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$1;-><init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 163
    return-void
.end method

.method private initEditText(Ljava/lang/String;)V
    .locals 4
    .param p1, "viewId"    # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    const-string v1, "H5EmbedEditText"

    if-nez v0, :cond_0

    .line 167
    const-string v0, "initEditText mH5Page is NULL!"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    .line 171
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 173
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mWebView:Landroid/view/View;

    .line 174
    new-instance v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    .line 175
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setTag(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setFocusable(Z)V

    .line 177
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setBackgroundColor(I)V

    .line 179
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setInputType(I)V

    .line 180
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setMaxLines(I)V

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setCursorVisible(Z)V

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2, v2, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setPadding(IIII)V

    goto :goto_0

    .line 184
    :cond_1
    const-string v2, "initEditText, h5Page is NULL or Context is NULL or Context is not Activity"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void
.end method

.method private isValidEnterType(I)Z
    .locals 1
    .param p1, "actionId"    # I

    .line 576
    const/4 v0, 0x4

    if-eq v0, p1, :cond_1

    const/4 v0, 0x3

    if-eq v0, p1, :cond_1

    const/4 v0, 0x5

    if-eq v0, p1, :cond_1

    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    const/4 v0, 0x6

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private registerHideInPageRenderInputReceiver()V
    .locals 3

    .line 484
    new-instance v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;-><init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHideInPageInputReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;

    .line 485
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 486
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "alipay.intent.action.HIDE_IN_PAGE_RENDER_KEYBOARD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 488
    .local v1, "localBroadcastManager":Landroidx/localbroadcastmanager/content/LocalBroadcastManager;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHideInPageInputReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 489
    return-void
.end method

.method private renderEditText()V
    .locals 4

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextValue:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 280
    .local v0, "contentLength":I
    :goto_0
    sput v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDelayTime:I

    .line 281
    new-instance v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$2;-><init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;I)V

    sget v2, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDelayTime:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 325
    return-void
.end method

.method private resetViewState()V
    .locals 4

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/embedview/input/H5OnSoftKeyboardListener;)V

    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setFocusableInTouchMode(Z)V

    .line 389
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->setFocusable(Z)V

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->clearFocus()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mWebView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mWebView:Landroid/view/View;

    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mScrollY:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->scrollBy(II)V

    .line 397
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 400
    :cond_2
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    .line 401
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsEditing:Z

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch scrollBy : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mScrollY:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "H5EmbedEditText"

    invoke-static {v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mScrollY:I

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHideInPageInputReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;

    if-eqz v0, :cond_3

    .line 405
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHideInPageInputReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;

    invoke-virtual {v0, v3}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHideInPageInputReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;

    .line 408
    :cond_3
    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mLastContainerVisibleHeight:I

    .line 409
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 557
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 507
    return-void
.end method

.method public clearFocusAndHideKeyboard(Z)V
    .locals 12
    .param p1, "clickReturn"    # Z

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->resetViewState()V

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5InputMethodHelper:Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    .line 445
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mResultReceiver:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;

    .line 444
    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V

    .line 446
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    const-string v0, "r"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    move-object v9, v0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    .line 447
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 446
    const-string v7, "blur"

    const-string v10, ""

    invoke-virtual/range {v4 .. v11}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->setInPageRenderInputShowing(Z)V

    .line 450
    return-void
.end method

.method public displaySoftKeyboard(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "inputType"    # I

    .line 614
    const/4 v0, 0x0

    return v0
.end method

.method public getContainer()Landroid/view/View;
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    return-object v0
.end method

.method public getEditText()Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    .locals 1

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    return-object v0
.end method

.method public getH5InputMethodHelper()Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5InputMethodHelper:Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

    return-object v0
.end method

.method public getH5page()Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0

    .line 661
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInputHeight()I
    .locals 1

    .line 642
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHeight:I

    return v0
.end method

.method public getSnapshot(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecialRestoreView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSpecialRestoreView viewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", params: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->destroy()V

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0, p2, p3, p5}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->init(ILjava/lang/String;Ljava/util/Map;)V

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->renderEditText()V

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    return-object v0
.end method

.method public getView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getView viewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput-object p3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0, p2, p3, p5}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->init(ILjava/lang/String;Ljava/util/Map;)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    return-object v0
.end method

.method public getWebView()Landroid/view/View;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mWebView:Landroid/view/View;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 625
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->calcViewScreenLocation(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    .line 457
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->handleFocusEvent()V

    .line 460
    return-void
.end method

.method public onCustomKeyboardHide()V
    .locals 0

    .line 620
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->isValidEnterType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "content":Ljava/lang/String;
    const-string v9, "H5EmbedEditText"

    const-string v1, "onEditorAction actionId isValidEnterType"

    invoke-static {v9, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const/16 v5, 0xd

    const-string v4, "keydown"

    const-string v6, ""

    const-string v7, ""

    move-object v8, v0

    invoke-virtual/range {v1 .. v8}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCanReturn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 566
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    goto :goto_0

    .line 568
    :cond_0
    const-string v1, "onEditorAction prevent hide ime"

    invoke-static {v9, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :goto_0
    return v2

    .line 572
    .end local v0    # "content":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onEmbedViewAttachedToWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmbedViewAttachedToWebView viewId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public onEmbedViewDestory(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 202
    const-string v0, "H5EmbedEditText"

    const-string v1, "onEmbedViewDestroy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->destroy()V

    .line 204
    return-void
.end method

.method public onEmbedViewDetachedFromWebView(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 197
    const-string v0, "H5EmbedEditText"

    const-string v1, "onEmbedViewDetachedFromWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onEmbedViewParamChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "s1"    # Ljava/lang/String;
    .param p5, "map"    # Ljava/util/Map;
    .param p6, "strings"    # [Ljava/lang/String;
    .param p7, "strings1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 209
    const-string v0, "H5EmbedEditText"

    const-string v1, "onEmbedViewParamChanged"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onEmbedViewVisibilityChanged(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "viewId"    # Ljava/lang/String;
    .param p4, "mType"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/util/Map;
    .param p6, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEmbedViewVisibilityChanged viewId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-nez p2, :cond_0

    .line 377
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public onKeyPreIme()V
    .locals 1

    .line 634
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    .line 635
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 583
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReceivedKeyDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 584
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReceivedKeyDown:Z

    .line 585
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 589
    return-void

    .line 593
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 594
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContainer:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 595
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 596
    .local v2, "currentContainerVisibleHeight":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChange current visible height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5EmbedEditText"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLayoutChange last visible height : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mLastContainerVisibleHeight:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mLastContainerVisibleHeight:I

    if-eqz v3, :cond_4

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    if-ne v3, v5, :cond_2

    goto :goto_0

    .line 601
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_3

    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mLastContainerVisibleHeight:I

    sub-int v3, v2, v3

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_3

    .line 602
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    goto :goto_1

    .line 604
    :cond_3
    iget v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mLastContainerVisibleHeight:I

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mH5InputMethodHelper:Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulauc/embedview/input/H5InputMethodHelper;->getSystemKeyboardHeight()I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 605
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    goto :goto_1

    .line 599
    :cond_4
    :goto_0
    const-string v1, "onLayoutChange not hide"

    invoke-static {v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_5
    :goto_1
    iput v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mLastContainerVisibleHeight:I

    .line 610
    return-void
.end method

.method public onPushWindow()V
    .locals 0

    .line 630
    return-void
.end method

.method public onReceivedMessage(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p3, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedMessage, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jsonObject : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->handleFocusEvent()V

    goto :goto_0

    .line 241
    :cond_0
    const-string v0, "blur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    .line 244
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedRender(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 3
    .param p1, "data"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "h5BridgeContext"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceivedRender, data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz p1, :cond_1

    .line 250
    const-string v0, "element"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    .line 251
    const/4 v0, 0x0

    const-string v1, "canReturn"

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "canReturn":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCanReturn:Z

    goto :goto_0

    :cond_0
    const-string v1, "Y"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCanReturn:Z

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextColor:Ljava/lang/String;

    const-string v2, "color"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextColor:Ljava/lang/String;

    .line 254
    const-string v1, "cursor"

    const-string v2, "-1"

    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCursor:I

    .line 255
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDisabled:Z

    const-string v2, "disabled"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mDisabled:Z

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextSize:Ljava/lang/String;

    const-string v2, "fontSize"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextSize:Ljava/lang/String;

    .line 257
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mFontFamily:Ljava/lang/String;

    const-string v2, "fontFamily"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mFontFamily:Ljava/lang/String;

    .line 258
    iget v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mMaxLength:I

    const-string v2, "maxlength"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mMaxLength:I

    .line 259
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextHint:Ljava/lang/String;

    const-string v2, "placeHolderValue"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextHint:Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReturnType:Ljava/lang/String;

    const-string v2, "returnType"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mReturnType:Ljava/lang/String;

    .line 261
    iget v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectStart:I

    const-string v2, "selectionStart"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectStart:I

    .line 262
    iget v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectEnd:I

    const-string v2, "selectionEnd"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mSelectEnd:I

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextAlign:Ljava/lang/String;

    const-string v2, "textAlign"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextAlign:Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextValue:Ljava/lang/String;

    const-string v2, "value"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextValue:Ljava/lang/String;

    .line 265
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCanPaste:Z

    const-string v2, "canPaste"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mCanPaste:Z

    .line 266
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintColor:Ljava/lang/String;

    const-string v2, "placeHolderColor"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintColor:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintSize:Ljava/lang/String;

    const-string v2, "placeHolderSize"

    invoke-static {p1, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mHintSize:Ljava/lang/String;

    .line 269
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->renderEditText()V

    .line 271
    .end local v0    # "canReturn":Ljava/lang/String;
    :cond_1
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 272
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 273
    .local v0, "result":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "success"

    const-string v2, "YES"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-interface {p2, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 276
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 22
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 511
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextChanged s "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " start "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " before "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p3

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " count "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "H5EmbedEditText"

    invoke-static {v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "value":Ljava/lang/String;
    iput-object v0, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextValue:Ljava/lang/String;

    .line 516
    const/4 v15, -0x1

    .line 517
    .local v15, "ketCode":I
    const-string v12, ""

    .line 518
    .local v12, "keyCodeStr":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 520
    const/16 v21, 0x2e

    .line 521
    .end local v15    # "ketCode":I
    .local v21, "ketCode":I
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v10, "keydown"

    const-string v13, ""

    move/from16 v11, v21

    move-object v14, v0

    invoke-virtual/range {v7 .. v14}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v13, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v14, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v15, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v16, "keyup"

    const-string v19, ""

    move/from16 v17, v21

    move-object/from16 v18, v12

    move-object/from16 v20, v0

    invoke-virtual/range {v13 .. v20}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v13, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v14, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v15, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v16, "input"

    const-string v19, ""

    move/from16 v17, v21

    move-object/from16 v18, v12

    move-object/from16 v20, v0

    invoke-virtual/range {v13 .. v20}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v12

    move/from16 v15, v21

    goto/16 :goto_1

    .line 524
    .end local v21    # "ketCode":I
    .restart local v15    # "ketCode":I
    :cond_0
    const/4 v7, 0x1

    if-ne v3, v7, :cond_2

    .line 525
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v11, v7

    .line 526
    .local v11, "keyCode":C
    nop

    .line 527
    .local v7, "keyCodeInt":I
    const/16 v8, 0x2e

    if-ne v11, v8, :cond_1

    .line 528
    const/16 v7, 0xbe

    move/from16 v21, v7

    goto :goto_0

    .line 527
    :cond_1
    move/from16 v21, v7

    .line 530
    .end local v7    # "keyCodeInt":I
    .local v21, "keyCodeInt":I
    :goto_0
    move/from16 v17, v21

    .line 531
    .end local v15    # "ketCode":I
    .local v17, "ketCode":I
    invoke-static {v11}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v18

    .line 532
    .end local v12    # "keyCodeStr":Ljava/lang/String;
    .local v18, "keyCodeStr":Ljava/lang/String;
    iget-object v13, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v14, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v15, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v16, "keydown"

    const-string v19, ""

    move-object/from16 v20, v0

    invoke-virtual/range {v13 .. v20}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v10, "keyup"

    const-string v13, ""

    move v15, v11

    .end local v11    # "keyCode":C
    .local v15, "keyCode":C
    move/from16 v11, v17

    move-object/from16 v12, v18

    move-object v14, v0

    invoke-virtual/range {v7 .. v14}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v10, "input"

    const-string v13, ""

    move/from16 v11, v17

    move-object/from16 v12, v18

    move-object v14, v0

    invoke-virtual/range {v7 .. v14}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .end local v15    # "keyCode":C
    .end local v21    # "keyCodeInt":I
    move/from16 v15, v17

    goto :goto_1

    .end local v17    # "ketCode":I
    .end local v18    # "keyCodeStr":Ljava/lang/String;
    .restart local v12    # "keyCodeStr":Ljava/lang/String;
    .local v15, "ketCode":I
    :cond_2
    if-le v3, v7, :cond_3

    .line 536
    add-int v7, v2, v3

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v12, v7

    .line 537
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v10, "input"

    const-string v13, ""

    move v11, v15

    move-object v14, v0

    invoke-virtual/range {v7 .. v14}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v12

    goto :goto_1

    .line 535
    :cond_3
    move-object/from16 v18, v12

    .line 540
    .end local v12    # "keyCodeStr":Ljava/lang/String;
    .restart local v18    # "keyCodeStr":Ljava/lang/String;
    :goto_1
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    if-eqz v7, :cond_4

    iget-boolean v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mIsTextArea:Z

    if-eqz v8, :cond_4

    iget v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextLineCounts:I

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getLineCount()I

    move-result v7

    if-eq v8, v7, :cond_4

    .line 541
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getLineCount()I

    move-result v7

    iput v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextLineCounts:I

    .line 542
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    move-object v14, v7

    .line 543
    .local v14, "extData":Lcom/alibaba/fastjson/JSONObject;
    const-string v7, "lineCount"

    iget v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mTextLineCounts:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v7, "height"

    iget-object v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v14, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    iget-object v7, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEventDispatcher:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;

    iget-object v8, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mBridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v9, v1, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mViewId:Ljava/lang/String;

    const-string v10, "linechange"

    invoke-virtual {v14}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    move v11, v15

    move-object/from16 v12, v18

    move-object/from16 v16, v14

    .end local v14    # "extData":Lcom/alibaba/fastjson/JSONObject;
    .local v16, "extData":Lcom/alibaba/fastjson/JSONObject;
    move-object v14, v0

    invoke-virtual/range {v7 .. v14}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditTextEventDispatcher;->sendEventToWeb(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 550
    .end local v0    # "value":Ljava/lang/String;
    .end local v15    # "ketCode":I
    .end local v16    # "extData":Lcom/alibaba/fastjson/JSONObject;
    .end local v18    # "keyCodeStr":Ljava/lang/String;
    :cond_4
    goto :goto_2

    .line 548
    :catchall_0
    move-exception v0

    .line 549
    .local v0, "t":Ljava/lang/Throwable;
    const-string v7, "onTextChanged exception "

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 552
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 422
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 423
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 425
    .local v1, "y":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch mEditText hashCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mEditText:Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5EmbedEditText"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.getRawX() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.getRawY() : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "webView.scrollY : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mWebView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mScrollY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 431
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mOldRectF:Landroid/graphics/RectF;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    .line 433
    .local v2, "isInViewRect":Z
    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 434
    const-string v5, "onTouch ACTION_DOWN"

    invoke-static {v3, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    .line 438
    .end local v2    # "isInViewRect":Z
    :cond_0
    return v4
.end method

.method public onWebViewDestory()V
    .locals 2

    .line 232
    const-string v0, "H5EmbedEditText"

    const-string v1, "onWebViewDestory"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->destroy()V

    .line 234
    return-void
.end method

.method public onWebViewPause()V
    .locals 2

    .line 226
    const-string v0, "H5EmbedEditText"

    const-string v1, "onWebViewPause"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public onWebViewResume()V
    .locals 2

    .line 220
    const-string v0, "H5EmbedEditText"

    const-string v1, "onWebViewResume"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public setScrollY(I)V
    .locals 1
    .param p1, "scrollY"    # I

    .line 638
    iget v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mScrollY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->mScrollY:I

    .line 639
    return-void
.end method

.method public triggerPreSnapshot()V
    .locals 0

    .line 371
    return-void
.end method
