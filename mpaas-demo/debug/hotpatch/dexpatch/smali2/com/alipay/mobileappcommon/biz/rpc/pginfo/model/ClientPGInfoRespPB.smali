.class public final Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;
.super Lcom/squareup/wire/Message;
.source "ClientPGInfoRespPB.java"


# static fields
.field public static final DEFAULT_FATIGUEDATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgDataPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LASTTIME:Ljava/lang/String; = ""

.field public static final DEFAULT_PGDATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PGDELETEDATA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_FATIGUEDATA:I = 0x3

.field public static final TAG_LASTTIME:I = 0x2

.field public static final TAG_PGDATA:I = 0x4

.field public static final TAG_PGDELETEDATA:I = 0x5

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public fatigueData:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x3
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgDataPB;",
            ">;"
        }
    .end annotation
.end field

.field public lastTime:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public pgData:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/PgTemplateInfoDataPB;",
            ">;"
        }
    .end annotation
.end field

.field public pgDeleteData:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x5
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->DEFAULT_FATIGUEDATA:Ljava/util/List;

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->DEFAULT_PGDATA:Ljava/util/List;

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->DEFAULT_PGDELETEDATA:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;

    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 45
    if-nez p1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->success:Ljava/lang/Boolean;

    .line 47
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->lastTime:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->lastTime:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->fatigueData:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->fatigueData:Ljava/util/List;

    .line 49
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgData:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgData:Ljava/util/List;

    .line 50
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgDeleteData:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgDeleteData:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 82
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;

    .line 83
    .local v1, "o":Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;
    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->success:Ljava/lang/Boolean;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->lastTime:Ljava/lang/String;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->lastTime:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->fatigueData:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->fatigueData:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgData:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgData:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgDeleteData:Ljava/util/List;

    iget-object v4, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgDeleteData:Ljava/util/List;

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 57
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

    .line 71
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgDeleteData:Ljava/util/List;

    .line 72
    goto :goto_0

    .line 68
    :cond_1
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgData:Ljava/util/List;

    .line 69
    goto :goto_0

    .line 65
    :cond_2
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->fatigueData:Ljava/util/List;

    .line 66
    goto :goto_0

    .line 62
    :cond_3
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->lastTime:Ljava/lang/String;

    .line 63
    goto :goto_0

    .line 59
    :cond_4
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->success:Ljava/lang/Boolean;

    .line 60
    nop

    .line 75
    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 4

    .line 92
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->hashCode:I

    .line 93
    .local v0, "result":I
    if-nez v0, :cond_5

    .line 94
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->success:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 95
    mul-int/lit8 v1, v0, 0x25

    iget-object v3, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->lastTime:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v1, v2

    .line 96
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->fatigueData:Ljava/util/List;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 97
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgData:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    add-int/2addr v1, v2

    .line 98
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->pgDeleteData:Ljava/util/List;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    .line 99
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iput v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGInfoRespPB;->hashCode:I

    .line 101
    :cond_5
    return v0
.end method
