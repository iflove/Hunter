.class Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;
.super Ljava/lang/Object;
.source "UpdateRetryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->create()Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

.field final synthetic val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->access$200(Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 157
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$2;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    invoke-virtual {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->dismiss()V

    .line 158
    return-void
.end method
