.class Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;
.super Ljava/lang/Object;
.source "AndroidH2DnsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MethodDesc"
.end annotation


# instance fields
.field dnsMethodName:Ljava/lang/String;

.field dnsMethodReturnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    .line 313
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodName:Ljava/lang/String;

    .line 315
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$MethodDesc;->dnsMethodReturnType:Ljava/lang/Class;

    return-void
.end method
