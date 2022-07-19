.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$8;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->checkRenderProcessStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 737
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$8;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 740
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sRenderProcessReady:Z
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$500()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    const/4 v0, 0x0

    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportMultiProcessLaunchStatus(IZZ)V
    invoke-static {v0, v0, v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1200(IZZ)V

    .line 743
    :cond_0
    return-void
.end method
