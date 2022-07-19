.class Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;
.super Ljava/lang/Object;
.source "H5WebLoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->initViewBeforeSetContent(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/view/H5WebLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebula/view/H5WebLoadingView$1;->this$0:Lcom/alipay/mobile/nebula/view/H5WebLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/view/H5WebLoadingView;->getLoadingActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    .line 63
    .local v1, "activity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 66
    :cond_0
    return-void
.end method
