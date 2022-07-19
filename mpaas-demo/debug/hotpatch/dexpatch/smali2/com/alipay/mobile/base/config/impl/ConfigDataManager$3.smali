.class Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;
.super Lcom/alipay/mobile/base/config/impl/SPAdapter;
.source "ConfigDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/config/impl/ConfigDataManager;
    .param p2, "oldSp"    # Landroid/content/SharedPreferences;
    .param p3, "newSp"    # Landroid/content/SharedPreferences;

    .line 363
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/base/config/impl/SPAdapter;-><init>(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V

    return-void
.end method


# virtual methods
.method public beforePutInNewSp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->encrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->access$000(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringInNewSp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    # invokes: Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->access$100(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 372
    .local v1, "decrypt":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    return-object v1

    .line 375
    :cond_0
    return-object p3
.end method

.method public getStringInOldSp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .line 366
    return-object p2
.end method

.method public onClear(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 4
    .param p1, "oldSp"    # Landroid/content/SharedPreferences;
    .param p2, "newSp"    # Landroid/content/SharedPreferences;

    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mEncryptSP:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigDataManager$3;->this$0:Lcom/alipay/mobile/base/config/impl/ConfigDataManager;

    # getter for: Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->mEncryptSP:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigDataManager;->access$200(Lcom/alipay/mobile/base/config/impl/ConfigDataManager;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const/4 v2, 0x1

    const-string v3, "key_replace"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 388
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 390
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
