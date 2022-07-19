.class Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;
.super Ljava/lang/Object;
.source "LiteProcessServerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    new-instance v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;-><init>(B)V

    sput-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .locals 1

    .line 99
    sget-object v0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;)Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    .line 99
    sput-object p0, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager$SingletonHolder;->a:Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    return-object p0
.end method
