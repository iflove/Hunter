.class Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactUtils"

.field private static mPickerCallback:Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static pickFromContactsList(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;)V
    .locals 5
    .param p0, "callback"    # Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;

    .line 22
    const-string v0, "ContactUtils"

    const-string/jumbo v1, "pickFromContactsList"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sput-object p0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->mPickerCallback:Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;

    .line 27
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 28
    .local v2, "microApplicationContext":Lcom/alipay/mobile/framework/MicroApplicationContext;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Landroid/content/Intent;

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    const-class v4, Lcom/alipay/mobile/nebulaappproxy/inside/contact/H5ContactTransparentActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v1, "intent":Landroid/content/Intent;
    move-object v1, v0

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 34
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method static setResultAccount(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;)V
    .locals 1
    .param p0, "account"    # Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;

    .line 15
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->mPickerCallback:Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;->onAccountReturned(Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactAccount;)V

    .line 18
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactUtils;->mPickerCallback:Lcom/alipay/mobile/nebulaappproxy/inside/contact/ContactPickerCallback;

    .line 19
    return-void
.end method
