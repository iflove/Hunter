.class final Lcom/alipay/mobile/antui/basic/AUTitleBar$1;
.super Ljava/lang/Object;
.source "AUTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUTitleBar;->initBackButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/antui/basic/AUTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/antui/basic/AUTitleBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/antui/basic/AUTitleBar;

    .line 253
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar$1;->a:Lcom/alipay/mobile/antui/basic/AUTitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar$1;->a:Lcom/alipay/mobile/antui/basic/AUTitleBar;

    # getter for: Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackListener:Lcom/alipay/mobile/antui/basic/AUTitleBar$a;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->access$000(Lcom/alipay/mobile/antui/basic/AUTitleBar;)Lcom/alipay/mobile/antui/basic/AUTitleBar$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar$1;->a:Lcom/alipay/mobile/antui/basic/AUTitleBar;

    # getter for: Lcom/alipay/mobile/antui/basic/AUTitleBar;->mBackListener:Lcom/alipay/mobile/antui/basic/AUTitleBar$a;
    invoke-static {v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->access$000(Lcom/alipay/mobile/antui/basic/AUTitleBar;)Lcom/alipay/mobile/antui/basic/AUTitleBar$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    return-void

    .line 260
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/antui/basic/AUTitleBar$1;->a:Lcom/alipay/mobile/antui/basic/AUTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/basic/AUTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    .local v1, "context":Landroid/content/Context;
    move-object v1, v0

    const-string v2, "input_method"

    .line 262
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 264
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 265
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 269
    return-void
.end method
