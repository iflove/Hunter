.class public Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;
.super Landroid/app/Activity;
.source "AlipayMiniProgramAuthActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AlipayMiniProgramAuthActivity"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mActionButtonView:Landroid/widget/TextView;

.field private mAppIconResId:I

.field private mAppIconView:Landroid/widget/ImageView;

.field private mAppId:Ljava/lang/String;

.field private mAppName:Ljava/lang/String;

.field private mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

.field private mCloseView:Landroid/widget/TextView;

.field private mDescription1View:Landroid/widget/TextView;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->isLogined()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    return-object v0
.end method

.method private getIntentParams()V
    .locals 3

    .line 71
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    const-string v0, "appName"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppName:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "userId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mUserId:Ljava/lang/String;

    .line 76
    const-string v0, "accessToken"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAccessToken:Ljava/lang/String;

    .line 77
    const-string v0, "appId"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppId:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    const-string v2, "appIconResId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppIconResId:I

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->get(Landroid/content/Context;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthService;->getMiniProgramAuthCallback()Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getIntentParams...appName="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",appId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",callback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAuthCallback:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramAuthCallback;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AlipayMiniProgramAuthActivity"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private initViews()V
    .locals 5

    .line 48
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->close:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mCloseView:Landroid/widget/TextView;

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->appIcon:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppIconView:Landroid/widget/ImageView;

    .line 52
    iget v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppIconResId:I

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    :cond_0
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->description_1:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mDescription1View:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->description_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAppName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->action_button:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mActionButtonView:Landroid/widget/TextView;

    .line 59
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mActionButtonView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->isLogined()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->confirm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->go_to_alipay_auth:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->parent:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->setImmerseLayout(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method private isLogined()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->mAccessToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private openMiniProgramOrDoAuth()V
    .locals 2

    .line 102
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;)V

    .line 118
    .local v0, "runnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 121
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->finish()V

    .line 122
    return-void
.end method

.method private setImmerseLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 140
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 142
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 143
    .local v0, "statusBarHeight":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "statusBarHeight":I
    :cond_0
    return-void

    .line 145
    :catchall_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setImmerseLayout...e="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlipayMiniProgramAuthActivity"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method


# virtual methods
.method public getStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-static {v1, v2, v3, v4}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 154
    .local v2, "resourceId":I
    move v2, v1

    if-lez v1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 157
    :cond_0
    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 96
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$id;->close:I

    if-ne v0, v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->onBackPressed()V

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/nebulaappproxy/R$id;->action_button:I

    if-ne v0, v1, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->openMiniProgramOrDoAuth()V

    .line 91
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$layout;->mini_program_auth_activity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->getIntentParams()V

    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/AlipayMiniProgramAuthActivity;->initViews()V

    .line 45
    return-void
.end method
