.class public Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;
.super Ljava/lang/Object;
.source "SerializableMap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private booleanMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBooleanMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;->booleanMap:Ljava/util/Map;

    return-object v0
.end method

.method public getStringMap()Ljava/util/Map;
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

    .line 17
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;->stringMap:Ljava/util/Map;

    return-object v0
.end method

.method public setBooleanMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "booleanMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;->booleanMap:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public setStringMap(Ljava/util/Map;)V
    .locals 0
    .param p1, "stringMap"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;->stringMap:Ljava/util/Map;

    .line 22
    return-void
.end method
