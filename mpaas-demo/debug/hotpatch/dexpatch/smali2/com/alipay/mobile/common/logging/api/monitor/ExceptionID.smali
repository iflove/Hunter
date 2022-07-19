.class public final enum Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
.super Ljava/lang/Enum;
.source "ExceptionID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_BIZ_EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final enum MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

.field public static final UNKNOWN_THREAD:Ljava/lang/String; = "unknown"

.field private static final sStringToEnum:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string v1, "MONITORPOINT_CRASH"

    const/4 v2, 0x0

    const-string v3, "MonitorPoint_Crash"

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 20
    new-instance v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string v3, "MONITORPOINT_IGNORE_CRASH"

    const/4 v4, 0x1

    const-string v5, "MonitorPoint_Ignore_Crash"

    invoke-direct {v1, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 25
    new-instance v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string v5, "MONITORPOINT_INVALID_CRASH"

    const/4 v6, 0x2

    const-string v7, "MonitorPoint_Invalid_Crash"

    invoke-direct {v3, v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 30
    new-instance v5, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string v7, "MONITORPOINT_SUB_THREAD_CRASH"

    const/4 v8, 0x3

    const-string v9, "MonitorPoint_Sub_Thread_Crash"

    invoke-direct {v5, v7, v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 35
    new-instance v7, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string v9, "MONITORPOINT_CLIENTSERR"

    const/4 v10, 0x4

    const-string v11, "MonitorPoint_ClientsErr"

    invoke-direct {v7, v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 40
    new-instance v9, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string v11, "MONITORPOINT_CONNECTERR"

    const/4 v12, 0x5

    const-string v13, "MonitorPoint_ConnectErr"

    invoke-direct {v9, v11, v12, v13}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CONNECTERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 45
    new-instance v11, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string v13, "MONITORPOINT_BIZ_EXCEPTION"

    const/4 v14, 0x6

    const-string v15, "MonitorPoint_Biz_Exception"

    invoke-direct {v11, v13, v14, v15}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_BIZ_EXCEPTION:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 10
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->sStringToEnum:Ljava/util/Map;

    .line 64
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->values()[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 65
    .local v3, "value":Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->sStringToEnum:Ljava/util/Map;

    iget-object v5, v3, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->desc:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .end local v3    # "value":Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "desc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->desc:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .locals 1
    .param p0, "symbol"    # Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->sStringToEnum:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 10
    const-class v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;
    .locals 1

    .line 10
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->$VALUES:[Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    return-object v0
.end method


# virtual methods
.method public final getDes()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->desc:Ljava/lang/String;

    return-object v0
.end method
