.class Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;
.super Ljava/util/Observable;
.source "SharedSwitchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/utils/SharedSwitchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SwitchChangedObserble"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .line 217
    invoke-virtual {p0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil$SwitchChangedObserble;->setChanged()V

    .line 218
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 219
    return-void
.end method
