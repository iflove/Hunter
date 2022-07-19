.class Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;
.super Ljava/lang/Object;
.source "UpdateCommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->create()Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

.field final synthetic val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    iput-object p2, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 174
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;->this$0:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;

    # getter for: Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;->access$200(Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    const/4 v1, -0x2

    invoke-interface {p1, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 177
    iget-object p1, p0, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog$Builder$2;->val$dialog:Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;

    invoke-virtual {p1}, Lcom/alipay/mobile/upgrade/ui/UpdateCommonDialog;->dismiss()V

    .line 178
    return-void
.end method
