.class public Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
.super Landroid/app/Dialog;
.source "H5LoadingDialog.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .line 27
    sget v0, Lcom/alipay/mobile/nebula/R$style;->h5_loading_style:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;-><init>(Landroid/content/Context;I)V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->d:Landroid/app/Activity;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    return-void
.end method

.method private a()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->d:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 38
    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_loading:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_loading_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->a:Landroid/widget/ProgressBar;

    .line 40
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_loading_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->b:Landroid/widget/TextView;

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    move-object v3, v2

    .line 43
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object v3, v1

    const v4, 0x3f7d70a4    # 0.99f

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 44
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->a:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCancelable(Z)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 49
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 51
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->a()V

    .line 52
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->c:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->a()V

    .line 60
    :cond_0
    return-void
.end method
