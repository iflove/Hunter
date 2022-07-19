.class public final Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;
.super Lcom/squareup/wire/Message;
.source "PullPluginRequestPB.java"


# static fields
.field public static final DEFAULT_APPID:Ljava/lang/String; = ""

.field public static final DEFAULT_PLUGINDEPLOYVERSION:Ljava/lang/String; = ""

.field public static final DEFAULT_PLUGINID:Ljava/lang/String; = ""

.field public static final DEFAULT_RUNMODE:Ljava/lang/String; = ""

.field public static final DEFAULT_USERID:Ljava/lang/String; = ""

.field public static final TAG_APPID:I = 0x1

.field public static final TAG_PLUGINDEPLOYVERSION:I = 0x4

.field public static final TAG_PLUGINID:I = 0x3

.field public static final TAG_RUNMODE:I = 0x5

.field public static final TAG_USERID:I = 0x2


# instance fields
.field public appId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pluginDeployVersion:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x4
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pluginId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public runMode:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;

    .line 40
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 41
    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->appId:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->userId:Ljava/lang/String;

    .line 44
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginId:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginId:Ljava/lang/String;

    .line 45
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginDeployVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginDeployVersion:Ljava/lang/String;

    .line 46
    iget-object v0, p1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->runMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->runMode:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 76
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 77
    :cond_0
    instance-of v1, p1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 78
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;

    .line 79
    .local v1, "o":Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;
    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->appId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->appId:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->userId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->userId:Ljava/lang/String;

    .line 80
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginId:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginId:Ljava/lang/String;

    .line 81
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginDeployVersion:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginDeployVersion:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->runMode:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->runMode:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, v3, v4}, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    nop

    .line 79
    return v2
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 53
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->runMode:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginDeployVersion:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 61
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginId:Ljava/lang/String;

    .line 62
    goto :goto_0

    .line 58
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->userId:Ljava/lang/String;

    .line 59
    goto :goto_0

    .line 55
    :cond_4
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->appId:Ljava/lang/String;

    .line 56
    nop

    .line 71
    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 88
    iget v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->hashCode:I

    const/4 v1, 0x0

    move v2, v1

    .line 89
    .local v2, "result":I
    move v2, v0

    if-nez v0, :cond_5

    .line 90
    iget-object v0, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->appId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->userId:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 92
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginId:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v0, v3

    .line 93
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->pluginDeployVersion:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    add-int/2addr v0, v3

    .line 94
    mul-int/lit8 v0, v0, 0x25

    iget-object v3, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->runMode:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_4
    add-int v2, v0, v1

    .line 95
    iput v2, p0, Lcom/alipay/minicenter/common/service/rpc/request/plugin/PullPluginRequestPB;->hashCode:I

    .line 97
    :cond_5
    return v2
.end method
