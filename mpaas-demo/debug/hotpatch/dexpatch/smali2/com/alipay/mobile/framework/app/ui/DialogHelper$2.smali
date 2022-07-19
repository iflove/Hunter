.class Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$period:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 147
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$period:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    # getter for: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a:Landroid/app/Activity;
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$000(Lcom/alipay/mobile/framework/app/ui/DialogHelper;)Landroid/app/Activity;

    move-result-object v0

    .line 153
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 154
    .local v1, "toast":Landroid/widget/Toast;
    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->this$0:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v3, 0x0

    # invokes: Lcom/alipay/mobile/framework/app/ui/DialogHelper;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    invoke-static {v2, v1, v3}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->access$200(Lcom/alipay/mobile/framework/app/ui/DialogHelper;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/framework/R$layout;->transient_notification:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 156
    .local v3, "view":Landroid/view/View;
    move-object v3, v2

    const v4, 0x102000b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    iget-object v4, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 159
    iget v2, p0, Lcom/alipay/mobile/framework/app/ui/DialogHelper$2;->val$period:I

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 160
    const/16 v2, 0x11

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 163
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-void

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DialogHelper.toast(): exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DialogHelper"

    invoke-static {v5, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "toast":Landroid/widget/Toast;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
