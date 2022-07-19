.class Lcom/alipay/mobile/monitor/track/TrackAutoHelper$1;
.super Ljava/lang/Object;
.source "TrackAutoHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->logAutoBehavorPageStart(Ljava/lang/String;Ljava/lang/Object;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/monitor/track/TrackAutoHelper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    .line 143
    iput-object p1, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$1;->b:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    iput-object p2, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 153
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$1;->b:Lcom/alipay/mobile/monitor/track/TrackAutoHelper;

    # getter for: Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->b:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/alipay/mobile/monitor/track/TrackAutoHelper;->access$000(Lcom/alipay/mobile/monitor/track/TrackAutoHelper;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/monitor/track/TrackAutoHelper$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method
