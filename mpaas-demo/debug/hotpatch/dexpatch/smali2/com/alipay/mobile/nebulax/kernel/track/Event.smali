.class public abstract Lcom/alipay/mobile/nebulax/kernel/track/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;,
        Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;,
        Lcom/alipay/mobile/nebulax/kernel/track/Event$Error;,
        Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;,
        Lcom/alipay/mobile/nebulax/kernel/track/Event$Stub;
    }
.end annotation


# static fields
.field private static final COST:Ljava/lang/String; = "_cst"

.field private static final ID:Ljava/lang/String; = "_key"

.field private static final REASON:Ljava/lang/String; = "_rsn"

.field private static final TIMESTAMP:Ljava/lang/String; = "_tms"


# instance fields
.field private attrData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected timestamp:J

.field protected trackId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->timestamp:J

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/kernel/track/Event$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->timestamp:J

    .line 26
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->trackId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Lcom/alipay/mobile/nebulax/kernel/track/Event$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/track/Event;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)V

    return-void
.end method


# virtual methods
.method public getAttrData()Ljava/util/Map;
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

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->attrData:Ljava/util/Map;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->timestamp:J

    return-wide v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;I)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    .locals 0

    .line 49
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->putAttr(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object p1

    return-object p1
.end method

.method public putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;J)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    .locals 0

    .line 53
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->value()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->putAttr(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object p1

    return-object p1
.end method

.method public putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    .locals 0

    .line 57
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->value()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->putAttr(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    move-result-object p1

    return-object p1
.end method

.method public putAttr(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    .locals 2

    .line 69
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_1

    .line 74
    return-object p0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->attrData:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->attrData:Ljava/util/Map;

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->attrData:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object p0

    .line 70
    :cond_3
    :goto_0
    return-object p0
.end method

.method public setAttrData(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->attrData:Ljava/util/Map;

    .line 62
    return-void
.end method

.method public setTrackId(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    .locals 0

    .line 36
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->value()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->trackId:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public setTrackId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->trackId:Ljava/lang/String;

    .line 32
    return-object p0
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->trackId:Ljava/lang/String;

    const-string v2, "_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-wide v1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_tms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->attrData:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event;->attrData:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 94
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/utils/StringUtils;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
