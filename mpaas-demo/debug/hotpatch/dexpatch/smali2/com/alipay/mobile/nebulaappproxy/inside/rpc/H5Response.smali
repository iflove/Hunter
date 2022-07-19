.class public Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;
.super Ljava/lang/Object;
.source "H5Response.java"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Ljava/lang/String;


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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->headers:Ljava/util/Map;

    .line 15
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->response:Ljava/lang/String;

    .line 16
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

    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/rpc/H5Response;->response:Ljava/lang/String;

    return-object v0
.end method
