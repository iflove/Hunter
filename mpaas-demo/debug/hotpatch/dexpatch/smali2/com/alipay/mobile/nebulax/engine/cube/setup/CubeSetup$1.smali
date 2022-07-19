.class final Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$1;
.super Ljava/lang/Object;
.source "CubeSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup;->preLoad(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/kernel/node/Node;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/kernel/node/Node;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$1;->a:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 69
    invoke-static {}, Lcom/alipay/mobile/antcube/AntCube;->preinit()V

    .line 70
    const-class v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    invoke-static {v0}, Lcom/alipay/mobile/nebulax/common/NXProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;

    iget-object v1, p0, Lcom/alipay/mobile/nebulax/engine/cube/setup/CubeSetup$1;->a:Lcom/alipay/mobile/nebulax/kernel/node/Node;

    sget-object v2, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->ck_lib_preload_end:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebulax/kernel/track/EventTracker;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 71
    return-void
.end method
