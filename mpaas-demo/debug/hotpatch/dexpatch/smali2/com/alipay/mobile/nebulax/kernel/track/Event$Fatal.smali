.class public Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;
.super Lcom/alipay/mobile/nebulax/kernel/track/Event;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulax/kernel/track/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fatal"
.end annotation


# instance fields
.field private failCode:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 220
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Lcom/alipay/mobile/nebulax/kernel/track/Event$1;)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->setReason(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->setFailCode(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 226
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/nebulax/kernel/track/Event;-><init>(Lcom/alipay/mobile/nebulax/kernel/track/TrackId;Lcom/alipay/mobile/nebulax/kernel/track/Event$1;)V

    .line 227
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->setReason(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, p3}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->setType(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, p4}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->setFailCode(Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public getFailCode()Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->failCode:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public setFailCode(Ljava/lang/String;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->failCode:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 1

    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->reason:Ljava/lang/String;

    .line 238
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_fatalReason:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 239
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    .line 246
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->type:Ljava/lang/String;

    .line 247
    sget-object v0, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_fatalType:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Fatal;->putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 248
    return-void
.end method
