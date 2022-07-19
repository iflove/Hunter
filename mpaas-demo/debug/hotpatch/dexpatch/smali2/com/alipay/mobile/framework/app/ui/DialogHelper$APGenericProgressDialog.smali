.class public Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;
.super Landroid/app/AlertDialog;
.source "DialogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/framework/app/ui/DialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "APGenericProgressDialog"
.end annotation


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z

.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/app/ui/DialogHelper;
    .param p2, "context"    # Landroid/content/Context;

    .line 402
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 403
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 404
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Landroid/content/Context;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/app/ui/DialogHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .line 406
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 407
    invoke-direct {p0, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 408
    return-void
.end method

.method private a()V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    iget-boolean v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->e:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 433
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 412
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 413
    sget v0, Lcom/alipay/mobile/framework/R$layout;->generic_progress_dialog:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->setContentView(I)V

    .line 414
    const v0, 0x102000d

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    .line 415
    sget v0, Lcom/alipay/mobile/framework/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->b:Landroid/widget/TextView;

    .line 421
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a()V

    .line 422
    iget-boolean v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->d:Z

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->setIndeterminate(Z)V

    .line 423
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .line 450
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void

    .line 453
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->d:Z

    .line 455
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 437
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    .line 438
    return-void
.end method

.method public setProgressVisiable(Z)V
    .locals 0
    .param p1, "progressVisiable"    # Z

    .line 445
    iput-boolean p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$APGenericProgressDialog;->e:Z

    .line 446
    return-void
.end method
