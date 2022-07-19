.class Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;
.super Ljava/lang/Object;
.source "AndroidH2DnsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolveDnsResult"
.end annotation


# instance fields
.field addresses:Ljava/lang/Object;

.field dnsFrom:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    .line 318
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidH2DnsHandler$ResolveDnsResult;->dnsFrom:Ljava/lang/String;

    return-void
.end method
