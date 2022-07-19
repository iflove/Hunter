.class public Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;
.super Lcom/alipay/mobile/nebulax/kernel/track/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation


# instance fields
.field private param:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/Event$1;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->setTrackId(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 187
    return-void
.end method


# virtual methods
.method public getParam()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setParam(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->param:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->type:Ljava/lang/String;

    .line 195
    return-object p0
.end method
