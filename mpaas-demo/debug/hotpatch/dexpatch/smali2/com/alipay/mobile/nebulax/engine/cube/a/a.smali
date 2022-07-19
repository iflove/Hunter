.class public Lcom/alipay/mobile/nebulax/engine/cube/a/a;
.super Ljava/lang/Object;
.source "EventHandlerAdapter.java"

# interfaces
.implements Lcom/antfin/cube/platform/handler/ICKEventListener;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/alipay/mobile/nebulax/engine/cube/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 25
    sget-object v0, Lcom/alipay/mobile/nebulax/engine/cube/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", subType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", params"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    nop

    .line 29
    nop

    .line 30
    const/4 v1, 0x0

    if-eqz p4, :cond_2

    .line 31
    const-string v2, "PARAM_KEY_APP_INSTANCE"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 32
    :cond_0
    move-object v2, v1

    .line 36
    :goto_0
    const-string v3, "PARAM_KEY_PAGE_INSTANCE"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .line 37
    if-eqz p4, :cond_1

    .line 38
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p4, v1

    move-object v1, v2

    goto :goto_1

    .line 37
    :cond_1
    move-object p4, v1

    move-object v1, v2

    goto :goto_1

    .line 30
    :cond_2
    move-object p4, v1

    .line 42
    :goto_1
    invoke-static {v1, p4}, Lcom/alipay/mobile/nebulax/engine/cube/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/node/Node;

    move-result-object p4

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TargetNode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/common/utils/NXLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;

    const-string v1, "cube_internal"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->setType(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->setParam(Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;

    move-result-object p1

    sget-object p2, Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;->Key_message:Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;

    .line 48
    invoke-virtual {p1, p2, p3}, Lcom/alipay/mobile/nebulax/kernel/track/Event$Behavior;->putAttr(Lcom/alipay/mobile/nebulax/kernel/track/EventAttr;Ljava/lang/String;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 50
    const-class p1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {p1}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-interface {p1, p4, v0}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->event(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/Event;)V

    .line 51
    return-void
.end method
