.class Lcom/alipay/mobile/h5container/api/H5LoadingView$2;
.super Ljava/lang/Object;
.source "H5LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5LoadingView;->getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5LoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5LoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5LoadingView;

    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView$2;->this$0:Lcom/alipay/mobile/h5container/api/H5LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5LoadingView$2;->this$0:Lcom/alipay/mobile/h5container/api/H5LoadingView;

    # getter for: Lcom/alipay/mobile/h5container/api/H5LoadingView;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5LoadingView;->access$000(Lcom/alipay/mobile/h5container/api/H5LoadingView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    return-void
.end method
