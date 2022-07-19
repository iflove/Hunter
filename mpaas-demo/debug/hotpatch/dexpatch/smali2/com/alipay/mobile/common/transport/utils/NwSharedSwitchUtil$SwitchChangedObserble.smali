.class Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;
.super Ljava/util/Observable;
.source "NwSharedSwitchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchChangedObserble"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .line 234
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/utils/NwSharedSwitchUtil$SwitchChangedObserble;->setChanged()V

    .line 235
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 236
    return-void
.end method
