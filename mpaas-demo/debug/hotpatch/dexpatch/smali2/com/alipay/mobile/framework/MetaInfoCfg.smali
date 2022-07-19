.class public Lcom/alipay/mobile/framework/MetaInfoCfg;
.super Ljava/lang/Object;
.source "MetaInfoCfg.java"


# static fields
.field private static a:Z

.field private static b:Lcom/alipay/mobile/framework/MetaInfoCfg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/MetaInfoCfg;->a:Z

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/MetaInfoCfg;->b:Lcom/alipay/mobile/framework/MetaInfoCfg;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/framework/MetaInfoCfg;
    .locals 3

    const-class v0, Lcom/alipay/mobile/framework/MetaInfoCfg;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/framework/MetaInfoCfg;->a:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/mobile/framework/MetaInfoCfg;->b:Lcom/alipay/mobile/framework/MetaInfoCfg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 21
    monitor-exit v0

    return-object v1

    .line 23
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/alipay/mobile/framework/MetaInfoCfg;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    :try_start_2
    const-string v1, "com.alipay.mobile.core.impl.MetaInfoConfig"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 26
    .local v2, "clazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/MetaInfoCfg;

    sput-object v1, Lcom/alipay/mobile/framework/MetaInfoCfg;->b:Lcom/alipay/mobile/framework/MetaInfoCfg;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .end local v2    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_3
    const-string v2, "MetaInfoCfg"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .end local v1    # "tr":Ljava/lang/Throwable;
    :goto_0
    sget-object v1, Lcom/alipay/mobile/framework/MetaInfoCfg;->b:Lcom/alipay/mobile/framework/MetaInfoCfg;

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Lcom/alipay/mobile/framework/MetaInfoCfg;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/MetaInfoCfg;-><init>()V

    sput-object v1, Lcom/alipay/mobile/framework/MetaInfoCfg;->b:Lcom/alipay/mobile/framework/MetaInfoCfg;

    .line 33
    :cond_1
    sget-object v1, Lcom/alipay/mobile/framework/MetaInfoCfg;->b:Lcom/alipay/mobile/framework/MetaInfoCfg;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    .line 19
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDescriptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasDescriptions()Z
    .locals 1

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public hasDescriptionsSave()Z
    .locals 4

    .line 41
    const-string v0, "MetaInfoCfg"

    const/4 v1, 0x0

    .line 43
    .local v1, "hasDescription":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/MetaInfoCfg;->hasDescriptions()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    .line 46
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v2

    .line 45
    .local v2, "tr":Ljava/lang/Throwable;
    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .end local v2    # "tr":Ljava/lang/Throwable;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasDescription="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v1
.end method

.method public initDescriptionsWithMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "mDescriptionMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/framework/MicroDescription<",
            "*>;>;>;)V"
        }
    .end annotation

    .line 57
    return-void
.end method
