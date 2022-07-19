.class final Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$1;
.super Ljava/lang/Object;
.source "AUBasePwdInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;->showInputPannel(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;

    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$1;->b:Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox;

    iput-object p2, p0, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$1;->a:Landroid/view/View;

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUBasePwdInputBox$1;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 89
    return-void
.end method
