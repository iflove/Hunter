.class public final Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;
.super Lcom/squareup/wire/Message;
.source "ClientPGReportRespPB.java"


# static fields
.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;)V
    .locals 1
    .param p1, "message"    # Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;

    .line 20
    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    .line 21
    if-nez p1, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->success:Ljava/lang/Boolean;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 40
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->success:Ljava/lang/Boolean;

    move-object v1, p1

    check-cast v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;

    iget-object v1, v1, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;
    .locals 1
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 29
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->success:Ljava/lang/Boolean;

    .line 32
    nop

    .line 35
    :goto_0
    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 47
    iget v0, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->hashCode:I

    .line 48
    .local v0, "result":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->success:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/pginfo/model/ClientPGReportRespPB;->hashCode:I

    :goto_1
    return v1
.end method
