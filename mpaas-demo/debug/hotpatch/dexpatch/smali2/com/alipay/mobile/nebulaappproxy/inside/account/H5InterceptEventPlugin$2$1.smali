.class Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$1;
.super Ljava/lang/Object;
.source "H5InterceptEventPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/antui/dialog/AUNoticeDialog$OnClickPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->this$0:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    iget-object v1, v1, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->val$event:Lcom/alipay/mobile/h5container/api/H5Event;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2$1;->this$1:Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;

    iget-object v2, v2, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin$2;->val$bridgeContext:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    # invokes: Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->needAuthRpc(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;->access$200(Lcom/alipay/mobile/nebulaappproxy/inside/account/H5InterceptEventPlugin;Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    .line 141
    return-void
.end method
