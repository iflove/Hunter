.class public Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;
.super Ljava/lang/Object;
.source "ScoreManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/iprank/mng/score/IScore;


# static fields
.field public static final TAG:Ljava/lang/String; = "IPR_ScoreManager"

.field private static a:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->a:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;

    .line 43
    new-instance v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;

    .line 44
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 27
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->a:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    if-eqz v0, :cond_0

    .line 28
    return-object v0

    .line 30
    :cond_0
    const-class v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->a:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    if-nez v1, :cond_1

    .line 32
    new-instance v1, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;-><init>()V

    sput-object v1, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->a:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    .line 34
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    sget-object v0, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->a:Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;

    return-object v0

    .line 34
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public computeIpScore(Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alipay/mobile/common/transport/iprank/dao/models/IpRankModel;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/iprank/mng/score/ScoreManager;->b:Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/iprank/mng/score/PlugInManager;->run(Ljava/util/ArrayList;)V

    .line 54
    :cond_0
    return-void
.end method
