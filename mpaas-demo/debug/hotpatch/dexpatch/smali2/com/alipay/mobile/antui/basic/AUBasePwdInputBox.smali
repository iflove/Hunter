.class public abstract Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;
.super Lcom/alipay/mobile/antui/basic/AULinearLayout;
.source "AUBasePwdInputBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$PWDInputListener2;
    }
.end annotation


# instance fields
.field protected isWithKeyboard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "set"    # Landroid/util/AttributeSet;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/antui/R$styleable;->sixCharInputBox:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    move-object v0, v1

    .line 50
    sget v1, Lcom/alipay/mobile/antui/R$styleable;->sixCharInputBox_withKeyboard:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;->isWithKeyboard:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void

    .line 59
    :cond_0
    return-void

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    :cond_1
    throw v1

    .line 54
    :goto_0
    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    :cond_2
    return-void
.end method


# virtual methods
.method public callInputMethod()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUEditText;

    const/4 v1, 0x0

    .line 68
    .local v1, "editText":Lcom/alipay/mobile/antui/basic/AUEditText;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->requestFocus()Z

    .line 71
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;->showInputPannel(Landroid/view/View;)V

    .line 73
    :cond_0
    return-void
.end method

.method public abstract getEditText()Landroid/widget/EditText;
.end method

.method public abstract getInputedPwd(I)Ljava/lang/String;
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->onFinishInflate()V

    .line 64
    return-void
.end method

.method public abstract setPwdInputListener(Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$PWDInputListener2;)V
.end method

.method protected showInputPannel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 82
    new-instance v0, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$1;-><init>(Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;Landroid/view/View;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method
