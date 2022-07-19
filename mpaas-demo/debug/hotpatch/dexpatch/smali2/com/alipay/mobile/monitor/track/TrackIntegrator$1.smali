.class Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;
.super Ljava/lang/Object;
.source "TrackIntegrator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$isBindingImmediately:Z

.field final synthetic val$pageId:Ljava/lang/String;

.field final synthetic val$rootContentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/monitor/track/TrackIntegrator;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    .line 975
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->this$0:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    iput-object p2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$rootContentView:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$pageId:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$appId:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$isBindingImmediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    .line 978
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->this$0:Lcom/alipay/mobile/monitor/track/TrackIntegrator;

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$rootContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$pageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$appId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/mobile/monitor/track/TrackIntegrator$1;->val$isBindingImmediately:Z

    const-wide/16 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/monitor/track/TrackIntegrator;->postAddDelegate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 980
    return-void
.end method
