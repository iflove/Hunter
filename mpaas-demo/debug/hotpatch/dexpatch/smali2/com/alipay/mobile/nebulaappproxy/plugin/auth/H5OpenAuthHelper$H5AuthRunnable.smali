.class Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;
.super Ljava/lang/Object;
.source "H5OpenAuthHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H5AuthRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

.field private b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

.field private i:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;)V
    .locals 0
    .param p2, "authSkipResultPB"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "scopeNicks"    # Ljava/util/List;
    .param p6, "showErrorTip"    # Z
    .param p7, "isvAppId"    # Ljava/lang/String;
    .param p8, "extInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .param p9, "appExtInfo"    # Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            "Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;",
            ")V"
        }
    .end annotation

    .line 343
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    .line 345
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->c:Ljava/lang/String;

    .line 346
    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->d:Ljava/lang/String;

    .line 347
    iput-object p5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->e:Ljava/util/List;

    .line 348
    iput-boolean p6, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->f:Z

    .line 349
    iput-object p7, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->g:Ljava/lang/String;

    .line 350
    iput-object p8, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->h:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 351
    iput-object p9, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->i:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->h:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->i:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/MapStringString;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 24

    .line 356
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authContentResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;->authText:Ljava/util/List;

    .line 357
    .local v2, "authText":Ljava/util/List;
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authContentResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;->appName:Ljava/lang/String;

    .line 358
    .local v3, "appName":Ljava/lang/String;
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authContentResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;

    iget-object v4, v0, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;->agreements:Ljava/util/List;

    .line 360
    .local v4, "protocol":Ljava/util/List;
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 361
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;

    iget-object v5, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-static {v5}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    move-object v6, v5

    .line 363
    .local v6, "h5OpenAuthDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;
    move-object v6, v0

    new-instance v7, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable$1;

    invoke-direct {v7, v1, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;)V

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable$2;

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->setOnCloseClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->getAuthContentTitle()Landroid/widget/TextView;

    move-result-object v7

    .line 393
    .local v7, "authTitle":Landroid/widget/TextView;
    move-object v0, v5

    .line 394
    .local v0, "titleTemplate":Ljava/lang/String;
    const-string/jumbo v8, "\u6388\u6743 <b>appName</b> \u83b7\u53d6\u4ee5\u4e0b\u4fe1\u606f\u4e3a\u4f60\u670d\u52a1"

    const-string v9, "appName"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 395
    .end local v0    # "titleTemplate":Ljava/lang/String;
    .local v8, "titleTemplate":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->getAuthContentContainer()Landroid/widget/LinearLayout;

    move-result-object v9

    .line 399
    .local v9, "authContentContainer":Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v0, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v10, v0

    .line 401
    .local v10, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 402
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v5

    move-object v14, v13

    move-object v15, v14

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 403
    .local v5, "item":Ljava/lang/String;
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v0, v13

    .line 404
    .local v0, "itemContainer":Landroid/widget/LinearLayout;
    move-object v13, v11

    const/4 v0, 0x0

    .end local v0    # "itemContainer":Landroid/widget/LinearLayout;
    .local v13, "itemContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 405
    new-instance v0, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-static {v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v11, v14

    .line 406
    .local v11, "dot":Landroid/widget/TextView;
    move-object v14, v0

    .end local v11    # "dot":Landroid/widget/TextView;
    .local v14, "dot":Landroid/widget/TextView;
    const-string/jumbo v11, "\u2022 "

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    const/high16 v0, 0x41700000    # 15.0f

    const/4 v11, 0x1

    invoke-virtual {v14, v11, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    const v11, -0x666667

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 410
    new-instance v11, Landroid/widget/TextView;

    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v15

    .line 411
    .local v0, "itemView":Landroid/widget/TextView;
    move-object v15, v11

    .end local v0    # "itemView":Landroid/widget/TextView;
    .local v15, "itemView":Landroid/widget/TextView;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    const/high16 v0, 0x41700000    # 15.0f

    const/4 v11, 0x1

    invoke-virtual {v15, v11, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 413
    const v0, -0x666667

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    const/4 v0, 0x0

    invoke-virtual {v15, v0, v11, v0, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 415
    iget-object v0, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->a:Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;)Landroid/app/Activity;

    move-result-object v0

    const/high16 v11, 0x40e00000    # 7.0f

    invoke-static {v0, v11}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v15, v0, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 416
    invoke-virtual {v15, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    const/16 v0, 0xa

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v0, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 420
    invoke-virtual {v13, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    invoke-virtual {v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    .end local v5    # "item":Ljava/lang/String;
    .end local v13    # "itemContainer":Landroid/widget/LinearLayout;
    .end local v14    # "dot":Landroid/widget/TextView;
    .end local v15    # "itemView":Landroid/widget/TextView;
    goto/16 :goto_0

    .line 423
    :cond_0
    const-string v0, "a143.b5627.c12341"

    const-string v11, "exposure"

    const-string v13, "acctInfoAuth"

    invoke-static {v0, v11, v13}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object v5, v12

    goto :goto_1

    .line 427
    :cond_1
    move-object v0, v5

    :goto_1
    iget-object v11, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    iget-object v11, v11, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authContentResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;

    iget-object v11, v11, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;->isvAgent:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 428
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->getAuthContentIsvTip()Landroid/widget/TextView;

    move-result-object v11

    .line 429
    .local v5, "isvTipView":Landroid/widget/TextView;
    move-object v5, v11

    iget-object v12, v1, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;->b:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;

    iget-object v12, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthSkipResultPB;->authContentResult:Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;

    iget-object v12, v12, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/request/result/WalletAuthContentResultPB;->isvAgentDesc:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    .end local v5    # "isvTipView":Landroid/widget/TextView;
    :cond_2
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 435
    new-instance v11, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;

    invoke-direct {v11}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;-><init>()V

    .line 436
    .local v5, "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    move-object v5, v11

    new-instance v12, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable$3;

    invoke-direct {v12, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5OpenAuthHelper$H5AuthRunnable;)V

    invoke-virtual {v11, v12}, Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;->setOnLinkClickListener(Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod$OnLinkClickListener;)V

    .line 462
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->getAuthContentProtocol()Landroid/widget/TextView;

    move-result-object v11

    .line 463
    .local v0, "authProtocol":Landroid/widget/TextView;
    move-object v0, v11

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 465
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .local v11, "stringBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v12, "\u300atagname\u300b"

    .line 467
    .local v12, "protocolTemplate":Ljava/lang/String;
    const-string/jumbo v13, "\u540c\u610f"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    .line 470
    .local v14, "size":I
    move v14, v13

    new-array v13, v13, [I

    .line 471
    .local v13, "segmentStart":[I
    new-array v15, v14, [I

    .line 472
    .local v15, "segmentEnd":[I
    const/16 v17, 0x0

    .line 473
    .local v17, "index":I
    const/16 v18, 0x2

    .line 474
    .local v18, "cursor":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v1, v20

    check-cast v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;

    .line 475
    .local v1, "modelPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;
    move-object/from16 v20, v2

    .end local v2    # "authText":Ljava/util/List;
    .local v20, "authText":Ljava/util/List;
    const-string v2, " "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    add-int/lit8 v18, v18, 0x1

    .line 477
    aput v18, v13, v17

    .line 478
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;->name:Ljava/lang/String;

    move-object/from16 v21, v3

    .end local v3    # "appName":Ljava/lang/String;
    .local v21, "appName":Ljava/lang/String;
    const-string/jumbo v3, "tagname"

    invoke-virtual {v12, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    iget-object v2, v1, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int v2, v18, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v18, v2, 0x1

    .line 480
    aput v18, v15, v17

    .line 481
    nop

    .end local v1    # "modelPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;
    add-int/lit8 v17, v17, 0x1

    .line 482
    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_2

    .line 483
    .end local v20    # "authText":Ljava/util/List;
    .end local v21    # "appName":Ljava/lang/String;
    .restart local v2    # "authText":Ljava/util/List;
    .restart local v3    # "appName":Ljava/lang/String;
    :cond_3
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    .end local v2    # "authText":Ljava/util/List;
    .end local v3    # "appName":Ljava/lang/String;
    .restart local v20    # "authText":Ljava/util/List;
    .restart local v21    # "appName":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 484
    .local v1, "protocolStr":Landroid/text/SpannableString;
    const/4 v2, 0x0

    .line 485
    .end local v17    # "index":I
    .local v2, "index":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    move-object/from16 v3, v16

    check-cast v3, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;

    .line 486
    .local v3, "modelPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;
    move-object/from16 v16, v4

    .end local v4    # "protocol":Ljava/util/List;
    .local v16, "protocol":Ljava/util/List;
    new-instance v4, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthClickableSpan;

    move-object/from16 v19, v5

    .end local v5    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .local v19, "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    iget-object v5, v3, Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;->link:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthClickableSpan;-><init>(Ljava/lang/String;)V

    aget v5, v13, v2

    move-object/from16 v22, v3

    .end local v3    # "modelPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;
    .local v22, "modelPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;
    aget v3, v15, v2

    move-object/from16 v23, v7

    .end local v7    # "authTitle":Landroid/widget/TextView;
    .local v23, "authTitle":Landroid/widget/TextView;
    const/16 v7, 0x22

    invoke-virtual {v1, v4, v5, v3, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 490
    nop

    .end local v22    # "modelPB":Lcom/alipay/mobile/nebulaappproxy/openauth/common/service/facade/rpc/model/AuthAgreementModelPB;
    add-int/lit8 v2, v2, 0x1

    .line 491
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v5, v19

    move-object/from16 v7, v23

    goto :goto_3

    .line 492
    .end local v16    # "protocol":Ljava/util/List;
    .end local v19    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .end local v23    # "authTitle":Landroid/widget/TextView;
    .restart local v4    # "protocol":Ljava/util/List;
    .restart local v5    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .restart local v7    # "authTitle":Landroid/widget/TextView;
    :cond_4
    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v7

    .end local v4    # "protocol":Ljava/util/List;
    .end local v5    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .end local v7    # "authTitle":Landroid/widget/TextView;
    .restart local v16    # "protocol":Ljava/util/List;
    .restart local v19    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .restart local v23    # "authTitle":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 434
    .end local v0    # "authProtocol":Landroid/widget/TextView;
    .end local v1    # "protocolStr":Landroid/text/SpannableString;
    .end local v11    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v12    # "protocolTemplate":Ljava/lang/String;
    .end local v13    # "segmentStart":[I
    .end local v14    # "size":I
    .end local v15    # "segmentEnd":[I
    .end local v16    # "protocol":Ljava/util/List;
    .end local v18    # "cursor":I
    .end local v19    # "h5LinkMovementMethod":Lcom/alipay/mobile/nebulaappproxy/plugin/auth/H5LinkMovementMethod;
    .end local v20    # "authText":Ljava/util/List;
    .end local v21    # "appName":Ljava/lang/String;
    .end local v23    # "authTitle":Landroid/widget/TextView;
    .local v2, "authText":Ljava/util/List;
    .local v3, "appName":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/util/List;
    .restart local v7    # "authTitle":Landroid/widget/TextView;
    :cond_5
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    move-object/from16 v23, v7

    .line 496
    .end local v2    # "authText":Ljava/util/List;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/util/List;
    .end local v7    # "authTitle":Landroid/widget/TextView;
    .restart local v16    # "protocol":Ljava/util/List;
    .restart local v20    # "authText":Ljava/util/List;
    .restart local v21    # "appName":Ljava/lang/String;
    .restart local v23    # "authTitle":Landroid/widget/TextView;
    :goto_4
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->getInstance()Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    move-result-object v0

    const-string v1, "a143.b5627"

    invoke-virtual {v0, v1, v6}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->logPageStartWithSpmId(Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    return-void

    .line 498
    :catchall_0
    move-exception v0

    .line 499
    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "H5OpenAuthHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 360
    .end local v0    # "throwable":Ljava/lang/Throwable;
    .end local v6    # "h5OpenAuthDialog":Lcom/alipay/mobile/nebulaappproxy/view/H5OpenAuthDialog;
    .end local v8    # "titleTemplate":Ljava/lang/String;
    .end local v9    # "authContentContainer":Landroid/widget/LinearLayout;
    .end local v10    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "protocol":Ljava/util/List;
    .end local v20    # "authText":Ljava/util/List;
    .end local v21    # "appName":Ljava/lang/String;
    .end local v23    # "authTitle":Landroid/widget/TextView;
    .restart local v2    # "authText":Ljava/util/List;
    .restart local v3    # "appName":Ljava/lang/String;
    .restart local v4    # "protocol":Ljava/util/List;
    :cond_6
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v16, v4

    .line 503
    .end local v2    # "authText":Ljava/util/List;
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/util/List;
    .restart local v16    # "protocol":Ljava/util/List;
    .restart local v20    # "authText":Ljava/util/List;
    .restart local v21    # "appName":Ljava/lang/String;
    :goto_5
    return-void
.end method
