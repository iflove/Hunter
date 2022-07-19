.class public Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;
.super Ljava/lang/Object;
.source "NXIMFHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/engine/cube/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a:I

    return p0
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)[B
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->b:[B

    return-object p0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->c:Ljava/lang/String;

    .line 65
    return-object p0
.end method

.method public a([B)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->b:[B

    .line 60
    return-object p0
.end method

.method public a()Lcom/alipay/mobile/nebulax/engine/cube/a/f;
    .locals 2

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;Lcom/alipay/mobile/nebulax/engine/cube/a/f$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->d:Ljava/lang/String;

    .line 70
    return-object p0
.end method
