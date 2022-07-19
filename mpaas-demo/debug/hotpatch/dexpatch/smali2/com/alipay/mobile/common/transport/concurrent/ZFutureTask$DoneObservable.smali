.class Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask$DoneObservable;
.super Ljava/util/Observable;
.source "ZFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DoneObservable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;

    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask$DoneObservable;->this$0:Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;

    .line 161
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/concurrent/ZFutureTask$DoneObservable;->setChanged()V

    .line 162
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 163
    return-void
.end method
