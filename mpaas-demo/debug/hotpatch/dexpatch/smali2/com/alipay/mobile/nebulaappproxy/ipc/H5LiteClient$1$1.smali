.class Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1$1;
.super Ljava/lang/Object;
.source "H5LiteClient.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1$1;->a:Lcom/alipay/mobile/nebulaappproxy/ipc/H5LiteClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .line 72
    const-string v0, "H5LiteClient"

    const-string/jumbo v1, "ucapi way onCallBack"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method
