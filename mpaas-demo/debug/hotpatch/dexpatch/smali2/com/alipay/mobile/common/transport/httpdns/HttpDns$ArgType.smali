.class final enum Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;
.super Ljava/lang/Enum;
.source "HttpDns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ArgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

.field public static final enum HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

.field public static final enum LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

.field private static final synthetic a:[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1107
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    const-string v1, "LIST_INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    const-string v3, "ADD_NEW"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    const-string v5, "HAS_FAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 1106
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->a:[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1106
    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;
    .locals 1

    .line 1106
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->a:[Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    return-object v0
.end method
