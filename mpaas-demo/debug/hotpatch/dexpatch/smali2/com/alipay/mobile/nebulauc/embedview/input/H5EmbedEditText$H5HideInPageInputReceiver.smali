.class Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;
.super Landroid/content/BroadcastReceiver;
.source "H5EmbedEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "H5HideInPageInputReceiver"
.end annotation


# instance fields
.field private editTextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;)V
    .locals 1
    .param p1, "embedEditText"    # Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 744
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 745
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;->editTextWeakReference:Ljava/lang/ref/WeakReference;

    .line 746
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 750
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText$H5HideInPageInputReceiver;->editTextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;

    .line 752
    .local v0, "embedEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    if-eqz v0, :cond_0

    .line 753
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;->clearFocusAndHideKeyboard(Z)V

    .line 756
    .end local v0    # "embedEditText":Lcom/alipay/mobile/nebulauc/embedview/input/H5EmbedEditText;
    :cond_0
    return-void
.end method
