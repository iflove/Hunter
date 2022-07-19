.class final Lcom/alipay/mobile/antui/basic/AUSearchBar$2;
.super Ljava/lang/Object;
.source "AUSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUSearchBar;->setClearBtnClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUSearchBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUSearchBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUSearchBar;

    .line 272
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$2;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$2;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    # getter for: Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->access$100(Lcom/alipay/mobile/antui/basic/AUSearchBar;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/basic/AUEditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$2;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    # getter for: Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->access$100(Lcom/alipay/mobile/antui/basic/AUSearchBar;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v0

    .line 279
    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$2;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    # getter for: Lcom/alipay/mobile/antui/basic/AUSearchBar;->mSearchEditView:Lcom/alipay/mobile/antui/basic/AUEditText;
    invoke-static {v1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->access$100(Lcom/alipay/mobile/antui/basic/AUSearchBar;)Lcom/alipay/mobile/antui/basic/AUEditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 283
    return-void
.end method
