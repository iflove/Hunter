.class public Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;
.super Lcom/alipay/mobile/nebulax/kernel/track/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cost"
.end annotation


# instance fields
.field private cost:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/Event$1;)V

    .line 136
    iput-wide p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;->cost:J

    .line 137
    return-void
.end method


# virtual methods
.method public getCost()J
    .locals 2

    .line 140
    iget-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;->cost:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;->cost:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 150
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 151
    iget-wide v1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Cost;->cost:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_cst"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0
.end method
