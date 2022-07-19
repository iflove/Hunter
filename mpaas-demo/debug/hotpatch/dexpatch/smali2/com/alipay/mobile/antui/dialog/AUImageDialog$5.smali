.class final Lcom/alipay/mobile/antui/dialog/AUImageDialog$5;
.super Ljava/util/TimerTask;
.source "AUImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/dialog/AUImageDialog;->timerTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    .line 645
    iput-object p1, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$5;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 648
    # getter for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$300()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$5;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$5;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    # invokes: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->callTimeFinish()V
    invoke-static {v0}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$600(Lcom/alipay/mobile/antui/dialog/AUImageDialog;)V

    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUImageDialog$5;->a:Lcom/alipay/mobile/antui/dialog/AUImageDialog;

    iget-object v0, v0, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 654
    :goto_0
    # operator-- for: Lcom/alipay/mobile/antui/dialog/AUImageDialog;->times:I
    invoke-static {}, Lcom/alipay/mobile/antui/dialog/AUImageDialog;->access$310()I

    .line 655
    return-void
.end method
