.class Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;
.super Landroid/os/ResultReceiver;
.source "H5EmbedEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H5ResultReceiver"
.end annotation


# instance fields
.field private mEditTextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;Landroid/os/Handler;)V
    .locals 1
    .param p1, "embedEditText"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 679
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 680
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;->mEditTextRef:Ljava/lang/ref/WeakReference;

    .line 681
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 9
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;

    .line 685
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 687
    :cond_0
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    const-string v1, "H5EmbedEditText"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 722
    :cond_1
    const-string v0, "onReceiveResult, keyboard hide success"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "embedEditText2":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;->mEditTextRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    .line 725
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 727
    :cond_2
    if-eqz v0, :cond_7

    .line 728
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->getContainer()Landroid/view/View;

    move-result-object v1

    .line 729
    .local v1, "container":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 730
    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 732
    .end local v1    # "container":Landroid/view/View;
    :cond_3
    goto :goto_1

    .line 690
    .end local v0    # "embedEditText2":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    :cond_4
    const-string v0, "onReceiveResult, keyboard show success"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "embedEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    const/4 v1, 0x0

    .line 693
    .local v1, "webView":Landroid/view/View;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;->mEditTextRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_5

    .line 694
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 696
    :cond_5
    if-eqz v0, :cond_7

    .line 697
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->getWebView()Landroid/view/View;

    move-result-object v1

    .line 698
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->getContainer()Landroid/view/View;

    move-result-object v2

    .line 699
    .local v2, "container":Landroid/view/View;
    if-eqz v2, :cond_6

    .line 700
    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 702
    :cond_6
    move-object v3, v1

    .line 703
    .local v3, "finalWebView":Landroid/view/View;
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->getEditText()Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;

    move-result-object v4

    .line 704
    .local v4, "finalEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    move-object v5, v0

    .line 705
    .local v5, "finalEmbedEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    new-instance v6, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver$1;

    invoke-direct {v6, p0, v3, v4, v5}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver$1;-><init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5ResultReceiver;Landroid/view/View;Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)V

    const-wide/16 v7, 0xc8

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 737
    .end local v0    # "embedEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    .end local v1    # "webView":Landroid/view/View;
    .end local v2    # "container":Landroid/view/View;
    .end local v3    # "finalWebView":Landroid/view/View;
    .end local v4    # "finalEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedBaseEditText;
    .end local v5    # "finalEmbedEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    :cond_7
    :goto_1
    return-void
.end method
