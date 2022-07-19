.class public Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;
.super Ljava/lang/Object;
.source "MiniServiceStrategy.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "serviceId"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "mode"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->b:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->c:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->d:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->e:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "serviceId"    # Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "c_o_m_s_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 10

    .line 45
    const-string v0, "1"

    const-string v1, ";"

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 51
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->c:Ljava/lang/String;

    .line 52
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 51
    invoke-virtual {v4, v5}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 55
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 56
    aget-object v5, v4, v3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_1
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 57
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_2

    .line 59
    aget-object v4, v4, v2

    .line 60
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "supportOpenMiniService...canOpen:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 67
    :cond_2
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v4

    .line 66
    sget-object v5, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "supportOpenMiniService...cache read e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :goto_1
    :try_start_1
    new-instance v4, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;

    invoke-direct {v4}, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;-><init>()V

    .line 72
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->appId:Ljava/lang/String;

    .line 73
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->c:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginId:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getUserId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->userId:Ljava/lang/String;

    .line 75
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->d:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginDeployVersion:Ljava/lang/String;

    .line 76
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->d:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 77
    const-string v5, "ONLINE"

    iput-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->e:Ljava/lang/String;

    .line 79
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->e:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->runMode:Ljava/lang/String;

    .line 80
    const-class v5, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 81
    const-class v6, Lcom/alipay/minicenter/common/service/rpc/api/plugin/PluginUseRelationRpcService;

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/minicenter/common/service/rpc/api/plugin/PluginUseRelationRpcService;

    .line 82
    invoke-interface {v5, v4}, Lcom/alipay/minicenter/common/service/rpc/api/plugin/PluginUseRelationRpcService;->pullPlugin(Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/plugin/PullPluginResultPB;

    move-result-object v4

    .line 83
    if-eqz v4, :cond_4

    iget-object v5, v4, Lcom/alipay/minicenter/common/service/rpc/result/plugin/PullPluginResultPB;->hasPermission:Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    iget-object v4, v4, Lcom/alipay/minicenter/common/service/rpc/result/plugin/PullPluginResultPB;->hasPermission:Ljava/lang/Boolean;

    .line 85
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 86
    :goto_2
    sget-object v4, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "supportOpenMiniService...can open "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xf731400

    add-long/2addr v4, v6

    .line 89
    invoke-static {}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->getInstance()Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->b:Ljava/lang/String;

    iget-object v8, p0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->c:Ljava/lang/String;

    .line 90
    invoke-static {v7, v8}, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    const-string v0, "0"

    :goto_3
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v6, v7, v8, v0}, Lcom/alipay/mobile/tinyappcommon/storage/H5SharedPreferenceStorage;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 92
    return v2

    .line 93
    :catchall_1
    move-exception v0

    .line 94
    sget-object v1, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "supportOpenMiniService...e="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return v3

    .line 46
    :cond_6
    :goto_4
    sget-object v0, Lcom/alipay/mobile/nebulaappproxy/miniservice/MiniServiceStrategy;->a:Ljava/lang/String;

    const-string/jumbo v1, "supportOpenMiniService...appId is null or serviceId is null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return v3
.end method
