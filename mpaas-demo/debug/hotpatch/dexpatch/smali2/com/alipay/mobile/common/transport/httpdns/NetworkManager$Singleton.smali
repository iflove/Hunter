.class Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$Singleton;
.super Ljava/lang/Object;
.source "NetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field static instance:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;-><init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
