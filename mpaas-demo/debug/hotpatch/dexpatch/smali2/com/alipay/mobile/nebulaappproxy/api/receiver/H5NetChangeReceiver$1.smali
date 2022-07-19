.class Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver$1;
.super Ljava/lang/Object;
.source "H5NetChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver$1;->a:Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver$1;->a:Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;->a(Lcom/alipay/mobile/nebulaappproxy/api/receiver/H5NetChangeReceiver;)V

    .line 92
    return-void
.end method
