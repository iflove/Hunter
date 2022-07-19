.class Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity$1;
.super Ljava/lang/Object;
.source "PreloadFodderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;

    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity$1;->this$0:Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity$1;->this$0:Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity$1;->this$0:Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/preload/PreloadFodderActivity;->finish()V

    .line 74
    :cond_0
    return-void
.end method
