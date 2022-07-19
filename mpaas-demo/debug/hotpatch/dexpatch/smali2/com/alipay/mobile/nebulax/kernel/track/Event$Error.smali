.class public Lcom/alipay/mobile/nebulax/kernel/track/Event$Error;
.super Lcom/alipay/mobile/nebulax/kernel/track/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field private reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/Event$1;)V

    .line 160
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Error;->reason:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Error;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Error;->reason:Ljava/lang/String;

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

    .line 174
    invoke-super {p0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;->toMap()Ljava/util/Map;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Error;->reason:Ljava/lang/String;

    const-string v2, "_rsn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-object v0
.end method
