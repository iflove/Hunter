.class public Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
.super Ljava/lang/Object;
.source "UpdateRetryDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    .line 114
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 117
    new-instance v1, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/alipay/mobile/android/security/upgrade/R$style;->updateCommonDialogTheme:I

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;-><init>(Landroid/content/Context;I)V

    .line 118
    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->mIsCancelable:Z
    invoke-static {}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->setCancelable(Z)V

    .line 119
    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->mIsCancelable:Z
    invoke-static {}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->setCanceledOnTouchOutside(Z)V

    .line 121
    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$layout;->update_retry_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$id;->retry_dialog_title_tv:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 123
    sget v3, Lcom/alipay/mobile/android/security/upgrade/R$id;->retry_dialog_content_tv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 124
    sget v4, Lcom/alipay/mobile/android/security/upgrade/R$id;->retry_dialog_cancel_btn_tv:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 125
    sget v5, Lcom/alipay/mobile/android/security/upgrade/R$id;->retry_dialog_confirm_btn_tv:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 127
    iget-object v6, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v6, 0x8

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v5, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_1

    .line 135
    new-instance v2, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;-><init>(Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;)V

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {v5, v6}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setVisibility(I)V

    .line 146
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {v4, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_3

    .line 150
    new-instance v2, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;-><init>(Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;)V

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 162
    :cond_2
    invoke-virtual {v5}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    invoke-virtual {v5, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-virtual {v4, v6}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setVisibility(I)V

    .line 167
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->setContentView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 176
    iget-object v3, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    const/high16 v4, 0x438c0000    # 280.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 177
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 178
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 179
    return-object v1
.end method

.method public setCancelable(Z)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 0

    .line 88
    # setter for: Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->mIsCancelable:Z
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->access$002(Z)Z

    .line 89
    return-object p0
.end method

.method public setMessage(I)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->message:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->message:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 96
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 83
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 71
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 78
    return-object p0
.end method

.method public setTitle(I)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->title:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->title:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public show()Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->create()Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->show()V

    .line 109
    return-object v0
.end method
