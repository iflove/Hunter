.class public final enum Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;
.super Ljava/lang/Enum;
.source "ConfigSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GET_ALL:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

.field public static final enum GET_CONF_ONLY:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

.field public static final enum GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

.field private static final synthetic b:[Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    const-string v1, "GET_ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 8
    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    const-string v3, "GET_IPLIST_ONLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 9
    new-instance v3, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    const-string v5, "GET_CONF_ONLY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->GET_CONF_ONLY:Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    .line 6
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->b:[Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 6
    const-class v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;
    .locals 1

    .line 6
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->b:[Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/httpdns/downloader/ConfigSelector;

    return-object v0
.end method
