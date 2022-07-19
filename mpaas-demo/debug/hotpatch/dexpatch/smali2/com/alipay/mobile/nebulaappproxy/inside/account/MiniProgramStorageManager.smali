.class public Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;
.super Ljava/lang/Object;
.source "MiniProgramStorageManager.java"


# static fields
.field private static final AUTH_CONFIRM_KEY:Ljava/lang/String; = "AUTH_CONFIRM"

.field private static final SP_NAME:Ljava/lang/String; = "mini_program_auth_storage"

.field private static sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v0, "mini_program_auth_storage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 24
    return-void
.end method

.method private buildAuthConfirmKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_AUTH_CONFIRM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->sInstance:Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;

    return-object v0
.end method


# virtual methods
.method public isMiniProgramAuthConfirmFirstTime(Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "AUTH_CONFIRM"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "authState":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    .line 49
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->buildAuthConfirmKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isMiniProgramGotoAuthFirstTime()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AUTH_CONFIRM"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public setMiniProgramAuthConfirmNotFirstTime(Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulaappproxy/inside/account/MiniProgramStorageManager;->buildAuthConfirmKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 57
    return-void
.end method
