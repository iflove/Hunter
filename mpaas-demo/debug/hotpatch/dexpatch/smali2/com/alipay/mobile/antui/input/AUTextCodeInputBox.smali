.class public Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;
.super Lcom/alipay/mobile/antui/input/AUInputBox;
.source "AUTextCodeInputBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$SendButtonEnableChecker;,
        Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$a;,
        Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;
    }
.end annotation


# static fields
.field private static final STOPMESSAGE:I = 0x2

.field private static final UPDATEMESSAGE:I = 0x1


# instance fields
.field private currentSecond:I

.field private mResultCallback:Lcom/alipay/mobile/antui/input/SendResultCallback;

.field private mScheduleTimer:Ljava/util/Timer;

.field private mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

.field private mSendButtonEnableChecker:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$SendButtonEnableChecker;

.field private mSendButtonText:Ljava/lang/String;

.field private mSendButtonTextRetry:Ljava/lang/String;

.field private mSendCallback:Lcom/alipay/mobile/antui/input/OnSendCallback;

.field private mTimeInterval:I

.field private final mTimerHanlder:Landroid/os/Handler;

.field private rightView:Landroid/view/View;

.field private sendButtonInnerCheckEnable:Z

.field private timeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/input/AUInputBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$b;-><init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mTimerHanlder:Landroid/os/Handler;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->sendButtonInnerCheckEnable:Z

    .line 42
    const/16 v0, 0x3c

    iput v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mTimeInterval:I

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_text_code_inputbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->rightView:Landroid/view/View;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mInputContainer:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->rightView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->getInputName()Lcom/alipay/mobile/antui/basic/AUTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->checkCode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->setInputName(Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->getInputEdit()Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$string;->mobile_checkCode:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->setHint(Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->resetTime()V

    .line 60
    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mTimerHanlder:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/input/OnSendCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendCallback:Lcom/alipay/mobile/antui/input/OnSendCallback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;
    .param p1, "x1"    # Z

    .line 22
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->sendButtonInnerCheckEnable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/input/SendResultCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mResultCallback:Lcom/alipay/mobile/antui/input/SendResultCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->timeStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Lcom/alipay/mobile/antui/basic/AUButton;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonTextRetry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->resetTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I

    return v0
.end method

.method static synthetic access$910(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)I
    .locals 2
    .param p0, "x0"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;

    .line 22
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I

    return v0
.end method

.method private resetTime()V
    .locals 1

    .line 125
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mTimeInterval:I

    iput v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I

    .line 126
    return-void
.end method


# virtual methods
.method public currentSecond2Zero()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I

    .line 133
    return-void
.end method

.method public getCurrentSecond()I
    .locals 1

    .line 146
    iget v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I

    return v0
.end method

.method public getSendCodeButton()Lcom/alipay/mobile/antui/basic/AUButton;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

    return-object v0
.end method

.method public getSendResultCallback()Lcom/alipay/mobile/antui/input/SendResultCallback;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mResultCallback:Lcom/alipay/mobile/antui/input/SendResultCallback;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->releaseTimer()V

    .line 198
    invoke-super {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->onDetachedFromWindow()V

    .line 199
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 64
    invoke-super {p0}, Lcom/alipay/mobile/antui/input/AUInputBox;->onFinishInflate()V

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$id;->checkCodeSendButton:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$string;->timeAfter:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->timeStr:Ljava/lang/String;

    .line 67
    new-instance v0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$a;-><init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;B)V

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mResultCallback:Lcom/alipay/mobile/antui/input/SendResultCallback;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->rightView:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$1;-><init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

    iget-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    return-void
.end method

.method public releaseTimer()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mScheduleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mScheduleTimer:Ljava/util/Timer;

    .line 193
    :cond_0
    return-void
.end method

.method public scheduleTimer()V
    .locals 7

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->sendButtonInnerCheckEnable:Z

    .line 206
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->updateSendButtonEnableStatus()V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mScheduleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mScheduleTimer:Ljava/util/Timer;

    .line 212
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mScheduleTimer:Ljava/util/Timer;

    .line 213
    new-instance v2, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$2;-><init>(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 228
    return-void
.end method

.method public setCurrentSecond(I)V
    .locals 0
    .param p1, "current"    # I

    .line 139
    iput p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->currentSecond:I

    .line 140
    return-void
.end method

.method public setOnSendCallback(Lcom/alipay/mobile/antui/input/OnSendCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/alipay/mobile/antui/input/OnSendCallback;

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendCallback:Lcom/alipay/mobile/antui/input/OnSendCallback;

    .line 94
    :cond_0
    return-void
.end method

.method public setSendButtonEnableChecker(Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$SendButtonEnableChecker;)V
    .locals 0
    .param p1, "checker"    # Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$SendButtonEnableChecker;

    .line 241
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonEnableChecker:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$SendButtonEnableChecker;

    .line 242
    return-void
.end method

.method public setSendButtonText(Ljava/lang/String;)V
    .locals 1
    .param p1, "sendButtonText"    # Ljava/lang/String;

    .line 158
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonText:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method public setSendButtonTextRetry(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendButtonTextRetry"    # Ljava/lang/String;

    .line 163
    iput-object p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonTextRetry:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setTimeInterval(I)V
    .locals 0
    .param p1, "timeInterval"    # I

    .line 167
    iput p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mTimeInterval:I

    .line 168
    invoke-direct {p0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->resetTime()V

    .line 169
    return-void
.end method

.method public updateSendButtonEnableStatus()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->sendButtonInnerCheckEnable:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->updateSendButtonEnableStatus(Z)V

    .line 250
    return-void
.end method

.method public updateSendButtonEnableStatus(Z)V
    .locals 2
    .param p1, "isEnable"    # Z

    .line 253
    iput-boolean p1, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->sendButtonInnerCheckEnable:Z

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButtonEnableChecker:Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$SendButtonEnableChecker;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0}, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox$SendButtonEnableChecker;->checkIsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->rightView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setEnabled(Z)V

    .line 258
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->rightView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/antui/input/AUTextCodeInputBox;->mSendButton:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUButton;->setEnabled(Z)V

    .line 263
    return-void
.end method
