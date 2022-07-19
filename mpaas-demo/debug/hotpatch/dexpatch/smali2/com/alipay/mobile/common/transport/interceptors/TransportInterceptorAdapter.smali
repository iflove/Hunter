.class public Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptorAdapter;
.super Ljava/lang/Object;
.source "TransportInterceptorAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/interceptors/TransportInterceptor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public preRequestInterceptor(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    return-void
.end method
