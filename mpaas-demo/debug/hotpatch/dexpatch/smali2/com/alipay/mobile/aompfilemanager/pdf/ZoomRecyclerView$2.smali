.class final Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ZoomRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->newZoomAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$2;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 280
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$2;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z
    invoke-static {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$402(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;Z)Z

    .line 281
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$2;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    const/4 v0, 0x0

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z
    invoke-static {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$402(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;Z)Z

    .line 276
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 270
    iget-object p1, p0, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView$2;->a:Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;

    const/4 v0, 0x1

    # setter for: Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->isScaling:Z
    invoke-static {p1, v0}, Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;->access$402(Lcom/alipay/mobile/aompfilemanager/pdf/ZoomRecyclerView;Z)Z

    .line 271
    return-void
.end method
