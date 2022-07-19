.class final Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;
.super Ljava/lang/Object;
.source "RequestCollectorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:J

.field f:J

.field g:J

.field h:Z

.field i:Z

.field final synthetic j:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;Ljava/lang/String;J)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "startTime"    # J

    .line 311
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->j:Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->d:Ljava/lang/String;

    .line 313
    iput-wide p3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/collector/RequestCollectorProxy$a;->e:J

    .line 314
    return-void
.end method
