.class Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;
.super Ljava/lang/Object;
.source "TrackIntegrator.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/monitor/track/TrackIntegrator;->trackClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

.field final synthetic val$globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field final synthetic val$rootContentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    .line 996
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;->this$0:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    iput-object p2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;->val$rootContentView:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;->val$globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1013
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 1000
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;->val$rootContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;->val$globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;->val$rootContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$2;->val$globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    :goto_0
    goto :goto_1

    .line 1005
    :catchall_0
    move-exception v0

    .line 1008
    :goto_1
    return-void
.end method
