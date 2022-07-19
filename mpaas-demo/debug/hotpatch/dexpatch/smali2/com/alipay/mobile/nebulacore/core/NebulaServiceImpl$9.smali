.class Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$9;
.super Ljava/lang/Object;
.source "NebulaServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    .line 1301
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$9;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1304
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl$9;->a:Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;->b(Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;)V

    .line 1305
    return-void
.end method
