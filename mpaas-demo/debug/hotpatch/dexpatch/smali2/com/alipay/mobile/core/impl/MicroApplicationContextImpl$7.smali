.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic val$cancelable:Z

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 1454
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->val$cancelable:Z

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1458
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$300(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1459
    .local v2, "activeActivity":Landroid/app/Activity;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    new-instance v0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$APGenericProgressDialog;

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    invoke-direct {v0, v3, v2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$APGenericProgressDialog;-><init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Landroid/content/Context;)V

    .line 1461
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v3, v4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$402(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1462
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1463
    move-object v3, v0

    check-cast v3, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$APGenericProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$APGenericProgressDialog;->setProgressVisiable(Z)V

    .line 1464
    iget-boolean v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->val$cancelable:Z

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1465
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->val$cancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1466
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1469
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1474
    return-void

    .line 1470
    :catchall_0
    move-exception v3

    .line 1471
    .local v3, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DialogHelper.showProgressDialog()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MicroAppContextImpl"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$400(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1473
    iget-object v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$7;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # setter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v4, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$402(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1476
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method
