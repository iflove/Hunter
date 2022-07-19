.class public abstract Lcom/alipay/mobile/common/logging/api/http/BaseHttpClient;
.super Ljava/lang/Object;
.source "BaseHttpClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract closeStreamForNextExecute()V
.end method

.method public abstract getRequestLength()J
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseContent()Ljava/lang/String;
.end method

.method public abstract getResponseLength()J
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method

.method public abstract synchronousRequestByGET(Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation
.end method

.method public abstract synchronousRequestByPOST([BLjava/util/Map;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation
.end method
