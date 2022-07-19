.class final Lcom/alipay/mobile/antui/picker/AUConfirmPopup$2;
.super Ljava/lang/Object;
.source "AUConfirmPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->makeOperationButton()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/picker/AUConfirmPopup;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/picker/AUConfirmPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/picker/AUConfirmPopup;

    .line 245
    iput-object p1, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup$2;->a:Lcom/alipay/mobile/antui/picker/AUConfirmPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup$2;->a:Lcom/alipay/mobile/antui/picker/AUConfirmPopup;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->dismiss()V

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/antui/picker/AUConfirmPopup$2;->a:Lcom/alipay/mobile/antui/picker/AUConfirmPopup;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/picker/AUConfirmPopup;->onCancel()V

    .line 250
    return-void
.end method
