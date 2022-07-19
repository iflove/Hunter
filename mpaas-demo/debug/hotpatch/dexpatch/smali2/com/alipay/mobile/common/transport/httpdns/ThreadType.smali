.class public final enum Lcom/alipay/mobile/common/transport/httpdns/ThreadType;
.super Ljava/lang/Enum;
.source "ThreadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/transport/httpdns/ThreadType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTTPDNSFILE_READ:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field public static final enum HTTPDNSFILE_WRITE:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_NETWORKCHANGE:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_NEWADD:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field public static final enum HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field public static final enum SYSTEMDNSTEST:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field public static final enum SYSTEMHTTPTEST:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

.field private static final synthetic a:[Lcom/alipay/mobile/common/transport/httpdns/ThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 4
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v1, "HTTPDNSREQUEST_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 5
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v3, "HTTPDNSREQUEST_NEWADD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_NEWADD:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 6
    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v5, "HTTPDNSREQUEST_TIMEOUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 7
    new-instance v5, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v7, "HTTPDNSREQUEST_NETWORKCHANGE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_NETWORKCHANGE:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 9
    new-instance v7, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v9, "HTTPDNSFILE_READ"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSFILE_READ:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 10
    new-instance v9, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v11, "HTTPDNSFILE_WRITE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSFILE_WRITE:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 12
    new-instance v11, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v13, "SYSTEMDNSTEST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->SYSTEMDNSTEST:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 13
    new-instance v13, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    const-string v15, "SYSTEMHTTPTEST"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->SYSTEMHTTPTEST:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    .line 3
    const/16 v15, 0x8

    new-array v15, v15, [Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->a:[Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/ThreadType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/httpdns/ThreadType;
    .locals 1

    .line 3
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->a:[Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    return-object v0
.end method
