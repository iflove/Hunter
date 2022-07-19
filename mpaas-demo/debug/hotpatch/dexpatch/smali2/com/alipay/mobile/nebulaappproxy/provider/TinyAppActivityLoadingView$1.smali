.class Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;
.super Ljava/lang/Object;
.source "TinyAppActivityLoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->c:Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->a:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->TAG:Ljava/lang/String;

    const-string v1, "activity is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 60
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getContentView: activity.getResouces()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->a:Landroid/app/Activity;

    .line 61
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$layout;->tiny_app_activity_loading_view:I

    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5ViewCache;->getCachedViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 63
    .local v2, "realContentView":Landroid/view/View;
    move-object v2, v0

    if-nez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$layout;->tiny_app_activity_loading_view:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->b:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->a()V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->b:Landroid/view/ViewGroup;

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_nav_loading_loading:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 73
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    move-object v1, v0

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1$1;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;Landroid/widget/ProgressBar;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->c:Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->a(Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->b:Landroid/view/ViewGroup;

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$id;->right_btn_container:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    .line 86
    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->setCloseButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->b:Landroid/view/ViewGroup;

    sget v3, Lcom/alipay/mobile/nebulaappproxy/R$id;->h5_ll_lv_nav_title:I

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 96
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->c:Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->b(Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 97
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->c:Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->a(Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 98
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView$1;->c:Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;

    invoke-static {v3}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->a(Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/nebulaappproxy/provider/TinyAppActivityLoadingView;->setTitle(Ljava/lang/String;)V

    .line 100
    :cond_2
    return-void
.end method
