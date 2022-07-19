.class final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1$1;
.super Ljava/lang/Object;
.source "NebulaCenterOperator.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/Transport;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->getTransport()Lcom/alipay/mobile/common/transport/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;

    .line 75
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1$1;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "request"    # Lcom/alipay/mobile/common/transport/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/transport/Request;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/alipay/mobile/common/transport/Response;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1$1;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/nebula/NebulaCenterOperator$1;)Lcom/alipay/mobile/common/transport/http/HttpManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/http/HttpManager;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
