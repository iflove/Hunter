.class final Lcom/alipay/mobile/antui/basic/AUPullRefreshView$1;
.super Ljava/lang/Object;
.source "AUPullRefreshView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUPullRefreshView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    iget-object v1, v0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mOverView:Lcom/alipay/mobile/antui/basic/AUPullLoadingView;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUPullLoadingView;->getOverViewHeight()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->mMaxMagin:I

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUPullRefreshView$1;->a:Lcom/alipay/mobile/antui/basic/AUPullRefreshView;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUPullRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 89
    return-void
.end method
