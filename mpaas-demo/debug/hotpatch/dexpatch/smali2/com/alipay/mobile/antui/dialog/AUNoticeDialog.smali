.class public Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;
.super Lcom/alipay/mobile/antui/dialog/AUBaseDialog;
.source "AUNoticeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;,
        Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsAutoCancel:Z

.field private mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private mMsgContent:Landroid/widget/ScrollView;

.field private mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;

.field private mNegativeString:Ljava/lang/String;

.field private mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;

.field private mPositiveString:Ljava/lang/String;

.field private mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private moreDescriptionView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private msgMovementMethod:Landroid/text/method/MovementMethod;

.field private negativeTextColor:Ljava/lang/String;

.field private positiveTextColor:Ljava/lang/String;

.field private sMsg:Ljava/lang/CharSequence;

.field private sTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;

    .line 69
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;
    .param p6, "isAutoCancel"    # Z

    .line 84
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mIsAutoCancel:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    .line 85
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;
    .param p6, "isAutoCancel"    # Z
    .param p7, "moreDesView"    # Landroid/view/View;

    .line 100
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mIsAutoCancel:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    .line 101
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    invoke-interface {v0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;
    .param p6, "isAutoCancel"    # Z
    .param p7, "moreDesView"    # Ljava/util/List;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 110
    sget v0, Lcom/alipay/mobile/antui/R$style;->noTitleTransBgDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mIsAutoCancel:Z

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    .line 111
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    invoke-interface {v0, p7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsgContent:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method private init(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "positiveString"    # Ljava/lang/String;
    .param p5, "negativeString"    # Ljava/lang/String;
    .param p6, "isAutoCancel"    # Z

    .line 119
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->sTitle:Ljava/lang/CharSequence;

    .line 121
    iput-object p3, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->sMsg:Ljava/lang/CharSequence;

    .line 122
    iput-object p4, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mPositiveString:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mNegativeString:Ljava/lang/String;

    .line 124
    iput-boolean p6, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mIsAutoCancel:Z

    .line 125
    return-void
.end method

.method private setTextView(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "textView"    # Lcom/alipay/mobile/antui/basic/AUTextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 196
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    return-void

    .line 199
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setVisibility(I)V

    .line 200
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 201
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AUTextView;->setAutoSplitText(Ljava/lang/String;)V

    return-void

    .line 203
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method


# virtual methods
.method public addDescriptionView()V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 228
    .local v1, "size":I
    move v1, v0

    if-lez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 230
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->moreDescriptionView:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 231
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->addView(Landroid/view/View;)V

    .line 229
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public getCancelBtn()Landroid/widget/Button;
    .locals 1

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getButtonItem(I)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getEnsureBtn()Landroid/widget/Button;
    .locals 1

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getButtonItem(I)Landroid/widget/TextView;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method public getMsg()Landroid/widget/TextView;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method public initCustomView(Lcom/alipay/mobile/antui/basic/AULinearLayout;)V
    .locals 4
    .param p1, "customView"    # Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setOrientation(I)V

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->AU_SPACE6:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 217
    .local v0, "h_padding":I
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->dialog_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 218
    .local v1, "v_padding":I
    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setPadding(IIII)V

    .line 223
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/antui/R$layout;->au_notice_dialog:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCustomLayout(Landroid/content/Context;ILandroid/view/ViewGroup;)V

    .line 224
    return-void
.end method

.method public initHorizonMaskSpace()I
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/antui/R$dimen;->notice_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 129
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/dialog/AUBaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->rootView:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/antui/R$dimen;->dialog_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AULinearLayout;->setMinimumHeight(I)V

    .line 131
    invoke-virtual {p0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->addDescriptionView()V

    .line 132
    iget-boolean v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mIsAutoCancel:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setCanceledOnTouchOutside(Z)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mPositiveString:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mNegativeString:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$1;-><init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setButtonStyle(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/antui/api/OnItemClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->positiveTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "\uff0c"

    const-string v2, "AUNoticeDialog"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mEnsureBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->positiveTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 154
    .local v0, "positiveColorRes":I
    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mEnsureBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "positiveColorRes":I
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "positiveTextColor\u8bbe\u7f6e\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->positiveTextColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->negativeTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mCancelBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->negativeTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, "negativeColorRes":I
    iget-object v3, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    .end local v0    # "negativeColorRes":I
    return-void

    .line 166
    :catch_1
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "negativeTextColor\u8bbe\u7f6e\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->negativeTextColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alipay/mobile/antui/utils/AuiLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public setCustomLayout(Landroid/content/Context;ILandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "fatherView"    # Landroid/view/ViewGroup;

    .line 237
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 238
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/alipay/mobile/antui/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 239
    sget v1, Lcom/alipay/mobile/antui/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 240
    sget v1, Lcom/alipay/mobile/antui/R$id;->message_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsgContent:Landroid/widget/ScrollView;

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->msgMovementMethod:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_0

    .line 243
    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/antui/basic/AUTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    new-instance v2, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$2;-><init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnVisibilityChangeListener(Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;)V

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;

    new-instance v2, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$3;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$3;-><init>(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/antui/basic/AUTextView;->setOnVisibilityChangeListener(Lcom/alipay/mobile/antui/basic/AUTextView$OnVisibilityChangeListener;)V

    .line 274
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mTitle:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->sTitle:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setTextView(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mMsg:Lcom/alipay/mobile/antui/basic/AUTextView;

    iget-object v2, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->sMsg:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->setTextView(Lcom/alipay/mobile/antui/basic/AUTextView;Ljava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method public setMsgMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 0
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 330
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->msgMovementMethod:Landroid/text/method/MovementMethod;

    .line 331
    return-void
.end method

.method public setNegativeListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;

    .line 321
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mNegativeListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickNegativeListener;

    .line 322
    return-void
.end method

.method public setNegativeTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "c"    # Landroid/content/res/ColorStateList;

    .line 190
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getButtonItem(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getButtonItem(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setNegativeTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "negativeTextColor"    # Ljava/lang/String;

    .line 348
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->negativeTextColor:Ljava/lang/String;

    .line 349
    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;

    .line 312
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->mPositiveListener:Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;

    .line 313
    return-void
.end method

.method public setPositiveTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "c"    # Landroid/content/res/ColorStateList;

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getButtonItem(I)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->getButtonItem(I)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 182
    :cond_0
    return-void
.end method

.method public setPositiveTextColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "positiveTextColor"    # Ljava/lang/String;

    .line 339
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUNoticeDialog;->positiveTextColor:Ljava/lang/String;

    .line 340
    return-void
.end method
