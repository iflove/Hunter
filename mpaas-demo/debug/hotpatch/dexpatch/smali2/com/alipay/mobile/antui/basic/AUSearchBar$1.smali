.class final Lcom/alipay/mobile/antui/basic/AUSearchBar$1;
.super Ljava/lang/Object;
.source "AUSearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/antui/basic/AUSearchBar;->initBackButton()V
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

    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$1;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .line 242
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/antui/basic/AUSearchBar$1;->a:Lcom/alipay/mobile/antui/basic/AUSearchBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/basic/AUSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 243
    .local v0, "context":Landroid/content/Context;
    move-object v0, v1

    const-string v2, "input_method"

    .line 244
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 246
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 247
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    return-void
.end method
