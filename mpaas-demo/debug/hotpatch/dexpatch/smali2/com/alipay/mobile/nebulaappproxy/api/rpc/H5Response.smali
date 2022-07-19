.class public Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;
.super Ljava/lang/Object;
.source "H5Response.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "headers"    # Ljava/util/Map;
    .param p2, "response"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->a:Ljava/util/Map;

    .line 16
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->b:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "headers"    # Ljava/util/Map;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "timeCost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->a:Ljava/util/Map;

    .line 21
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->c:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCost()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5Response;->c:Ljava/lang/String;

    return-object v0
.end method
