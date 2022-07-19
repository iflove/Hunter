.class public Lcom/alipay/mobile/antui/dialog/AUInputDialog;
.super Lcom/alipay/mobile/antui/basic/AUBasicDialog;
.source "AUInputDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;,
        Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;
    }
.end annotation


# instance fields
.field private bottomLayout:Landroid/widget/LinearLayout;

.field private dialogBg:Landroid/widget/RelativeLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private inputContent:Lcom/alipay/mobile/antui/basic/AUEditText;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mEnsureBtn:Landroid/widget/Button;

.field private mIsAutoCancel:Z

.field private mMsg:Landroid/widget/TextView;

.field private mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;

.field private mNegativeString:Ljava/lang/String;

.field private mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;

.field private mPositiveString:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private negativeTextColor:Ljava/lang/String;

.field private positiveTextColor:Ljava/lang/String;

.field private rootView:Landroid/view/View;

.field private sMsg:Ljava/lang/String;

.field private sTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;

    .line 50
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;
    .param p6, "isAutoCancel"    # Z

    .line 65
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUBasicDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mIsAutoCancel:Z

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->sTitle:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->sMsg:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveString:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mNegativeString:Ljava/lang/String;

    .line 71
    iput-boolean p6, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mIsAutoCancel:Z

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->inflater:Landroid/view/LayoutInflater;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUInputDialog;

    .line 21
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->inputContent:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 176
    nop

    .line 177
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 178
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method private initBtn()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mNegativeString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->bottomLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->bottomLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mNegativeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mCancelBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUInputDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mEnsureBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mEnsureBtn:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog$2;-><init>(Lcom/alipay/mobile/antui/dialog/AUInputDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getBottomLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->bottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCancelBtn()Landroid/widget/Button;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mCancelBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getDialogBg()Landroid/widget/RelativeLayout;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->dialogBg:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getEnsureBtn()Landroid/widget/Button;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mEnsureBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getInputContent()Lcom/alipay/mobile/antui/basic/AUEditText;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->inputContent:Lcom/alipay/mobile/antui/basic/AUEditText;

    return-object v0
.end method

.method public getMsg()Landroid/widget/TextView;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUBasicDialog;->onCreate(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_input_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    .local v0, "view":Landroid/view/View;
    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->rootView:Landroid/view/View;

    .line 80
    sget v1, Lcom/alipay/mobile/antui/R$id;->ensure:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mEnsureBtn:Landroid/widget/Button;

    .line 81
    sget v1, Lcom/alipay/mobile/antui/R$id;->cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mCancelBtn:Landroid/widget/Button;

    .line 82
    sget v1, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mTitle:Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/alipay/mobile/antui/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mMsg:Landroid/widget/TextView;

    .line 84
    sget v1, Lcom/alipay/mobile/antui/R$id;->inputContent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUEditText;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->inputContent:Lcom/alipay/mobile/antui/basic/AUEditText;

    .line 85
    sget v1, Lcom/alipay/mobile/antui/R$id;->bottom_ll:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->bottomLayout:Landroid/widget/LinearLayout;

    .line 86
    sget v1, Lcom/alipay/mobile/antui/R$id;->dialog_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->dialogBg:Landroid/widget/RelativeLayout;

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->positiveTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "\uff0c"

    const-string v3, "AUInputDialog"

    if-nez v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->positiveTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 91
    .local v1, "positiveColorRes":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mEnsureBtn:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1    # "positiveColorRes":I
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 94
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "positiveTextColor\u8bbe\u7f6e\u5931\u8d25\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->positiveTextColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->negativeTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 100
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->negativeTextColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 101
    .local v1, "negativeColorRes":I
    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 105
    .end local v1    # "negativeColorRes":I
    goto :goto_1

    .line 102
    :catch_1
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "negativeTextColor\u8bbe\u7f6e\u5931\u8d25\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->negativeTextColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->sMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->sMsg:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->sTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->sTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :goto_3
    iget-boolean v1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mIsAutoCancel:Z

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->setCanceledOnTouchOutside(Z)V

    .line 121
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->initBtn()V

    .line 122
    return-void
.end method

.method public setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;

    .line 235
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickNegativeListener;

    .line 236
    return-void
.end method

.method public setNegativeTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "negativeTextColor"    # Ljava/lang/String;

    .line 253
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->negativeTextColor:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;

    .line 228
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUInputDialog$OnClickPositiveListener;

    .line 229
    return-void
.end method

.method public setPositiveTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveTextColor"    # Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->positiveTextColor:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public show()V
    .locals 5

    .line 168
    invoke-super {p0}, Lcom/alipay/mobile/antui/basic/AUBasicDialog;->show()V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->rootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->setContentView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 171
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    move-object v1, v0

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE10:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 172
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUInputDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 173
    return-void
.end method
