.class public Lcom/alipay/mobile/h5container/api/H5LoadingView;
.super Ljava/lang/Object;
.source "H5LoadingView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5LoadingViewProvider;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5LoadingView"


# instance fields
.field private backLoadingView:Landroid/widget/TextView;

.field private contentView:Landroid/view/View;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/h5container/api/H5LoadingView;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5LoadingView;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/h5container/api/H5LoadingView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/h5container/api/H5LoadingView;

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->backLoadingView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "startParam"    # Landroid/os/Bundle;

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->contentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 38
    return-object v0

    .line 40
    :cond_0
    if-eqz p1, :cond_1

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getContentView: activity.getResouces()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "H5LoadingView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    sget v0, Lcom/alipay/mobile/nebula/R$layout;->h5_loading_fragment:I

    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->getCachedViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->contentView:Landroid/view/View;

    .line 45
    if-nez v0, :cond_2

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$layout;->h5_loading_fragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->contentView:Landroid/view/View;

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->contentView:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_lv_nav_back_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->backLoadingView:Landroid/widget/TextView;

    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getInstance()Lcom/alipay/mobile/nebula/util/H5TypefaceCache;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "h5iconfont"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "h5titlebar.ttf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/alipay/mobile/nebula/util/H5TypefaceCache;->getTypeface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 50
    .local v0, "iconfont":Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->backLoadingView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->backLoadingView:Landroid/widget/TextView;

    const v2, -0xef7117

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5StateListUtils;->getStateColor(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->contentView:Landroid/view/View;

    sget v2, Lcom/alipay/mobile/nebula/R$id;->h5_nav_loading_loading:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->progressBar:Landroid/widget/ProgressBar;

    .line 53
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->backLoadingView:Landroid/widget/TextView;

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5LoadingView$1;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/h5container/api/H5LoadingView$1;-><init>(Lcom/alipay/mobile/h5container/api/H5LoadingView;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->progressBar:Landroid/widget/ProgressBar;

    new-instance v2, Lcom/alipay/mobile/h5container/api/H5LoadingView$2;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/h5container/api/H5LoadingView$2;-><init>(Lcom/alipay/mobile/h5container/api/H5LoadingView;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->contentView:Landroid/view/View;

    return-object v1
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->contentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 110
    return-void

    .line 112
    :cond_0
    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_ll_lv_nav_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 113
    .local v1, "titleView":Landroid/widget/TextView;
    move-object v1, v0

    if-eqz v0, :cond_1

    .line 114
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    return-void
.end method

.method public stopLoading(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 86
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5LoadingView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView;->backLoadingView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 93
    new-instance v1, Lcom/alipay/mobile/h5container/api/H5LoadingView$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/h5container/api/H5LoadingView$3;-><init>(Lcom/alipay/mobile/h5container/api/H5LoadingView;Landroid/app/Activity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    :cond_1
    return-void
.end method
