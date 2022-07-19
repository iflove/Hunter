.class public Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;
.super Landroid/app/Dialog;
.source "H5OpenAuthDialog.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$style;->h5noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->g:Landroid/view/View$OnClickListener;

    .line 40
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    .line 41
    const-string v1, "android-phone-wallet-nebulaappproxy"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->getResourcesByBundle(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$layout;->h5_auth_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 43
    .local v0, "layout":Landroid/content/res/XmlResourceParser;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "rootView":Landroid/view/View;
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_audialog_footer_confirm:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->a:Landroid/widget/TextView;

    .line 46
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_audialog_footer_reject:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->b:Landroid/widget/TextView;

    .line 47
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_audialog_content_auth_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->c:Landroid/widget/TextView;

    .line 48
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_audialog_content_auth_realcontent:I

    .line 49
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->d:Landroid/widget/LinearLayout;

    .line 50
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_audialog_content_auth_isv_tip:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->e:Landroid/widget/TextView;

    .line 51
    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_audialog_content_auth_protocol:I

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->f:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->setContentView(Landroid/view/View;)V

    .line 54
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->setCanceledOnTouchOutside(Z)V

    .line 55
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getAuthContentContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getAuthContentIsvTip()Landroid/widget/TextView;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAuthContentProtocol()Landroid/widget/TextView;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAuthContentTitle()Landroid/widget/TextView;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 86
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    .line 87
    const-string v0, "H5OpenAuthDialog"

    const-string v1, "do nothing"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    return v0

    .line 90
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->h:Landroid/view/View$OnClickListener;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->i:Landroid/view/View$OnClickListener;

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
