.class public Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;
.super Ljava/lang/Object;
.source "CpuBoostConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig$Strategy;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->b:Lorg/json/JSONObject;

    .line 38
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 28
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->a:Ljava/lang/String;

    const-string v3, "config error, not valid json"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 31
    const/4 v1, 0x0

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method


# virtual methods
.method public getBoostTimeoutMs()I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->b:Lorg/json/JSONObject;

    const-string v1, "timeout_ms"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPerfStopDelayTime()I
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->b:Lorg/json/JSONObject;

    const-string v1, "stop_delay_ms"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSubConfig(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/quinox/perfhelper/CpuBoostConfig;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
