.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$negative:Ljava/lang/String;

.field final synthetic val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$positive:Ljava/lang/String;

.field final synthetic val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 1367
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$positive:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$negative:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1370
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$300(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    .line 1371
    .local v1, "activeActivity":Landroid/app/Activity;
    move-object v1, v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1372
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1373
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$title:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1374
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1376
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$msg:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1377
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1379
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$positive:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1380
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$positiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1382
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$negative:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1383
    iget-object v3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$5;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1385
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1387
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1388
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1389
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    return-void

    .line 1390
    :catch_0
    move-exception v3

    .line 1391
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DialogHelper.alert(): exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MicroAppContextImpl"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "alertDialog":Landroid/app/AlertDialog;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    return-void
.end method
