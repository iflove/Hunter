.class Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;
.super Ljava/lang/Object;
.source "MicroApplicationContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->Toast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$period:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    .line 1323
    iput-object p1, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    iput-object p2, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$period:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1327
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->this$0:Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;

    # getter for: Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->f:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;->access$300(Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1328
    .local v2, "activity":Landroid/app/Activity;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 1329
    move-object v0, v2

    .line 1330
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/Toast;

    invoke-direct {v3, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1331
    .local v3, "toast":Landroid/widget/Toast;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/framework/R$layout;->transient_notification:I

    invoke-virtual {v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1332
    .local v1, "view":Landroid/view/View;
    move-object v1, v4

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1333
    iget-object v5, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1334
    invoke-virtual {v3, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1335
    iget v4, p0, Lcom/alipay/mobile/core/impl/MicroApplicationContextImpl$4;->val$period:I

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setDuration(I)V

    .line 1336
    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 1338
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1342
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void

    .line 1340
    :catchall_0
    move-exception v0

    .line 1341
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MicroAppContextImpl"

    const-string/jumbo v2, "single toast"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1343
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
