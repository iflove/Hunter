.class public Lcom/alipay/mobile/nebulax/engine/cube/a/f;
.super Ljava/lang/Object;
.source "NXIMFHttpResponse.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKRequestHandler$ICKHttpResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[B

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->a(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->a:I

    .line 17
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->b(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->b:[B

    .line 18
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->c(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->c:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;->d(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->d:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;Lcom/alipay/mobile/nebulax/engine/cube/a/f$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/engine/cube/a/f;-><init>(Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;)V

    return-void
.end method

.method public static a()Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;
    .locals 1

    .line 44
    new-instance v0, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulax/engine/cube/a/f$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->b:[B

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/alipay/mobile/nebulax/engine/cube/a/f;->a:I

    return v0
.end method
