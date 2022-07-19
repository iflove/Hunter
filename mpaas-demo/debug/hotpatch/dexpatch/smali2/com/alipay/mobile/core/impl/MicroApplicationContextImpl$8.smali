.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 1503
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1506
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$400(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$400(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$400(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 1509
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$400(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1514
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # setter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v2, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$402(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 1515
    return-void

    .line 1510
    :catchall_0
    move-exception v2

    .line 1511
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "MicroAppContextImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DialogHelper.dismissProgressDialog(): exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1513
    :catchall_1
    move-exception v2

    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v3}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$400(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1514
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$8;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # setter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->g:Ljava/lang/ref/WeakReference;
    invoke-static {v3, v1}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$402(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    throw v2

    .line 1517
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method
