.class public Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5NativeInputPlugin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;
    }
.end annotation


# static fields
.field private static final DONE_BUTTON_HEIGHT_BY_DP:I = 0x30

.field private static final HIDE_CUSTOMKEYBOARD:Ljava/lang/String; = "hideCustomKeyBoard"

.field private static final INPUT_BLUREVENT:Ljava/lang/String; = "inputBlurEvent"

.field private static final RESIZE_NATIVEINPUT:Ljava/lang/String; = "resizeNativeKeyBoardInput"

.field private static final SP_GROUP_ID_NATIVE_INPUT:Ljava/lang/String; = "h5_nativeInput"

.field private static final SP_KEY_SYSTEM_INPUT_HEIGHT:Ljava/lang/String; = "systemKeyboardHeight"

.field private static final TAG:Ljava/lang/String; = "H5NativeInputPlugin"

.field private static final UPDATE_NATIVE_INPUT_CONTENT:Ljava/lang/String; = "updateNativeKeyBoardInput"


# instance fields
.field private cachedSystemInputHeight:I

.field private h5ResultReceiver:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;

.field private inputFilter:Landroid/text/InputFilter;

.field private mCanReturn:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentInputBefore:I

.field private mCurrentInputCount:I

.field private mCurrentInputStart:I

.field private mCurrentInputText:Ljava/lang/String;

.field private mCursor:I

.field private mDisableNewDoneBtn:Z

.field private mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

.field private mEditable:Landroid/text/Editable;

.field private mEnableNewUpdateContent:Z

.field private mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

.field private mHasSetCursor:Z

.field private mIsControlled:Z

.field private mIsTextArea:Z

.field private mKeyboardIsHiding:Z

.field private mKeyboardIsShowing:Z

.field private mLastContainerVisibleHeight:I

.field private mLastKeyCodeInt:I

.field private mLastKeyCodeStr:Ljava/lang/String;

.field private mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

.field private mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

.field private mPreviousText:Ljava/lang/String;

.field private mReceivedKeyDown:Z

.field private mReceivedSetDataEvent:Z

.field private mRenderingNativeText:Z

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mShowConfirmBar:Z

.field private mTextLineCounts:I

.field private mTotalScrollOffset:I

.field private mWebView:Lcom/uc/webview/export/WebView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field private nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

.field private scrollOffset:I

