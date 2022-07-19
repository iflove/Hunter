.class Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;
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

    .line 135
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->access$100(Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 139
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder$1;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    invoke-virtual {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;->dismiss()V

    .line 140
    return-void
.end method
