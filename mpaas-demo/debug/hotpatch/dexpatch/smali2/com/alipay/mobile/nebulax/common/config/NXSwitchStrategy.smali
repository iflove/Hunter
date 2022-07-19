.class public Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;
.super Ljava/lang/Object;
.source "NXSwitchStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;
    }
.end annotation


# static fields
.field public static final CFG_NAME:Ljava/lang/String; = "nebulax_applist"

.field public static final DEVMODE_FORCE_DISABLE:Ljava/lang/String; = "2"

.field public static final DEVMODE_FORCE_ENABLE:Ljava/lang/String; = "1"

.field public static final DEVMODE_IGNORE:Ljava/lang/String; = "0"

.field private static final TAG:Ljava/lang/String; = "NebulaXKernel:Switch"

.field private static strategy:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;


# instance fields
.field private final appIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private applicationContext:Landroid/content/Context;

.field private switchType:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

.field private tinyInnerEnabled:Z

.field private tinyOuterEnabled:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->appIds:Ljava/util/Set;

    .line 36
    sget-object v0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->NONE:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->switchType:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->applicationContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyInnerEnabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyOuterEnabled:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->applicationContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private applyCfgValue(Ljava/lang/String;)V
    .locals 6

    .line 64
    const-class v0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    monitor-enter v0

    .line 65
    :try_start_0
    const-string v1, "NebulaXKernel:Switch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyCfgValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->NONE:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    iput-object v1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->switchType:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->appIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyInnerEnabled:Z

    .line 69
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyOuterEnabled:Z

    .line 71
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 75
    const-string v2, "all"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    sget-object p1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->ALL:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->switchType:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    goto :goto_2

    .line 77
    :cond_1
    const-string v2, "none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    sget-object p1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->NONE:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->switchType:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    goto :goto_2

    .line 80
    :cond_2
    sget-object v2, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->PARTIAL:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    iput-object v2, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->switchType:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    .line 81
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 82
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_6

    aget-object v3, p1, v1

    .line 83
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 85
    goto :goto_1

    .line 87
    :cond_3
    const-string v4, "tiny_inner"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 88
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyInnerEnabled:Z

    goto :goto_1

    .line 89
    :cond_4
    const-string v4, "tiny_outer"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 90
    iput-boolean v5, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyOuterEnabled:Z

    goto :goto_1

    .line 92
    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->appIds:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_6
    :goto_2
    monitor-exit v0

    .line 97
    return-void

    .line 72
    :cond_7
    :goto_3
    monitor-exit v0

    return-void

    .line 96
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static g(Landroid/content/Context;)Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;
    .locals 2

    .line 42
    const-class v0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->strategy:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->strategy:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    .line 46
    :cond_0
    sget-object p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->strategy:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    monitor-exit v0

    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public applyConfig(Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->applyCfgValue(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public getSwitchType()Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;
    .locals 6

    .line 100
    const-class v0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/nebulax/common/utils/NebulaKernelUtils;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    const-string v2, "nebulax_dev_mode_setting"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x32

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    goto :goto_1

    .line 109
    :cond_3
    const-string v1, "NebulaXKernel:Switch"

    const-string v2, "disable all by devconfig"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object v1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->NONE:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    monitor-exit v0

    return-object v1

    .line 106
    :cond_4
    const-string v1, "NebulaXKernel:Switch"

    const-string v2, "open all by devconfig"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->ALL:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    monitor-exit v0

    return-object v1

    .line 114
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->switchType:Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    monitor-exit v0

    return-object v1

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabled(Ljava/lang/String;)Z
    .locals 5

    .line 119
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 120
    return v0

    .line 122
    :cond_0
    const-class v1, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;

    monitor-enter v1

    .line 123
    :try_start_0
    sget-object v2, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$1;->$SwitchMap$com$alipay$mobile$nebulax$common$config$NXSwitchStrategy$Type:[I

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->getSwitchType()Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 126
    const-string v2, "NebulaXKernel:Switch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not enabled by none"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    monitor-exit v1

    return v0

    .line 132
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyInnerEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->isInnerTinyAppId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    const-string v0, "NebulaXKernel:Switch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " match tinyInnerEnabled!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    monitor-exit v1

    return v4

    .line 136
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->tinyOuterEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->isOuterTinyAppId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "NebulaXKernel:Switch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " match tinyOuterEnabled!"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    monitor-exit v1

    return v4

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/common/config/NXSwitchStrategy;->appIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 141
    const-string v2, "NebulaXKernel:Switch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " partial open value: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    monitor-exit v1

    return v0

    .line 129
    :cond_4
    const-string v0, "NebulaXKernel:Switch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " enabled by all"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    monitor-exit v1

    return v4

    .line 144
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected isInnerTinyAppId(Ljava/lang/String;)Z
    .locals 2

    .line 148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const-string v0, "777"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isOuterTinyAppId(Ljava/lang/String;)Z
    .locals 1

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
