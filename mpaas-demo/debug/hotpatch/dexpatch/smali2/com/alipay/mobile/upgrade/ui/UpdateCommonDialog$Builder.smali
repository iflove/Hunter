.class public Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
.super Ljava/lang/Object;
.source "UpdateCommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private icon:Landroid/graphics/drawable/Drawable;

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

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
    .locals 10

    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    .line 127
    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 130
    new-instance v1, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/alipay/mobile/android/security/upgrade/R$style;->updateCommonDialogTheme:I

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;-><init>(Landroid/content/Context;I)V

    .line 131
    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->mIsCancelable:Z
    invoke-static {}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->setCancelable(Z)V

    .line 132
    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->mIsCancelable:Z
    invoke-static {}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->setCanceledOnTouchOutside(Z)V

    .line 134
    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$layout;->update_common_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 135
    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$id;->update_icon_iv:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/upgrade/widget/APImageView;

    .line 136
    sget v3, Lcom/alipay/mobile/android/security/upgrade/R$id;->update_title_tv:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 137
    sget v4, Lcom/alipay/mobile/android/security/upgrade/R$id;->update_msg_ll:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/upgrade/widget/APLinearLayout;

    .line 138
    sget v5, Lcom/alipay/mobile/android/security/upgrade/R$id;->update_msg_tv:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 139
    sget v6, Lcom/alipay/mobile/android/security/upgrade/R$id;->update_cancel_tv:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 140
    sget v7, Lcom/alipay/mobile/android/security/upgrade/R$id;->update_confirm_tv:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/upgrade/widget/APTextView;

    .line 141
    sget v8, Lcom/alipay/mobile/android/security/upgrade/R$id;->update_line_viewtwo:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/upgrade/widget/APView;

    .line 143
    iget-object v9, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_0

    .line 144
    invoke-virtual {v2, v9}, Lcom/alipay/mobile/upgrade/widget/APImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->positiveButtonText:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v7, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_2

    .line 155
    new-instance v2, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$1;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$1;-><init>(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;)V

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 164
    :cond_1
    invoke-virtual {v7, v3}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setVisibility(I)V

    .line 166
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 168
    invoke-virtual {v6, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v2, :cond_4

    .line 170
    new-instance v2, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;-><init>(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;)V

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 182
    :cond_3
    invoke-virtual {v7}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 183
    const/high16 v9, 0x40000000    # 2.0f

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 184
    invoke-virtual {v7, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    sget v2, Lcom/alipay/mobile/android/security/upgrade/R$drawable;->update_common_dialog_force_confirm_btn_bg_selector:I

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setBackgroundResource(I)V

    .line 186
    invoke-virtual {v6, v3}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setVisibility(I)V

    .line 187
    invoke-virtual {v8, v3}, Lcom/alipay/mobile/upgrade/widget/APView;->setVisibility(I)V

    .line 190
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v2, :cond_5

    .line 191
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 194
    :cond_5
    invoke-virtual {v5}, Lcom/alipay/mobile/upgrade/widget/APTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 195
    new-instance v3, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;

    invoke-direct {v3, p0, v5, v4}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$3;-><init>(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;Lcom/alipay/mobile/upgrade/widget/APTextView;Lcom/alipay/mobile/upgrade/widget/APLinearLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 208
    iget-object v2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->message:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 209
    invoke-virtual {v5, v2}, Lcom/alipay/mobile/upgrade/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :cond_6
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->setContentView(Landroid/view/View;)V

    .line 212
    invoke-virtual {v1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    const/high16 v4, 0x438c0000    # 280.0f

    invoke-static {v3, v4}, Lcom/alipay/mobile/upgrade/widget/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 215
    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 216
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    return-object v1
.end method

.method public setCancelable(Z)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 0

    .line 101
    # setter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->mIsCancelable:Z
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->access$002(Z)Z

    .line 102
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->icon:Landroid/graphics/drawable/Drawable;

    .line 67
    return-object p0
.end method

.method public setMessage(I)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->message:Ljava/lang/String;

    .line 62
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->message:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 109
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 116
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->onKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 96
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    return-object p0
.end method

.method public setTitle(I)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->title:Ljava/lang/String;

    .line 72
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->title:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public show()Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->create()Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->show()V

    .line 122
    return-object v0
.end method
