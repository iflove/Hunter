.class public Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUAuthorizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$DefaultAdapterImp;,
        Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;,
        Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$OnAuthListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

.field private mAuthDetails:[Ljava/lang/String;

.field private mBtCancel:Lcom/alipay/mobile/antui/iconfont/AUIconView;

.field private mBtConfirm:Lcom/alipay/mobile/antui/basic/AUButton;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnAuthListener:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$OnAuthListener;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mStubAuthDetails:Landroid/view/ViewStub;

.field private mStubAuthProtocols:Landroid/view/ViewStub;

.field private mTvAuthTitle:Landroid/widget/TextView;

.field private mTvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 52
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    sget v1, Lcom/alipay/mobile/antui/R$layout;->au_authorize_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "rootView":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->auth_tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mTvTitle:Landroid/widget/TextView;

    .line 57
    sget v1, Lcom/alipay/mobile/antui/R$id;->auth_iv_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/iconfont/AUIconView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mBtCancel:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    .line 58
    sget v1, Lcom/alipay/mobile/antui/R$id;->auth_bt_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUButton;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mBtConfirm:Lcom/alipay/mobile/antui/basic/AUButton;

    .line 59
    sget v1, Lcom/alipay/mobile/antui/R$id;->auth_tv_auth_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mTvAuthTitle:Landroid/widget/TextView;

    .line 60
    sget v1, Lcom/alipay/mobile/antui/R$id;->auth_stub_auth_details:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mStubAuthDetails:Landroid/view/ViewStub;

    .line 61
    sget v1, Lcom/alipay/mobile/antui/R$id;->auth_stub_auth_protocols:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mStubAuthProtocols:Landroid/view/ViewStub;

    .line 62
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->setContentView(Landroid/view/View;)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$OnAuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mOnAuthListener:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$OnAuthListener;

    return-object v0
.end method

.method private initViews()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mBtCancel:Lcom/alipay/mobile/antui/iconfont/AUIconView;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/iconfont/AUIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$2;-><init>(Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mBtConfirm:Lcom/alipay/mobile/antui/basic/AUButton;

    new-instance v1, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$3;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$3;-><init>(Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$DefaultAdapterImp;

    invoke-direct {v0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$DefaultAdapterImp;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAuthDetails:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mStubAuthDetails:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;->getAuthDetailLayoutID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mStubAuthDetails:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAuthDetails:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;->inflateAuthDetail(Landroid/view/LayoutInflater;Landroid/view/View;[Ljava/lang/String;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mStubAuthProtocols:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;->getAuthProtocolsLayoutID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mStubAuthProtocols:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;->inflateAuthProtocols(Landroid/view/LayoutInflater;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    return-void
.end method


# virtual methods
.method public appendProtocolMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    return-object p0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;

    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p3}, Lcom/alipay/mobile/antui/clickspan/AgreementClickableSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 159
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 160
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    .line 158
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 163
    :cond_1
    return-object p0
.end method

.method public appendProtocolMessage(Ljava/util/LinkedHashMap;Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 4
    .param p1, "protocols"    # Ljava/util/LinkedHashMap;
    .param p2, "listener"    # Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;",
            ")",
            "Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;"
        }
    .end annotation

    .line 172
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 177
    .local v1, "protocol":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3, p2}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->appendProtocolMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/clickspan/UrlClickableSpanListener;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;

    .line 178
    .end local v1    # "protocol":Ljava/util/Map$Entry;
    goto :goto_0

    .line 180
    :cond_1
    return-object p0

    .line 173
    :cond_2
    :goto_1
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 69
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->initViews()V

    .line 72
    return-void
.end method

.method public setAdapter(Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 0
    .param p1, "adapter"    # Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    .line 189
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAdapter:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$Adapter;

    .line 190
    return-object p0
.end method

.method public setAuthDetails([Ljava/lang/String;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 0
    .param p1, "authDetails"    # [Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mAuthDetails:[Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setAuthTitle(Ljava/lang/String;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 2
    .param p1, "authTitle"    # Ljava/lang/String;

    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mTvAuthTitle:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-object p0
.end method

.method public setConfirmButtonText(Ljava/lang/String;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mBtConfirm:Lcom/alipay/mobile/antui/basic/AUButton;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/basic/AUButton;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-object p0
.end method

.method public setOnAuthListener(Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$OnAuthListener;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 0
    .param p1, "onAuthListener"    # Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$OnAuthListener;

    .line 184
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mOnAuthListener:Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog$OnAuthListener;

    .line 185
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUAuthorizeDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-object p0
.end method
