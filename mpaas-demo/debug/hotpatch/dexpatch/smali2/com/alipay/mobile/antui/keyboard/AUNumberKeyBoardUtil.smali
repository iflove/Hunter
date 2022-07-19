.class public Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;
.super Ljava/lang/Object;
.source "AUNumberKeyBoardUtil.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;
.implements Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handler:Landroid/os/Handler;

.field private mEditText:Landroid/widget/EditText;

.field private mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private tempContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "editText"    # Landroid/widget/EditText;
    .param p3, "keyboardView"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
    .param p4, "softInputAdjustMode"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->handler:Landroid/os/Handler;

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->tempContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    .line 50
    iput-object p3, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->initKeyboardView()V

    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->disableShowSoftInput()V

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->tempContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    or-int/lit8 v1, p4, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$1;-><init>(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private disableShowSoftInput()V
    .locals 6

    .line 96
    const-class v0, Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 99
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    .line 100
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v3, v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    return-void

    .line 102
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disableShowSoftInput Exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method

.method private hideSysKeyboard()Z
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 139
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object v1, v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    new-instance v3, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$2;-><init>(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 155
    .local v0, "doHide":Z
    sget-object v2, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hideSoftInputFromWindow hide = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v0

    .line 159
    .end local v0    # "doHide":Z
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initKeyboardView()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setActionClickListener(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView$OnActionClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->setWindowStateChangeListener(Lcom/alipay/mobile/antui/keyboard/WindowStateChangeListener;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 77
    .local v0, "parentLayout":Landroid/view/ViewGroup;
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    const/4 v2, 0x0

    .line 78
    .local v2, "transition":Landroid/animation/LayoutTransition;
    move-object v2, v1

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 84
    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->hide()V

    .line 181
    :cond_0
    return-void
.end method

.method public onCloseClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->hideKeyboard()V

    .line 134
    return-void
.end method

.method public onConfirmClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 129
    return-void
.end method

.method public onDeleteClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 120
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    .line 121
    .local v2, "start":I
    move v2, v1

    if-lez v1, :cond_0

    .line 122
    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 124
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 185
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->hideKeyboard()V

    .line 187
    const/4 v0, 0x1

    return v0

    .line 189
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onNumClick(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "num"    # Ljava/lang/CharSequence;

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 111
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    const/4 v2, 0x0

    .line 112
    .local v2, "start":I
    move v2, v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 113
    invoke-interface {v0, v2, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 115
    :cond_0
    return-void
.end method

.method public setScrollView(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ScrollView;

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mScrollView:Landroid/widget/ScrollView;

    .line 93
    return-void
.end method

.method public showKeyboard()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    sget-object v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showKeyboard"

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->hideSysKeyboard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mKeyboardView:Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyboardView;->show()V

    .line 172
    :cond_0
    return-void
.end method

.method public stateChange(ZI)V
    .locals 8
    .param p1, "isShow"    # Z
    .param p2, "height"    # I

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mScrollView:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isShow = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-eqz p1, :cond_2

    .line 199
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 200
    .local v1, "location":[I
    iget-object v2, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->getLocationOnScreen([I)V

    .line 201
    iget-object v2, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v4, v1, v3

    add-int/2addr v2, v4

    .line 202
    .local v2, "currentLocY":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->tempContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/antui/utils/ToolUtils;->getScreenWidth_Height(Landroid/content/Context;)[I

    move-result-object v4

    aget v3, v4, v3

    .line 203
    .local v3, "screenHeight":I
    sub-int v4, v3, p2

    if-gt v2, v4, :cond_1

    .line 204
    return-void

    .line 207
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "currentLocY = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    add-int v0, v2, p2

    sub-int/2addr v0, v3

    .line 211
    .local v0, "detY":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;->handler:Landroid/os/Handler;

    new-instance v5, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;

    invoke-direct {v5, p0, v0}, Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil$3;-><init>(Lcom/alipay/mobile/antui/keyboard/AUNumberKeyBoardUtil;I)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    .end local v0    # "detY":I
    .end local v1    # "location":[I
    .end local v2    # "currentLocY":I
    .end local v3    # "screenHeight":I
    :cond_2
    return-void
.end method