.field private tabBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lcom/uc/webview/export/WebView;

    .line 125
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputStart:I

    .line 83
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputBefore:I

    .line 84
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputCount:I

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    .line 88
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    .line 89
    const/4 v2, 0x1

    iput v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTextLineCounts:I

    .line 90
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsControlled:Z

    .line 91
    const-string v3, ""

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreviousText:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedKeyDown:Z

    .line 94
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    .line 96
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    .line 97
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mShowConfirmBar:Z

    .line 98
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedSetDataEvent:Z

    .line 99
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mRenderingNativeText:Z

    .line 101
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeInt:I

    .line 102
    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeStr:Ljava/lang/String;

    .line 104
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionStart:I

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCursor:I

    .line 105
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mHasSetCursor:Z

    .line 111
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEnableNewUpdateContent:Z

    .line 113
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDisableNewDoneBtn:Z

    .line 115
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsHiding:Z

    .line 117
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsShowing:Z

    .line 126
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    .line 128
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCanReturn:Z

    .line 129
    const-string v0, "h5_enableNewUpdateContent"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEnableNewUpdateContent:Z

    .line 130
    const-string v0, "h5_disableNewDoneBtn"

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/util/H5ConfigUtil;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDisableNewDoneBtn:Z

    .line 131
    new-instance v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->h5ResultReceiver:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "x2"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->addDoneButton(Lcom/alipay/mobile/h5container/api/H5Page;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 64
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDisableNewDoneBtn:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->addDoneButtonNew(Lcom/alipay/mobile/h5container/api/H5Page;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsHiding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->preHandleTextBeforeSendToWeb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 64
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeInt:I

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;
    .param p1, "x1"    # Z

    .line 64
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsShowing:Z

    return p1
.end method

.method private addDoneButton(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 9
    .param p1, "h5page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 791
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mShowConfirmBar:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManager:Landroid/view/WindowManager;

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    .line 799
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 801
    :cond_2
    new-instance v0, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    .line 802
    const/16 v1, 0xf2

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->setBackgroundColor(I)V

    .line 803
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    .line 804
    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    const/4 v3, -0x1

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 805
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 806
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 807
    new-instance v1, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;-><init>(Landroid/content/Context;)V

    .line 808
    .local v1, "done":Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;
    const/16 v4, 0x49

    const/16 v5, 0xa9

    const/16 v6, 0xee

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setTextColor(I)V

    .line 809
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    const-string v4, "\u5b8c\u6210"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setText(Ljava/lang/CharSequence;)V

    .line 811
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getFontSize(F)F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setTextSize(F)V

    .line 812
    new-instance v4, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$4;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$4;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 825
    .local v4, "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 826
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 827
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->setVisibility(I)V

    .line 828
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    invoke-virtual {v6, v1, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x1

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 831
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x2

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 832
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x8

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 833
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const v8, 0x800033

    iput v8, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 835
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 836
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->getScreenHeight()I

    move-result v7

    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    .line 837
    invoke-static {v8, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v7, v2

    invoke-static {}, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->getStatusBarHeight()I

    move-result v2

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 839
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 840
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 841
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 843
    return-void

    .line 792
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "done":Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;
    .end local v4    # "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    :goto_0
    return-void
.end method

.method private addDoneButtonNew(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 5
    .param p1, "h5page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 846
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mShowConfirmBar:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->removeNewDoneButton()V

    .line 851
    new-instance v0, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    .line 852
    const/16 v1, 0xf2

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->setBackgroundColor(I)V

    .line 853
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42400000    # 48.0f

    .line 854
    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 855
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 856
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 857
    new-instance v1, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;-><init>(Landroid/content/Context;)V

    .line 858
    .local v1, "done":Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;
    const/16 v2, 0x49

    const/16 v3, 0xa9

    const/16 v4, 0xee

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setTextColor(I)V

    .line 859
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 860
    const-string v2, "\u5b8c\u6210"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setText(Ljava/lang/CharSequence;)V

    .line 861
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->getFontSize(F)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setTextSize(F)V

    .line 862
    new-instance v2, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$5;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 874
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 875
    .local v2, "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 876
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 877
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->setVisibility(I)V

    .line 878
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 879
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 880
    .local v3, "h5Activity":Landroid/app/Activity;
    if-eqz v3, :cond_1

    .line 881
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    :cond_1
    return-void

    .line 847
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "done":Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaButton;
    .end local v2    # "layoutParams1":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "h5Activity":Landroid/app/Activity;
    :cond_2
    :goto_0
    return-void
.end method

.method private adjustBaseViewHeight()V
    .locals 3

    .line 1215
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 1216
    new-instance v1, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$7;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$7;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V

    const-string v2, "function adjustBaseViewHeight() {\n    var newembedbase = document.getElementById(\'newembedbase\');\n    if (newembedbase) {\n        if (parseFloat(newembedbase.style.height) == document.body.scrollHeight) {\n            return \'NO\';\n        } else {\n            newembedbase.setAttribute(\'style\', \'z-index:-9999;position:absolute;left:0px;top:0px;width:100%;height:\' + document.body.scrollHeight + \'px\');\n            return \'YES\';\n        }\n    }\n}\nadjustBaseViewHeight();"

    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1234
    :cond_0
    return-void
.end method

.method private convertRGBAToARGB(Ljava/lang/String;)I
    .locals 4
    .param p1, "rgba"    # Ljava/lang/String;

    .line 1102
    const-string v0, "#"

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1104
    .local v2, "alpha":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1105
    .local v1, "rgb":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1109
    .end local v1    # "rgb":Ljava/lang/String;
    .end local v2    # "alpha":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1107
    :catchall_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5NativeInputPlugin"

    const-string v2, "convertRGBAToARGB error : "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1110
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private convertRgbStr2Color(Ljava/lang/String;)I
    .locals 7
    .param p1, "rgbStr"    # Ljava/lang/String;

    .line 1086
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1087
    .local v1, "length":I
    const/4 v2, 0x4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1088
    .local v2, "subStr":Ljava/lang/String;
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, "rgb":[Ljava/lang/String;
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1090
    .end local v1    # "length":I
    .end local v2    # "subStr":Ljava/lang/String;
    .end local v3    # "rgb":[Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 1091
    .local v1, "t":Ljava/lang/Throwable;
    return v0
.end method

.method private dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "keyCode"    # I
    .param p3, "strKey"    # Ljava/lang/String;
    .param p4, "extData"    # Ljava/lang/String;

    .line 1160
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEventWithElement keyCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", strKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NativeInputPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1163
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.AlipayH5Keyboad && AlipayH5Keyboad.dispatchEventWithElement(window._currentInput,\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1167
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private execScrollWebContent(FFIIF)V
    .locals 15
    .param p1, "y"    # F
    .param p2, "h"    # F
    .param p3, "scrollY"    # I
    .param p4, "webViewHeight"    # I
    .param p5, "cursorSpacing"    # F

    .line 890
    move-object v0, p0

    move/from16 v1, p5

    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move/from16 v3, p1

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 891
    .local v2, "yy":I
    iget-object v4, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move/from16 v5, p2

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 892
    .local v4, "hh":I
    add-int v6, v2, v4

    .line 893
    .local v6, "inputPos":I
    sub-int v7, v6, p3

    .line 894
    .local v7, "realPos":I
    sub-int v8, p4, v7

    iget v9, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    add-int/2addr v8, v9

    .line 895
    .local v8, "inputHeight":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inputHeight : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "H5NativeInputPlugin"

    invoke-static {v10, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v9, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    const/high16 v11, 0x42400000    # 48.0f

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 897
    .local v9, "doneButtonHeight":I
    iget-boolean v11, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mShowConfirmBar:Z

    if-nez v11, :cond_0

    .line 898
    const/4 v9, 0x0

    .line 900
    :cond_0
    const/4 v11, 0x0

    .line 901
    .local v11, "cursorSpacingDis":I
    iget-boolean v12, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v12, :cond_2

    .line 902
    float-to-int v13, v1

    if-ge v13, v8, :cond_1

    float-to-int v13, v1

    goto :goto_0

    :cond_1
    move v13, v8

    :goto_0
    move v11, v13

    .line 904
    :cond_2
    const/4 v13, 0x0

    if-ltz v8, :cond_6

    .line 905
    if-nez v12, :cond_4

    .line 906
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v12

    if-ge v8, v12, :cond_3

    .line 907
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v12

    sub-int/2addr v12, v8

    iput v12, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    .line 908
    iget-object v14, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v14, v13, v12}, Lcom/uc/webview/export/WebView;->scrollBy(II)V

    goto :goto_1

    .line 910
    :cond_3
    iput v13, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    goto :goto_1

    .line 913
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v12

    sub-int v12, v8, v12

    add-int v14, v9, v4

    if-ge v12, v14, :cond_5

    .line 914
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v12

    sub-int/2addr v12, v8

    add-int/2addr v12, v9

    add-int/2addr v12, v4

    add-int/2addr v12, v11

    iput v12, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    .line 915
    iget-object v14, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v14, v13, v12}, Lcom/uc/webview/export/WebView;->scrollBy(II)V

    .line 916
    const-string v12, "textarea scroll by scrollOffset"

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 918
    :cond_5
    iget-object v12, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v12, v13, v11}, Lcom/uc/webview/export/WebView;->scrollBy(II)V

    .line 919
    iput v11, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    .line 920
    const-string v12, "textarea scroll by cursorSpacingDis"

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 927
    :cond_6
    iput v13, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    .line 930
    :goto_1
    iget v12, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTotalScrollOffset:I

    iget v13, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    add-int/2addr v12, v13

    iput v12, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTotalScrollOffset:I

    .line 931
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "scrollOffset : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method private getKeyBoardHeightFromSP()I
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_nativeInput"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const/4 v1, 0x0

    const-string v2, "systemKeyboardHeight"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getSystemKeyboardHeight()I
    .locals 8

    .line 1014
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    const-string v1, "H5NativeInputPlugin"

    if-eqz v0, :cond_0

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemKeyboardHeight 1 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    return v0

    .line 1018
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getKeyBoardHeightFromSP()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    .line 1019
    if-eqz v0, :cond_1

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSystemKeyboardHeight 2 : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    return v0

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    const v2, 0x43858000    # 267.0f

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 1026
    .local v0, "defaultInputHeight":I
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    .line 1027
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1028
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 1029
    .local v3, "clazz":Ljava/lang/Class;
    const-string v4, "getInputMethodWindowVisibleHeight"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 1030
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1031
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v7, v6, v5

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1032
    .local v5, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getInputMethodWindowVisibleHeight  3 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    if-eqz v5, :cond_2

    .line 1034
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isValidKeyBoardHeight(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1035
    iput v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    .line 1036
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->saveKeyBoardHeightToSP(I)V

    .line 1037
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSystemKeyboardHeight 4 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    return v5

    .line 1043
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "clazz":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "height":I
    :cond_2
    goto :goto_0

    .line 1041
    :catchall_0
    move-exception v2

    .line 1042
    .local v2, "t":Ljava/lang/Throwable;
    const-string v3, "getSystemKeyboardHeight exception"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1044
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-eqz v2, :cond_3

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemKeyboardHeight  7 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    return v1

    .line 1048
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemKeyboardHeight defaultInputHeight 8 : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    return v0
.end method

.method private hideCustomKeyboard()V
    .locals 4

    .line 1191
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_0

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1193
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    const-string v1, "AlipayJSBridge.call(\'hideCustomInputMethod4NativeInput\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1197
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private hideNativeInput(ZZZ)V
    .locals 4
    .param p1, "ifNeedHideSoftInput"    # Z
    .param p2, "isClickReturn"    # Z
    .param p3, "onLayout"    # Z

    .line 935
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsHiding:Z

    .line 936
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 937
    const-string v0, "H5NativeInputPlugin"

    const-string v2, "hideNativeInput"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 939
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->restoreInputElement(Z)V

    .line 940
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->clearFocus()V

    .line 941
    if-eqz p1, :cond_0

    .line 942
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideSoftInputFromWindow()V

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->removeView(Landroid/view/View;)V

    .line 945
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 948
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 950
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 953
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    if-eqz v0, :cond_4

    .line 954
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->setVisibility(I)V

    .line 955
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDisableNewDoneBtn:Z

    if-eqz v0, :cond_3

    .line 956
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    .line 957
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 959
    :cond_2
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    goto :goto_0

    .line 961
    :cond_3
    if-nez p3, :cond_4

    .line 962
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->removeNewDoneButton()V

    .line 967
    :cond_4
    :goto_0
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManager:Landroid/view/WindowManager;

    .line 968
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 969
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 970
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    .line 971
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTotalScrollOffset:I

    if-eqz v0, :cond_5

    .line 972
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    neg-int v0, v0

    invoke-virtual {v3, v1, v0}, Lcom/uc/webview/export/WebView;->scrollBy(II)V

    .line 974
    :cond_5
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->scrollOffset:I

    .line 975
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTotalScrollOffset:I

    .line 976
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    .line 977
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionStart:I

    .line 978
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCursor:I

    .line 979
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mHasSetCursor:Z

    .line 980
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    .line 981
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCanReturn:Z

    .line 982
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedKeyDown:Z

    .line 983
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    .line 984
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mShowConfirmBar:Z

    .line 985
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedSetDataEvent:Z

    .line 986
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mRenderingNativeText:Z

    .line 987
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeInt:I

    .line 988
    const-string v3, ""

    iput-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeStr:Ljava/lang/String;

    .line 989
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEditable:Landroid/text/Editable;

    .line 990
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputBefore:I

    .line 991
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputCount:I

    .line 992
    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputStart:I

    .line 993
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputText:Ljava/lang/String;

    .line 994
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->inputFilter:Landroid/text/InputFilter;

    .line 995
    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    .line 996
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 997
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsControlled:Z

    .line 999
    :cond_6
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsHiding:Z

    .line 1000
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsShowing:Z

    .line 1001
    return-void
.end method

.method private hideSoftInputFromWindow()V
    .locals 4

    .line 1068
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-nez v0, :cond_0

    .line 1069
    const-string v0, "H5NativeInputPlugin"

    const-string v1, "fatal error mNativeEditText == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    return-void

    .line 1072
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1073
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1074
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1075
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->h5ResultReceiver:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 1077
    :cond_1
    return-void
.end method

.method private isCustomKeyboardType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 1080
    const-string v0, "idcard"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "digit"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1081
    const-string v0, "number"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1080
    :goto_1
    return v0
.end method

.method private isTextArea(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;

    .line 886
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "textarea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidEnterType(I)Z
    .locals 1
    .param p1, "actionId"    # I

    .line 511
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

.method private isValidKeyBoardHeight(I)Z
    .locals 2
    .param p1, "height"    # I

    .line 491
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    const v1, 0x43858000    # 267.0f

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 492
    .local v0, "defaultInputHeight":I
    add-int/lit8 v1, v0, 0x32

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private newUpdateContentMethod(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEditable:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 238
    .local v0, "length":I
    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputStart:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputBefore:I

    if-eq v5, v4, :cond_0

    iget v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputCount:I

    if-eq v5, v4, :cond_0

    add-int/2addr v1, v5

    if-ge v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 241
    .local v1, "isCursorInMiddle":Z
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEditable:Landroid/text/Editable;

    invoke-interface {v4, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 242
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsControlled:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    .line 243
    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputCount:I

    if-nez v2, :cond_2

    .line 244
    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputStart:I

    iget v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputBefore:I

    sub-int v5, v2, v4

    add-int/2addr v5, v3

    if-le v5, v0, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->safeSetSelection(I)V

    goto :goto_2

    .line 246
    :cond_2
    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputStart:I

    add-int/2addr v3, v2

    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputBefore:I

    sub-int/2addr v3, v2

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->safeSetSelection(I)V

    goto :goto_2

    .line 249
    :cond_3
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->safeUpdateCursor(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0    # "length":I
    .end local v1    # "isCursorInMiddle":Z
    :goto_2
    goto :goto_3

    .line 251
    :catchall_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5NativeInputPlugin"

    const-string v2, "newUpdateContentMethod"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->oldUpdateContentMethod(Ljava/lang/String;)V

    .line 255
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private oldUpdateContentMethod(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->safeUpdateCursor(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method private preHandleTextBeforeSendToWeb(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 1237
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1238
    const-string v0, "\r"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1239
    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1241
    :cond_0
    return-object p1
.end method

.method private removeNewDoneButton()V
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1006
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1007
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1009
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDoneButtonContainer:Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextAreaRelativeLayout;

    .line 1011
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    return-void
.end method

.method private restoreInputElement(Z)V
    .locals 4
    .param p1, "isClickReturn"    # Z

    .line 1200
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_1

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1202
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    const-string v1, "console.log(\'restoreInputElement\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    if-eqz p1, :cond_0

    .line 1205
    const-string v1, "window.AlipayH5Keyboad && AlipayH5Keyboad.dispatchEventWithElement(window._currentInput,\'blur\', 0, \'r\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1207
    :cond_0
    const-string v1, "window.AlipayH5Keyboad && AlipayH5Keyboad.dispatchEventWithElement(window._currentInput,\'blur\', 0, \'\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "window.AlipayH5Keyboad.restoreInputElement("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1212
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private safeSetSelection(I)V
    .locals 3
    .param p1, "length"    # I

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v0, :cond_0

    .line 277
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setSelection(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    goto :goto_0

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "H5NativeInputPlugin"

    const-string v2, "safeSetSelection "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void
.end method

.method private safeUpdateCursor(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->safeSetSelection(I)V

    .line 259
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mHasSetCursor:Z

    if-nez v0, :cond_2

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mHasSetCursor:Z

    .line 261
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCursor:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCursor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->safeSetSelection(I)V

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->safeSetSelection(I)V

    .line 268
    :goto_1
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionStart:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    if-ltz v0, :cond_2

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setSelection(I)V

    .line 272
    :cond_2
    return-void
.end method

.method private saveKeyBoardHeightToSP(I)V
    .locals 2
    .param p1, "height"    # I

    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    if-nez v0, :cond_0

    .line 497
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "h5_nativeInput"

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/SharedPreferencesManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    const-string v1, "systemKeyboardHeight"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;I)Z

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreferences:Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->commit()Z

    .line 501
    return-void
.end method

.method private setImeOptions(Ljava/lang/String;)V
    .locals 2
    .param p1, "returnType"    # Ljava/lang/String;

    .line 1142
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v0, :cond_5

    .line 1143
    const-string v0, "send"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setImeOptions(I)V

    goto :goto_0

    .line 1145
    :cond_0
    const-string v0, "search"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1146
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setImeOptions(I)V

    goto :goto_0

    .line 1147
    :cond_1
    const-string v0, "next"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setImeOptions(I)V

    goto :goto_0

    .line 1149
    :cond_2
    const-string v0, "go"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1150
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setImeOptions(I)V

    goto :goto_0

    .line 1151
    :cond_3
    const-string v0, "done"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_4

    .line 1152
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setImeOptions(I)V

    goto :goto_0

    .line 1154
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setImeOptions(I)V

    .line 1157
    :cond_5
    :goto_0
    return-void
.end method

.method private setMaxLength(I)V
    .locals 5
    .param p1, "maxlength"    # I

    .line 1115
    new-instance v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$6;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$6;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->inputFilter:Landroid/text/InputFilter;

    .line 1131
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v1, :cond_1

    .line 1132
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    .line 1133
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->inputFilter:Landroid/text/InputFilter;

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 1136
    :cond_0
    new-array v3, v3, [Landroid/text/InputFilter;

    aput-object v0, v3, v2

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1139
    :cond_1
    :goto_0
    return-void
.end method

.method private setSelection(I)V
    .locals 4
    .param p1, "valueLength"    # I

    .line 766
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-nez v0, :cond_0

    .line 767
    return-void

    .line 769
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionStart:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    if-eq v3, v2, :cond_8

    .line 770
    :cond_1
    if-ne v1, v2, :cond_2

    .line 771
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setSelection(I)V

    goto :goto_2

    .line 773
    :cond_2
    const/4 v3, 0x0

    if-gez v1, :cond_3

    .line 774
    iput v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionStart:I

    .line 776
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    if-eq v1, v2, :cond_5

    if-le v1, p1, :cond_4

    goto :goto_0

    .line 778
    :cond_4
    if-gez v1, :cond_6

    .line 779
    iput v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    goto :goto_1

    .line 777
    :cond_5
    :goto_0
    iput p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    .line 781
    :cond_6
    :goto_1
    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionStart:I

    iget v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    if-lt v1, v2, :cond_7

    .line 782
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setSelection(I)V

    goto :goto_2

    .line 784
    :cond_7
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setSelection(II)V

    .line 788
    :cond_8
    :goto_2
    return-void
.end method

.method private setValueToWebInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 1170
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    const/4 v1, 0x0

    const-string v2, "\');"

    const-string v3, "javascript:"

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_1

    .line 1172
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->preHandleTextBeforeSendToWeb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1174
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    const-string v3, "console.log(\'setTextareaValue\');"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window.AlipayH5Keyboad.setTextareaValue(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1178
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    if-eqz v0, :cond_1

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    .restart local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1183
    const-string v3, "console.log(\'setInputValue4Android\');"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window.AlipayH5Keyboad.setInputValue4Android(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 1188
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-void
.end method

.method private showNativeInput(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 517
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsHiding:Z

    const-string v1, "H5NativeInputPlugin"

    if-eqz v0, :cond_0

    .line 518
    const-string v0, "too fast click"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    return-void

    .line 521
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getH5page()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    .line 522
    .local v0, "h5Page":Lcom/alipay/mobile/h5container/api/H5Page;
    if-nez v0, :cond_1

    .line 523
    const-string v2, "fatal error null == h5Page"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return-void

    .line 526
    :cond_1
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mH5Page:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 528
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->hideInPageRenderInput()V

    .line 531
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->adjustBaseViewHeight()V

    .line 533
    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fragmentType"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "subtab"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 534
    .local v2, "isTabBarPage":Z
    iget v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    if-nez v3, :cond_3

    .line 535
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42500000    # 52.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    iput v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->tabBarHeight:I

    .line 537
    :cond_3
    new-instance v3, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;

    invoke-direct {v3, p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$1;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-interface {v0, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getNewEmbedViewRoot(Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedBaseViewListener;)Landroid/view/View;

    move-result-object v3

    .line 546
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_4

    .line 547
    const-string v4, "render native input directly"

    invoke-static {v1, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    move-object v1, v3

    check-cast v1, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-direct {p0, p1, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V

    .line 550
    :cond_4
    return-void
.end method

.method private showNativeInputInternal(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;)V
    .locals 37
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "container"    # Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 554
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    const-string v0, "Y"

    const-string v1, "N"

    const-string v15, "H5NativeInputPlugin"

    if-nez v13, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    const/4 v11, 0x1

    :try_start_0
    iput-boolean v11, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mRenderingNativeText:Z

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v9, v2

    .line 559
    .local v9, "params":Lcom/alibaba/fastjson/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showNativeInput jsapi params is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iput-object v14, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 562
    invoke-virtual {v14, v12}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 563
    iget-object v2, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-virtual {v2, v12}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 567
    const-string v2, "tagName"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 568
    .local v8, "tagName":Ljava/lang/String;
    const-string v2, "offset"

    const/4 v3, 0x0

    invoke-static {v9, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v7, v2

    .line 569
    .local v7, "offset":Lcom/alibaba/fastjson/JSONObject;
    const-string v2, "x"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    move v6, v2

    .line 570
    .local v6, "x":F
    const-string v2, "y"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    move v3, v2

    .line 572
    .local v3, "y":F
    const-string v2, "w"

    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 573
    .local v2, "w":F
    const-string v4, "h"

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    move v5, v4

    .line 574
    .local v5, "h":F
    const-string v4, "placeholder"

    invoke-static {v9, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "placeHolder":Ljava/lang/String;
    const-string v11, "keyboard"

    invoke-static {v9, v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 577
    .local v11, "keyboard":Ljava/lang/String;
    const-string v10, "kbElId"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v10

    move/from16 v18, v10

    .line 578
    .local v18, "kbElId":I
    const-string v10, "value"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 579
    .local v10, "value":Ljava/lang/String;
    move/from16 v19, v2

    .end local v2    # "w":F
    .local v19, "w":F
    const-string v2, "color"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    .local v2, "color":Ljava/lang/String;
    move-object/from16 v20, v2

    .end local v2    # "color":Ljava/lang/String;
    .local v20, "color":Ljava/lang/String;
    const-string v2, "fontSize"

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    .line 581
    .local v2, "fontSize":F
    move/from16 v21, v2

    .end local v2    # "fontSize":F
    .local v21, "fontSize":F
    const-string v2, "fontFamily"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 583
    .local v2, "fontFamily":Ljava/lang/String;
    move-object/from16 v22, v2

    .end local v2    # "fontFamily":Ljava/lang/String;
    .local v22, "fontFamily":Ljava/lang/String;
    const-string v2, "maxlength"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 585
    .local v2, "maxLength":I
    move/from16 v23, v2

    .end local v2    # "maxLength":I
    .local v23, "maxLength":I
    const-string v2, "textAlign"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "textAlign":Ljava/lang/String;
    move-object/from16 v24, v2

    .end local v2    # "textAlign":Ljava/lang/String;
    .local v24, "textAlign":Ljava/lang/String;
    const-string v2, "selectionStart"

    const/4 v14, -0x1

    invoke-static {v9, v2, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionStart:I

    .line 587
    const-string v2, "selectionEnd"

    invoke-static {v9, v2, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v2

    iput v2, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mSelectionEnd:I

    .line 588
    const-string v2, "returnType"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "returnType":Ljava/lang/String;
    const-string v14, "canReturn"

    invoke-static {v9, v14, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v1, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    const/4 v14, 0x1

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    iput-boolean v14, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCanReturn:Z

    .line 590
    const-string v14, "cursor"

    move-object/from16 v25, v2

    const/4 v2, -0x1

    .end local v2    # "returnType":Ljava/lang/String;
    .local v25, "returnType":Ljava/lang/String;
    invoke-static {v9, v14, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v14

    iput v14, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCursor:I

    .line 591
    const-string v2, "controlled"

    invoke-static {v9, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsControlled:Z

    .line 593
    invoke-direct {v12, v8}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isTextArea(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, "mAutoHeight":Z
    if-eqz v0, :cond_2

    .line 597
    const-string v0, "autoHeight"

    const/4 v14, 0x0

    invoke-static {v9, v0, v14}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    move v1, v0

    .line 598
    const-string v0, "showConfirmBar"

    const/4 v2, 0x1

    invoke-static {v9, v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mShowConfirmBar:Z

    .line 600
    const-string v0, "cursorSpacing"

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/JSONObject;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    move/from16 v16, v1

    move v1, v0

    .local v0, "cursorSpacing":F
    goto :goto_1

    .line 602
    .end local v0    # "cursorSpacing":F
    :cond_2
    const/4 v2, 0x1

    const/4 v14, 0x0

    const/4 v0, 0x0

    move/from16 v16, v1

    move v1, v0

    .line 605
    .local v1, "cursorSpacing":F
    .local v16, "mAutoHeight":Z
    :goto_1
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    move-object v14, v4

    .end local v4    # "placeHolder":Ljava/lang/String;
    .local v14, "placeHolder":Ljava/lang/String;
    move v4, v0

    .line 606
    .local v4, "scrollY":I
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mWebView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getHeight()I

    move-result v0

    move/from16 v26, v5

    .end local v5    # "h":F
    .local v26, "h":F
    move v5, v0

    .line 608
    .local v5, "webViewHeight":I
    iget-boolean v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v0, :cond_4

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execScrollWebContent pre cursorSpacing + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    move/from16 v27, v1

    .end local v1    # "cursorSpacing":F
    .local v27, "cursorSpacing":F
    move-object/from16 v1, p0

    move-object/from16 v28, v14

    move/from16 v14, v19

    move-object/from16 v29, v20

    move/from16 v30, v21

    move-object/from16 v31, v22

    move/from16 v32, v23

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    const/4 v0, 0x1

    .end local v19    # "w":F
    .end local v20    # "color":Ljava/lang/String;
    .end local v21    # "fontSize":F
    .end local v22    # "fontFamily":Ljava/lang/String;
    .end local v23    # "maxLength":I
    .end local v24    # "textAlign":Ljava/lang/String;
    .end local v25    # "returnType":Ljava/lang/String;
    .local v14, "w":F
    .local v28, "placeHolder":Ljava/lang/String;
    .local v29, "color":Ljava/lang/String;
    .local v30, "fontSize":F
    .local v31, "fontFamily":Ljava/lang/String;
    .local v32, "maxLength":I
    .local v33, "textAlign":Ljava/lang/String;
    .local v34, "returnType":Ljava/lang/String;
    move v2, v3

    move/from16 v19, v3

    .end local v3    # "y":F
    .local v19, "y":F
    move/from16 v3, v26

    move/from16 v35, v6

    .end local v6    # "x":F
    .local v35, "x":F
    move/from16 v6, v27

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->execScrollWebContent(FFIIF)V

    move-object/from16 v20, v7

    move-object/from16 v17, v8

    move-object v3, v9

    move-object v1, v10

    move-object/from16 v36, v11

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 609
    .end local v27    # "cursorSpacing":F
    .end local v28    # "placeHolder":Ljava/lang/String;
    .end local v29    # "color":Ljava/lang/String;
    .end local v30    # "fontSize":F
    .end local v31    # "fontFamily":Ljava/lang/String;
    .end local v32    # "maxLength":I
    .end local v33    # "textAlign":Ljava/lang/String;
    .end local v34    # "returnType":Ljava/lang/String;
    .end local v35    # "x":F
    .restart local v1    # "cursorSpacing":F
    .restart local v3    # "y":F
    .restart local v6    # "x":F
    .local v14, "placeHolder":Ljava/lang/String;
    .local v19, "w":F
    .restart local v20    # "color":Ljava/lang/String;
    .restart local v21    # "fontSize":F
    .restart local v22    # "fontFamily":Ljava/lang/String;
    .restart local v23    # "maxLength":I
    .restart local v24    # "textAlign":Ljava/lang/String;
    .restart local v25    # "returnType":Ljava/lang/String;
    :cond_3
    move/from16 v27, v1

    move/from16 v35, v6

    move-object/from16 v28, v14

    move/from16 v14, v19

    move-object/from16 v29, v20

    move/from16 v30, v21

    move-object/from16 v31, v22

    move/from16 v32, v23

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    const/4 v0, 0x1

    move/from16 v19, v3

    .end local v1    # "cursorSpacing":F
    .end local v3    # "y":F
    .end local v6    # "x":F
    .end local v20    # "color":Ljava/lang/String;
    .end local v21    # "fontSize":F
    .end local v22    # "fontFamily":Ljava/lang/String;
    .end local v23    # "maxLength":I
    .end local v24    # "textAlign":Ljava/lang/String;
    .end local v25    # "returnType":Ljava/lang/String;
    .local v14, "w":F
    .local v19, "y":F
    .restart local v27    # "cursorSpacing":F
    .restart local v28    # "placeHolder":Ljava/lang/String;
    .restart local v29    # "color":Ljava/lang/String;
    .restart local v30    # "fontSize":F
    .restart local v31    # "fontFamily":Ljava/lang/String;
    .restart local v32    # "maxLength":I
    .restart local v33    # "textAlign":Ljava/lang/String;
    .restart local v34    # "returnType":Ljava/lang/String;
    .restart local v35    # "x":F
    move-object/from16 v20, v7

    move-object/from16 v17, v8

    move-object v3, v9

    move-object v1, v10

    move-object/from16 v36, v11

    const/4 v2, 0x0

    goto :goto_2

    .line 614
    .end local v27    # "cursorSpacing":F
    .end local v28    # "placeHolder":Ljava/lang/String;
    .end local v29    # "color":Ljava/lang/String;
    .end local v30    # "fontSize":F
    .end local v31    # "fontFamily":Ljava/lang/String;
    .end local v32    # "maxLength":I
    .end local v33    # "textAlign":Ljava/lang/String;
    .end local v34    # "returnType":Ljava/lang/String;
    .end local v35    # "x":F
    .restart local v1    # "cursorSpacing":F
    .restart local v3    # "y":F
    .restart local v6    # "x":F
    .local v14, "placeHolder":Ljava/lang/String;
    .local v19, "w":F
    .restart local v20    # "color":Ljava/lang/String;
    .restart local v21    # "fontSize":F
    .restart local v22    # "fontFamily":Ljava/lang/String;
    .restart local v23    # "maxLength":I
    .restart local v24    # "textAlign":Ljava/lang/String;
    .restart local v25    # "returnType":Ljava/lang/String;
    :cond_4
    move/from16 v27, v1

    move/from16 v35, v6

    move-object/from16 v28, v14

    move/from16 v14, v19

    move-object/from16 v29, v20

    move/from16 v30, v21

    move-object/from16 v31, v22

    move/from16 v32, v23

    move-object/from16 v33, v24

    move-object/from16 v34, v25

    const/4 v0, 0x1

    move/from16 v19, v3

    .end local v1    # "cursorSpacing":F
    .end local v3    # "y":F
    .end local v6    # "x":F
    .end local v20    # "color":Ljava/lang/String;
    .end local v21    # "fontSize":F
    .end local v22    # "fontFamily":Ljava/lang/String;
    .end local v23    # "maxLength":I
    .end local v24    # "textAlign":Ljava/lang/String;
    .end local v25    # "returnType":Ljava/lang/String;
    .local v14, "w":F
    .local v19, "y":F
    .restart local v27    # "cursorSpacing":F
    .restart local v28    # "placeHolder":Ljava/lang/String;
    .restart local v29    # "color":Ljava/lang/String;
    .restart local v30    # "fontSize":F
    .restart local v31    # "fontFamily":Ljava/lang/String;
    .restart local v32    # "maxLength":I
    .restart local v33    # "textAlign":Ljava/lang/String;
    .restart local v34    # "returnType":Ljava/lang/String;
    .restart local v35    # "x":F
    iget v1, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-eqz v1, :cond_5

    .line 615
    const-string v1, "execScrollWebContent pre"

    invoke-static {v15, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object/from16 v6, p0

    move-object v1, v7

    .end local v7    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .local v1, "offset":Lcom/alibaba/fastjson/JSONObject;
    move/from16 v7, v19

    move-object v2, v8

    .end local v8    # "tagName":Ljava/lang/String;
    .local v2, "tagName":Ljava/lang/String;
    move/from16 v8, v26

    move-object v3, v9

    .end local v9    # "params":Lcom/alibaba/fastjson/JSONObject;
    .local v3, "params":Lcom/alibaba/fastjson/JSONObject;
    move v9, v4

    move-object/from16 v20, v1

    move-object/from16 v17, v2

    move-object v1, v10

    const/4 v2, 0x0

    .end local v2    # "tagName":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    .local v17, "tagName":Ljava/lang/String;
    .local v20, "offset":Lcom/alibaba/fastjson/JSONObject;
    move v10, v5

    move-object/from16 v36, v11

    .end local v11    # "keyboard":Ljava/lang/String;
    .local v36, "keyboard":Ljava/lang/String;
    move/from16 v11, v27

    invoke-direct/range {v6 .. v11}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->execScrollWebContent(FFIIF)V

    goto :goto_2

    .line 614
    .end local v1    # "value":Ljava/lang/String;
    .end local v3    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v20    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .end local v36    # "keyboard":Ljava/lang/String;
    .restart local v7    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .restart local v8    # "tagName":Ljava/lang/String;
    .restart local v9    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v10    # "value":Ljava/lang/String;
    .restart local v11    # "keyboard":Ljava/lang/String;
    :cond_5
    move-object/from16 v20, v7

    move-object/from16 v17, v8

    move-object v3, v9

    move-object v1, v10

    move-object/from16 v36, v11

    const/4 v2, 0x0

    .line 620
    .end local v7    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "keyboard":Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/String;
    .restart local v3    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v20    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .restart local v36    # "keyboard":Ljava/lang/String;
    :goto_2
    iget-object v6, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->setVisibility(I)V

    .line 621
    iget-boolean v6, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mDisableNewDoneBtn:Z

    if-eqz v6, :cond_6

    .line 622
    new-instance v6, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;

    invoke-direct {v6, v12, v13}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$2;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;Lcom/alipay/mobile/h5container/api/H5Event;)V

    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 635
    :cond_6
    iget-boolean v6, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v6, :cond_7

    if-eqz v16, :cond_7

    .line 636
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-static {v7, v14}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move/from16 v9, v26

    .local v6, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    goto :goto_3

    .line 638
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_7
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-static {v7, v14}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move/from16 v9, v26

    .end local v26    # "h":F
    .local v9, "h":F
    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 640
    .restart local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    iget-object v7, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move/from16 v8, v35

    .end local v35    # "x":F
    .local v8, "x":F
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    iget-object v10, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move/from16 v11, v19

    .end local v19    # "y":F
    .local v11, "y":F
    invoke-static {v10, v11}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v6, v7, v10, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 643
    iget-boolean v7, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v7, :cond_9

    .line 644
    new-instance v0, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;

    iget-object v7, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/alipay/mobile/nebulauc/nativetextarea/H5NativeTextArea;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    .line 645
    const v7, 0x20001

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setInputType(I)V

    .line 646
    if-eqz v16, :cond_8

    .line 647
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const v7, 0x7fffffff

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setMaxLines(I)V

    .line 649
    :cond_8
    iput-boolean v2, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCanReturn:Z

    goto :goto_4

    .line 651
    :cond_9
    new-instance v7, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;

    iget-object v10, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInput;-><init>(Landroid/content/Context;)V

    iput-object v7, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    .line 652
    invoke-virtual {v7, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setInputType(I)V

    .line 654
    :goto_4
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v12}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 655
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setTag(Ljava/lang/Object;)V

    .line 656
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    iget-object v7, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEditable:Landroid/text/Editable;

    .line 659
    const-string v0, "AlipayNumber"

    move-object/from16 v7, v31

    .end local v31    # "fontFamily":Ljava/lang/String;
    .local v7, "fontFamily":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 660
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;

    move-object v10, v0

    .line 661
    .local v10, "fontProvider":Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;
    if-eqz v10, :cond_a

    .line 662
    invoke-interface {v10}, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;->getAlipayNumberTtfPath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 663
    .local v19, "fontPath":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_a

    .line 665
    :try_start_1
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v2, v19

    .end local v19    # "fontPath":Ljava/lang/String;
    .local v2, "fontPath":Ljava/lang/String;
    :try_start_2
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 666
    .local v0, "typeface":Landroid/graphics/Typeface;
    move-object/from16 v19, v2

    .end local v2    # "fontPath":Ljava/lang/String;
    .restart local v19    # "fontPath":Ljava/lang/String;
    :try_start_3
    iget-object v2, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 669
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    goto :goto_6

    .line 667
    .end local v19    # "fontPath":Ljava/lang/String;
    .restart local v2    # "fontPath":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    .end local v2    # "fontPath":Ljava/lang/String;
    .restart local v19    # "fontPath":Ljava/lang/String;
    goto :goto_5

    :catchall_1
    move-exception v0

    .line 668
    .local v0, "e":Ljava/lang/Throwable;
    :goto_5
    :try_start_4
    const-string v2, "setTypeface , "

    invoke-static {v15, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v10    # "fontProvider":Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;
    .end local v19    # "fontPath":Ljava/lang/String;
    :cond_a
    :goto_6
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    move-object/from16 v2, v29

    .end local v29    # "color":Ljava/lang/String;
    .local v2, "color":Ljava/lang/String;
    invoke-direct {v12, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->convertRgbStr2Color(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setTextColor(I)V

    .line 674
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    iget-object v10, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    move-object/from16 v29, v2

    move/from16 v2, v30

    .end local v30    # "fontSize":F
    .local v2, "fontSize":F
    .restart local v29    # "color":Ljava/lang/String;
    invoke-static {v10, v2}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v10

    int-to-float v10, v10

    move/from16 v30, v2

    const/4 v2, 0x0

    .end local v2    # "fontSize":F
    .restart local v30    # "fontSize":F
    invoke-virtual {v0, v2, v10}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setTextSize(IF)V

    .line 675
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    move-object/from16 v2, v28

    .end local v28    # "placeHolder":Ljava/lang/String;
    .local v2, "placeHolder":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 676
    move/from16 v10, v32

    .end local v32    # "maxLength":I
    .local v10, "maxLength":I
    invoke-direct {v12, v10}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setMaxLength(I)V

    .line 677
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-boolean v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-nez v0, :cond_b

    .line 679
    move-object/from16 v28, v2

    move-object/from16 v2, v34

    .end local v34    # "returnType":Ljava/lang/String;
    .local v2, "returnType":Ljava/lang/String;
    .restart local v28    # "placeHolder":Ljava/lang/String;
    invoke-direct {v12, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setImeOptions(Ljava/lang/String;)V

    goto :goto_7

    .line 678
    .end local v28    # "placeHolder":Ljava/lang/String;
    .local v2, "placeHolder":Ljava/lang/String;
    .restart local v34    # "returnType":Ljava/lang/String;
    :cond_b
    move-object/from16 v28, v2

    move-object/from16 v2, v34

    .line 681
    .end local v34    # "returnType":Ljava/lang/String;
    .local v2, "returnType":Ljava/lang/String;
    .restart local v28    # "placeHolder":Ljava/lang/String;
    :goto_7
    const-string v0, "center"

    move-object/from16 v34, v2

    move-object/from16 v2, v33

    .end local v33    # "textAlign":Ljava/lang/String;
    .local v2, "textAlign":Ljava/lang/String;
    .restart local v34    # "returnType":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 682
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    move-object/from16 v19, v3

    .end local v3    # "params":Lcom/alibaba/fastjson/JSONObject;
    .local v19, "params":Lcom/alibaba/fastjson/JSONObject;
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setGravity(I)V

    goto :goto_8

    .line 683
    .end local v19    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "params":Lcom/alibaba/fastjson/JSONObject;
    :cond_c
    move-object/from16 v19, v3

    .end local v3    # "params":Lcom/alibaba/fastjson/JSONObject;
    .restart local v19    # "params":Lcom/alibaba/fastjson/JSONObject;
    const-string v0, "right"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 684
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const/16 v3, 0x15

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setGravity(I)V

    .line 688
    :cond_d
    :goto_8
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v12}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 689
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, v12}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 692
    move-object/from16 v3, v36

    .end local v36    # "keyboard":Ljava/lang/String;
    .local v3, "keyboard":Ljava/lang/String;
    invoke-direct {v12, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isCustomKeyboardType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 693
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_f

    .line 694
    iget-object v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->requestFocus()Z

    .line 695
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showSoftInputFromWindow()V

    .line 696
    iget v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-nez v0, :cond_e

    .line 698
    new-instance v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;

    invoke-direct {v0, v12}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$3;-><init>(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;)V

    move-object/from16 v33, v2

    move-object/from16 v36, v3

    .end local v2    # "textAlign":Ljava/lang/String;
    .end local v3    # "keyboard":Ljava/lang/String;
    .restart local v33    # "textAlign":Ljava/lang/String;
    .restart local v36    # "keyboard":Ljava/lang/String;
    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_9

    .line 696
    .end local v33    # "textAlign":Ljava/lang/String;
    .end local v36    # "keyboard":Ljava/lang/String;
    .restart local v2    # "textAlign":Ljava/lang/String;
    .restart local v3    # "keyboard":Ljava/lang/String;
    :cond_e
    move-object/from16 v33, v2

    move-object/from16 v36, v3

    .end local v2    # "textAlign":Ljava/lang/String;
    .end local v3    # "keyboard":Ljava/lang/String;
    .restart local v33    # "textAlign":Ljava/lang/String;
    .restart local v36    # "keyboard":Ljava/lang/String;
    goto :goto_9

    .line 693
    .end local v33    # "textAlign":Ljava/lang/String;
    .end local v36    # "keyboard":Ljava/lang/String;
    .restart local v2    # "textAlign":Ljava/lang/String;
    .restart local v3    # "keyboard":Ljava/lang/String;
    :cond_f
    move-object/from16 v33, v2

    move-object/from16 v36, v3

    .end local v2    # "textAlign":Ljava/lang/String;
    .end local v3    # "keyboard":Ljava/lang/String;
    .restart local v33    # "textAlign":Ljava/lang/String;
    .restart local v36    # "keyboard":Ljava/lang/String;
    goto :goto_9

    .line 692
    .end local v33    # "textAlign":Ljava/lang/String;
    .end local v36    # "keyboard":Ljava/lang/String;
    .restart local v2    # "textAlign":Ljava/lang/String;
    .restart local v3    # "keyboard":Ljava/lang/String;
    :cond_10
    move-object/from16 v33, v2

    move-object/from16 v36, v3

    .line 739
    .end local v2    # "textAlign":Ljava/lang/String;
    .end local v3    # "keyboard":Ljava/lang/String;
    .restart local v33    # "textAlign":Ljava/lang/String;
    .restart local v36    # "keyboard":Ljava/lang/String;
    :goto_9
    iget v0, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCursor:I

    .line 740
    .local v0, "cursor":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 741
    .local v2, "valueLength":I
    if-gez v0, :cond_12

    .line 742
    const/4 v3, -0x1

    if-ne v0, v3, :cond_11

    .line 743
    move v0, v2

    goto :goto_a

    .line 745
    :cond_11
    const/4 v0, -0x1

    goto :goto_a

    .line 747
    :cond_12
    if-le v0, v2, :cond_13

    .line 748
    move v0, v2

    .line 750
    :cond_13
    :goto_a
    iget-object v3, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setSelection(I)V

    .line 758
    invoke-direct {v12, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setSelection(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 761
    .end local v0    # "cursor":I
    .end local v1    # "value":Ljava/lang/String;
    .end local v2    # "valueLength":I
    .end local v4    # "scrollY":I
    .end local v5    # "webViewHeight":I
    .end local v6    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v7    # "fontFamily":Ljava/lang/String;
    .end local v8    # "x":F
    .end local v9    # "h":F
    .end local v10    # "maxLength":I
    .end local v11    # "y":F
    .end local v14    # "w":F
    .end local v16    # "mAutoHeight":Z
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "kbElId":I
    .end local v19    # "params":Lcom/alibaba/fastjson/JSONObject;
    .end local v20    # "offset":Lcom/alibaba/fastjson/JSONObject;
    .end local v27    # "cursorSpacing":F
    .end local v28    # "placeHolder":Ljava/lang/String;
    .end local v29    # "color":Ljava/lang/String;
    .end local v30    # "fontSize":F
    .end local v33    # "textAlign":Ljava/lang/String;
    .end local v34    # "returnType":Ljava/lang/String;
    .end local v36    # "keyboard":Ljava/lang/String;
    goto :goto_b

    .line 759
    :catchall_2
    move-exception v0

    .line 760
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "showNativeInputInternal exception"

    invoke-static {v15, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_b
    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mRenderingNativeText:Z

    .line 763
    return-void
.end method

.method private showSoftInputFromWindow()V
    .locals 4

    .line 1055
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-nez v0, :cond_0

    .line 1056
    const-string v0, "H5NativeInputPlugin"

    const-string v1, "fatal error mNativeEditText == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void

    .line 1059
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsShowing:Z

    .line 1060
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1061
    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1062
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1063
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->h5ResultReceiver:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin$H5ResultReceiver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 1065
    :cond_1
    return-void
.end method

.method private updateContent(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 208
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 209
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "text"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "text":Ljava/lang/String;
    const-string v2, "color"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "color":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 212
    const-string v1, ""

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v3, :cond_2

    .line 216
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEnableNewUpdateContent:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEditable:Landroid/text/Editable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputText:Ljava/lang/String;

    .line 218
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->newUpdateContentMethod(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->oldUpdateContentMethod(Ljava/lang/String;)V

    .line 222
    :goto_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->convertRGBAToARGB(Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, "colorInt":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 224
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setTextColor(I)V

    .line 227
    .end local v3    # "colorInt":I
    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 407
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mEditable:Landroid/text/Editable;

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afterTextChanged s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NativeInputPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsControlled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedSetDataEvent:Z

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreviousText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->newUpdateContentMethod(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 414
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedSetDataEvent:Z

    .line 415
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 338
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mPreviousText:Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeTextChanged s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NativeInputPlugin"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public displaySoftKeyboard(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "inputType"    # I

    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 162
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "action":Ljava/lang/String;
    const-string v1, "resizeNativeKeyBoardInput"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 187
    return v2

    .line 188
    :cond_0
    const-string v1, "inputBlurEvent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->showNativeInput(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 193
    return v2

    .line 194
    :cond_1
    const-string v1, "hideCustomKeyBoard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, v2, v1, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    .line 196
    return v2

    .line 197
    :cond_2
    const-string v1, "updateNativeKeyBoardInput"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 198
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedSetDataEvent:Z

    .line 199
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mRenderingNativeText:Z

    if-nez v1, :cond_3

    .line 200
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->updateContent(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 202
    :cond_3
    return v2

    .line 204
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 4
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 147
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "action":Ljava/lang/String;
    const-string v1, "h5PagePause"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0, v2, v3, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    .line 151
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->removeNewDoneButton()V

    goto :goto_0

    .line 152
    :cond_0
    const-string v1, "h5ToolbarBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "h5PagePhysicalBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    :cond_1
    invoke-direct {p0, v2, v3, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    .line 155
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->removeNewDoneButton()V

    .line 157
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v1

    return v1
.end method

.method public onBackPressed()V
    .locals 0

    .line 320
    return-void
.end method

.method public onCustomKeyboardHide()V
    .locals 0

    .line 314
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 420
    if-eqz p3, :cond_0

    .line 421
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeInt:I

    .line 422
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeStr:Ljava/lang/String;

    .line 425
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    const-string v1, "keyup"

    const-string v2, "keydown"

    const/4 v3, 0x1

    const/16 v4, 0xd

    const-string v5, ""

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 426
    invoke-direct {p0, v2, v4, v5, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v1, v4, v5, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 429
    iget v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTextLineCounts:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTextLineCounts:I

    .line 430
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 431
    .local v0, "extData":Lcom/alibaba/fastjson/JSONObject;
    iget v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTextLineCounts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "lineCount"

    invoke-virtual {v0, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v6}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "height"

    invoke-virtual {v0, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget v6, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeInt:I

    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastKeyCodeStr:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "linechange"

    invoke-direct {p0, v9, v6, v7, v8}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    .end local v0    # "extData":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isValidEnterType(I)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_3

    .line 438
    const-string v0, "H5NativeInputPlugin"

    const-string v7, "onEditorAction actionId isValidEnterType"

    invoke-static {v0, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, v2, v4, v5, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-direct {p0, v1, v4, v5, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCanReturn:Z

    if-eqz v1, :cond_2

    .line 442
    invoke-direct {p0, v3, v3, v6}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    goto :goto_0

    .line 444
    :cond_2
    const-string v1, "onEditorAction prevent hide ime"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :goto_0
    return v3

    .line 448
    :cond_3
    return v6
.end method

.method public onKeyPreIme()V
    .locals 1

    .line 332
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    .line 333
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->hideInPageRenderInput()V

    .line 334
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 454
    move-object v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedKeyDown:Z

    if-nez v1, :cond_8

    iget-boolean v1, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mKeyboardIsShowing:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 458
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    if-nez v1, :cond_1

    .line 459
    return-void

    .line 463
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 464
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 465
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 466
    .local v2, "currentContainerVisibleHeight":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayoutChange current visible height 10 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "H5NativeInputPlugin"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->getScreenHeight()I

    move-result v3

    sub-int/2addr v3, v2

    .line 468
    .local v3, "sysHeight":I
    const/16 v5, 0x12c

    if-le v3, v5, :cond_3

    iget v5, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    if-lt v3, v5, :cond_2

    if-nez v5, :cond_3

    .line 469
    :cond_2
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->isValidKeyBoardHeight(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 470
    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->saveKeyBoardHeightToSP(I)V

    .line 471
    iput v3, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->cachedSystemInputHeight:I

    .line 474
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLayoutChange last visible height : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget v5, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulauc/nativeinput/SystemViewUtil;->getScreenHeight()I

    move-result v6

    if-ne v5, v6, :cond_4

    goto :goto_0

    .line 478
    :cond_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_5

    iget v4, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    sub-int v4, v2, v4

    const/16 v5, 0x1f4

    if-le v4, v5, :cond_5

    .line 479
    invoke-direct {p0, v7, v7, v6}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    goto :goto_1

    .line 481
    :cond_5
    iget v4, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    sub-int v4, v2, v4

    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->getSystemKeyboardHeight()I

    move-result v5

    if-lt v4, v5, :cond_7

    .line 482
    invoke-direct {p0, v7, v7, v6}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    goto :goto_1

    .line 476
    :cond_6
    :goto_0
    const-string v5, "onLayoutChange not hide"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_7
    :goto_1
    iput v2, v0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mLastContainerVisibleHeight:I

    .line 488
    return-void

    .line 455
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "currentContainerVisibleHeight":I
    .end local v3    # "sysHeight":I
    :cond_8
    :goto_2
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 137
    const-string v0, "inputBlurEvent"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v0, "h5PagePause"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v0, "h5ToolbarBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v0, "hideCustomKeyBoard"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v0, "updateNativeKeyBoardInput"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onPushWindow()V
    .locals 1

    .line 325
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    .line 326
    invoke-static {}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->getInstance()Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/keyboard/H5KeyboardManager;->hideInPageRenderInput()V

    .line 327
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mContext:Landroid/content/Context;

    .line 287
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V

    .line 290
    :cond_0
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    .line 291
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->nativeInputContainer:Lcom/alipay/mobile/nebula/embedviewcommon/H5NewEmbedCommonLayout;

    .line 292
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 344
    const-string v0, "\n"

    const-string v1, "\r"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5NativeInputPlugin"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedSetDataEvent:Z

    if-eqz v2, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    iput p2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputStart:I

    .line 349
    iput p3, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputBefore:I

    .line 350
    iput p4, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputCount:I

    .line 352
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "value":Ljava/lang/String;
    iput-object v2, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputText:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    const/4 v4, -0x1

    .line 355
    .local v4, "currentKeyCodeInt":I
    const-string v5, ""

    move-object v6, v5

    .line 356
    .local v6, "currentKeyCodeStr":Ljava/lang/String;
    const-string v7, "keyup"

    const-string v8, "keydown"

    const-string v9, "input"

    if-nez p4, :cond_1

    .line 358
    const/16 v4, 0x2e

    .line 359
    :try_start_1
    invoke-direct {p0, v8, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-direct {p0, v7, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setValueToWebInput(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, v9, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :cond_1
    const/4 v10, 0x1

    if-ne p4, v10, :cond_3

    .line 364
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 365
    .local v0, "singleKeyChar":C
    move v1, v0

    .line 366
    .local v1, "singleKeyInt":I
    const/16 v10, 0x2e

    if-ne v0, v10, :cond_2

    .line 367
    const/16 v1, 0xbe

    .line 369
    :cond_2
    move v4, v1

    .line 370
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 371
    invoke-direct {p0, v8, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0, v7, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setValueToWebInput(Ljava/lang/String;)V

    .line 374
    invoke-direct {p0, v9, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .end local v0    # "singleKeyChar":C
    .end local v1    # "singleKeyInt":I
    goto :goto_0

    .line 375
    :cond_3
    if-le p4, v10, :cond_5

    .line 376
    add-int v7, p2, p4

    invoke-virtual {v2, p2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 378
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-nez v7, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 379
    invoke-virtual {v6, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 380
    invoke-virtual {v6, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 382
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .end local v2    # "value":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .end local v1    # "value":Ljava/lang/String;
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputCount:I

    .line 386
    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mCurrentInputText:Ljava/lang/String;

    move-object v2, v0

    .line 388
    .end local v0    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v2}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->setValueToWebInput(Ljava/lang/String;)V

    .line 389
    invoke-direct {p0, v9, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 375
    :cond_5
    :goto_0
    nop

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mIsTextArea:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTextLineCounts:I

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getLineCount()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 393
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getLineCount()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTextLineCounts:I

    .line 394
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 395
    .local v0, "extData":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "lineCount"

    iget v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mTextLineCounts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v1, "height"

    iget-object v5, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mNativeEditText:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeEditText;->getMeasuredHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v1, "linechange"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v4, v6, v5}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->dispatchEventWithElement(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v0    # "extData":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "value":Ljava/lang/String;
    .end local v4    # "currentKeyCodeInt":I
    .end local v6    # "currentKeyCodeStr":Ljava/lang/String;
    :cond_6
    goto :goto_2

    .line 400
    :catchall_0
    move-exception v0

    .line 401
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onTextChanged exception "

    invoke-static {v3, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 296
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->mReceivedKeyDown:Z

    .line 299
    invoke-direct {p0, v0, v1, v1}, Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeInputPlugin;->hideNativeInput(ZZZ)V

    .line 301
    :cond_0
    return v1
.end method
