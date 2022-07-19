.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$14;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->renderProcessReady(Lcom/uc/webview/export/WebView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$isStaticWebView:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1515
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$14;->val$isStaticWebView:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 1518
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1519
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # setter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sActualProcessMode:I
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1902(I)I

    .line 1520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRenderProcessReady config mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->sProcessMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " current mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1521
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sActualProcessMode:I
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1900()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    const-string v1, "H5UCWebView"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    # getter for: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->sActualProcessMode:I
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1900()I

    move-result v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$14;->val$isStaticWebView:Z

    # invokes: Lcom/alipay/mobile/nebulauc/impl/UCWebView;->reportMultiProcessLaunchStatus(IZZ)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$1200(IZZ)V

    .line 1524
    :cond_0
    return-void
.end method
