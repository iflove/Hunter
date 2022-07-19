.class public Lcom/alipay/mobile/base/config/SimpleConfigGetter;
.super Ljava/lang/Object;
.source "SimpleConfigGetter.java"


# static fields
.field public static INSTANCE:Lcom/alipay/mobile/base/config/SimpleConfigGetter; = null

.field private static final PLA:Ljava/lang/String; = "pla_"


# instance fields
.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/alipay/mobile/base/config/SimpleConfigGetter;

    invoke-direct {v0}, Lcom/alipay/mobile/base/config/SimpleConfigGetter;-><init>()V

    sput-object v0, Lcom/alipay/mobile/base/config/SimpleConfigGetter;->INSTANCE:Lcom/alipay/mobile/base/config/SimpleConfigGetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/SimpleConfigGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private init()V
    .locals 3

    .line 34
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 35
    .local v1, "context":Landroid/content/Context;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    const-string v2, "CommonConfigEncrypt"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/base/config/SimpleConfigGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/base/config/SimpleConfigGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/SimpleConfigGetter;->init()V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/base/config/SimpleConfigGetter;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pla_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_1
    return-object v1
.end method
